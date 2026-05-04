
set serveroutput on;
set verify off;

/* ==============================================================================
   exercise 1: pl/sql package (composite types, cursors, exceptions, functions, and procedures)
   requirement: create a pl/sql package named pkg_dorm_finance for the financial
   management of accommodated students. the package must contain composite data
   structures (a record and a table of) and four subprograms:
   - a function that calculates a student's total debt (catching a user-defined exception if the id does not exist).
   - a function that returns a collection of the top n debtors, using an explicit cursor.
   - a procedure that automatically generates invoices for a given month and year, dynamically determining the price (budget/tax).
   - a procedure that applies a penalty percentage to unpaid invoices, using a cursor with the for update nowait clause.
============================================================================== */

create or replace package pkg_dorm_finance as
    type t_student_rec is record (
        id_student studenti.id_student%type,
        full_name varchar2(100),
        total_debt number
    );
    type t_student_table is table of t_student_rec;

    function get_student_debt(p_id_student in studenti.id_student%type) return number;
    function get_top_debtors(p_limit in number) return t_student_table;

    procedure generate_monthly_invoices(p_month in number, p_year in number);
    procedure apply_penalties(p_percentage in number, p_month in number, p_year in number);
end pkg_dorm_finance;
/

create or replace package body pkg_dorm_finance as

    function get_student_debt(p_id_student in studenti.id_student%type) return number is
        v_debt number := 0;
        v_exists number;
        e_invalid_student exception;
    begin
        select count(*) into v_exists from studenti where id_student = p_id_student;
        if v_exists = 0 then
            raise e_invalid_student;
        end if;

        select nvl(sum(f.suma_plata), 0) into v_debt
        from facturi_cazare f
        join cazari c on f.id_cazare = c.id_cazare
        where c.id_student = p_id_student and f.status_factura = 'neplatit';
        
        return v_debt;
    exception
        when e_invalid_student then
            dbms_output.put_line('Error: The student with ID ' || p_id_student || ' does not exist.');
            return -1;
        when others then
            dbms_output.put_line('Unexpected error: ' || sqlerrm);
            return -1;
    end get_student_debt;

    function get_top_debtors(p_limit in number) return t_student_table is
        v_debtors t_student_table := t_student_table(); 
        
        cursor c_debtors is
            select s.id_student, s.nume || ' ' || s.prenume, nvl(sum(f.suma_plata), 0)
            from studenti s
            join cazari c on s.id_student = c.id_student
            join facturi_cazare f on c.id_cazare = f.id_cazare
            where f.status_factura = 'neplatit'
            group by s.id_student, s.nume, s.prenume
            order by sum(f.suma_plata) desc;
            
        v_rec t_student_rec;
        v_counter number := 1;
    begin
        open c_debtors;
        loop
            fetch c_debtors into v_rec;
            exit when c_debtors%notfound or v_counter > p_limit;
            
            v_debtors.extend;
            v_debtors(v_debtors.last) := v_rec;
            v_counter := v_counter + 1;
        end loop;
        close c_debtors;
        
        return v_debtors;
    end get_top_debtors;

    procedure generate_monthly_invoices(p_month in number, p_year in number) is
        v_counter number := 0;
        v_applicable_price number;
    begin
        for rec in (
            select c.id_cazare, s.forma_finantare, cm.id_camin, c.an_universitar
            from cazari c
            join studenti s on c.id_student = s.id_student
            join camere cm on c.id_camera = cm.id_camera
            where c.status_cazare = 'activ'
        ) loop
            select case when rec.forma_finantare = 'buget' then pret_buget else pret_taxa end 
            into v_applicable_price
            from lista_preturi_camin
            where id_camin = rec.id_camin and an_universitar = rec.an_universitar;

            insert into facturi_cazare (id_factura, id_cazare, luna, anul, suma_plata, data_emitere, status_factura)
            values (seq_facturi.nextval, rec.id_cazare, p_month, p_year, v_applicable_price, sysdate, 'neplatit');
            
            v_counter := v_counter + 1;
        end loop;
        
        dbms_output.put_line(v_counter || ' new invoices have been generated.');
        commit;
    exception
        when others then
            rollback;
            dbms_output.put_line('Error processing invoices: ' || sqlerrm);
    end generate_monthly_invoices;

    procedure apply_penalties(p_percentage in number, p_month in number, p_year in number) is
        cursor c_overdue is
            select id_factura, suma_plata 
            from facturi_cazare 
            where status_factura = 'neplatit' and luna = p_month and anul = p_year
            for update of suma_plata nowait;
        v_affected number := 0;
    begin
        for rec in c_overdue loop
            update facturi_cazare
            set suma_plata = suma_plata + (suma_plata * p_percentage / 100)
            where current of c_overdue;
            v_affected := v_affected + 1;
        end loop;
        commit;
        dbms_output.put_line('Penalties have been applied to ' || v_affected || ' invoices.');
    exception
        when others then
            rollback;
            dbms_output.put_line('Error applying penalties: ' || sqlerrm);
    end apply_penalties;

end pkg_dorm_finance;
/

-- testing package 1
exec pkg_dorm_finance.generate_monthly_invoices(11, 2025);
exec pkg_dorm_finance.apply_penalties(10, 11, 2025);

select * from (
    select f.id_factura, s.nume || ' ' || s.prenume as accommodated_student, f.luna, f.suma_plata, f.status_factura
    from facturi_cazare f
    join cazari cz on f.id_cazare = cz.id_cazare
    join studenti s on cz.id_student = s.id_student
    where f.luna = 11 and f.anul = 2025
    order by f.suma_plata desc
) where rownum <= 10;

declare
    v_total_due number;
    v_student_name varchar2(100);
begin
    select initcap(nume) || ' ' || initcap(prenume) 
    into v_student_name
    from studenti
    where id_student = 1;

    v_total_due := pkg_dorm_finance.get_student_debt(1);
    
    if v_total_due >= 0 then
        dbms_output.put_line('The student ' || v_student_name || ' has a total debt of: ' || v_total_due || ' RON.');
    end if;
end;
/

declare
    v_list pkg_dorm_finance.t_student_table;
begin
    v_list := pkg_dorm_finance.get_top_debtors(5);
    
    for i in 1..v_list.count loop
        dbms_output.put_line('Rank ' || i || ': ' || v_list(i).full_name || ' with an outstanding debt of ' || v_list(i).total_debt || ' RON.');
    end loop;
end;
/

/* ==============================================================================
   exercise 2: pl/sql package (composite types, exceptions, functions, and administration procedures)
   requirement: create a pl/sql package named pkg_dorm_admin for managing
   dormitory accommodations. the package must contain composite data structures (a record) and four subprograms:
   - a function that calculates the number of available beds in a specific room (handling the implicit no_data_found exception).
   - a function that returns a record containing statistics (total capacity, occupied beds, available beds) for a specific dormitory.
   - a procedure that assigns a student to the first available room in a dormitory specified by code, updating the cazari table (or raising an exception if there are no spots).
   - a procedure that clears all accommodations from a given academic year, updating the status and end date.
============================================================================== */

create or replace package pkg_dorm_admin as
    type t_dorm_stats is record (total_capacity number, occupied_beds number, available_beds number);

    function get_room_availability(p_room_id in camere.id_camera%type) return number;
    function get_dorm_stats(p_dorm_id in camine.id_camin%type) return t_dorm_stats;

    procedure assign_student(p_student_id in studenti.id_student%type, p_dorm_code in varchar2);
    procedure clear_accommodations(p_academic_year in varchar2);
end pkg_dorm_admin;
/

create or replace package body pkg_dorm_admin as

    function get_room_availability(p_room_id in camere.id_camera%type) return number is
        v_capacity number;
        v_occupants number;
    begin
        select capacitate into v_capacity from camere where id_camera = p_room_id;
        select count(*) into v_occupants from cazari where id_camera = p_room_id and status_cazare = 'activ';
        return (v_capacity - v_occupants);
    exception
        when no_data_found then
            return -1;
    end get_room_availability;

    function get_dorm_stats(p_dorm_id in camine.id_camin%type) return t_dorm_stats is
        v_stats t_dorm_stats;
    begin
        select nvl(sum(capacitate), 0) into v_stats.total_capacity 
        from camere where id_camin = p_dorm_id;
        
        select count(cz.id_cazare) into v_stats.occupied_beds 
        from cazari cz
        join camere cm on cz.id_camera = cm.id_camera
        where cm.id_camin = p_dorm_id and cz.status_cazare = 'activ';
        
        v_stats.available_beds := v_stats.total_capacity - v_stats.occupied_beds;
        return v_stats;
    end get_dorm_stats;

    procedure assign_student(p_student_id in studenti.id_student%type, p_dorm_code in varchar2) is
        v_available_room camere.id_camera%type;
        e_no_spots exception;
    begin
        select cm.id_camera into v_available_room
        from camere cm
        join camine c on cm.id_camin = c.id_camin
        where c.cod_camin = lower(p_dorm_code)
          and pkg_dorm_admin.get_room_availability(cm.id_camera) > 0
          and rownum = 1;
          
        insert into cazari (id_student, id_camera, an_universitar, data_start, status_cazare)
        values (p_student_id, v_available_room, '2024-2025', sysdate, 'activ');
        
        dbms_output.put_line('The student was successfully assigned to a room.');
        commit;
    exception
        when no_data_found then
            dbms_output.put_line('Error: No available spots in the dormitory ' || p_dorm_code);
    end assign_student;

    procedure clear_accommodations(p_academic_year in varchar2) is
        cursor c_accommodations is
            select id_cazare from cazari 
            where an_universitar = p_academic_year and status_cazare = 'activ';
        v_counter number := 0;
    begin
        for rec in c_accommodations loop
            update cazari 
            set status_cazare = 'inactiv', data_final = sysdate 
            where id_cazare = rec.id_cazare;
            
            v_counter := v_counter + 1;
        end loop;
        commit;
        dbms_output.put_line(v_counter || ' accommodations have been cleared for the academic year ' || p_academic_year);
    end clear_accommodations;

end pkg_dorm_admin;
/

-- testing package 2
declare
    v_dorm_stats pkg_dorm_admin.t_dorm_stats;
    v_available_beds number;
begin
    dbms_output.put_line('--- PACKAGE: DORM ADMINISTRATION ---');
    
    pkg_dorm_admin.assign_student(5, 'moxa');
    
    v_available_beds := pkg_dorm_admin.get_room_availability(1);
    dbms_output.put_line('Available spots left in room with ID 1: ' || v_available_beds);
    
    v_dorm_stats := pkg_dorm_admin.get_dorm_stats(1);
    dbms_output.put_line('Moxa Statistics -> Total spots: ' || v_dorm_stats.total_capacity || 
                         ' | Occupied: ' || v_dorm_stats.occupied_beds || 
                         ' | Available: ' || v_dorm_stats.available_beds);

    pkg_dorm_admin.clear_accommodations('2023-2024');
end;
/

/* ==============================================================================
   exercise 3: independent stored function and multiple exception handling
   requirement: create an independent function that receives a student's registration 
   number (matricol) and returns their exact location (dormitory name and room number). 
   if the student does not exist or is not accommodated, catch the no_data_found exception. 
   if there is a database error and multiple active accommodations appear for the same student,
   catch too_many_rows. call the function via an anonymous block.
============================================================================== */

create or replace function find_student_location(p_registration_num in varchar2) return varchar2 is
    v_room_number camere.nr_camera%type;
    v_dorm_name camine.nume_camin%type;
begin
    select c.nume_camin, cm.nr_camera 
    into v_dorm_name, v_room_number
    from studenti s
    join cazari cz on s.id_student = cz.id_student
    join camere cm on cz.id_camera = cm.id_camera
    join camine c on cm.id_camin = c.id_camin
    where s.nr_matricol = lower(p_registration_num) and cz.status_cazare = 'activ';
    
    return 'Dormitory ' || v_dorm_name || ', Room ' || v_room_number;
exception
    when no_data_found then
        return 'The student was not found or does not have an active accommodation.';
    when too_many_rows then
        return 'Error: duplicate records found in the system for this student.';
end find_student_location;
/

-- testing independent function
declare
    v_result varchar2(200);
    v_valid_reg_num varchar2(20);
begin
    select s.nr_matricol into v_valid_reg_num
    from studenti s
    join cazari cz on s.id_student = cz.id_student
    where cz.status_cazare = 'activ'
    and rownum = 1;

    dbms_output.put_line('--- TESTING INDEPENDENT FUNCTION ---');
    
    v_result := find_student_location(v_valid_reg_num);
    dbms_output.put_line('Search by valid registration number "' || v_valid_reg_num || '": ' || v_result);
    
    v_result := find_student_location('fake_reg_num');
    dbms_output.put_line('Search by incorrect registration number: ' || v_result);
end;
/
