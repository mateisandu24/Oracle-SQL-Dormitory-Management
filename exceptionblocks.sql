-- Initial environment settings
set serveroutput on;
set verify off;

-- Exercise 1
-- Requirement: Display the name and faculty of the student occupying a specific accommodation spot (entered by ID). If the accommodation ID does not exist, catch the implicit no_data_found exception. If the student is in their final year (year 3 or master 2), display a special warning.
declare
    v_id_cazare cazari.id_cazare%type := &id_cazare_cautata;
    v_nume studenti.nume%type;
    v_an studenti.an_curent%type;
    v_facultate studenti.facultate%type;
begin
    select s.nume, s.an_curent, s.facultate
    into v_nume, v_an, v_facultate
    from studenti s
    join cazari z on s.id_student = z.id_student
    where z.id_cazare = v_id_cazare;

    dbms_output.put_line('Student: ' || initcap(v_nume) || ' | Facultate: ' || initcap(v_facultate));

    if (v_an = '3' or v_an = 'm2') then
        dbms_output.put_line('Atenție: Studentul este în an terminal.');
    end if;

exception
    when no_data_found then
        dbms_output.put_line('Eroare: Nu există nicio înregistrare de cazare cu id-ul ' || v_id_cazare || '.');
    when others then
        dbms_output.put_line('Eroare sistem: ' || sqlerrm);
end;
/

-- Exercise 2
-- Requirement: Create a trigger that fires before inserting or updating the base salary in the staff table. If the new salary is below 3000 RON, throw an explicit user-defined exception to block the transaction. Then, write an anonymous block to test the trigger with an UPDATE that intentionally lowers the salary below the limit.
create or replace trigger trg_verificare_salariu
before insert or update of salariu_baza on staff
for each row
declare
    e_salariu_mic exception; 
    v_limita constant number := 3000;
begin
    if :new.salariu_baza < v_limita then
        raise e_salariu_mic; 
    end if;
exception
    when e_salariu_mic then
        raise_application_error(-20005, 'Eroare: Salariul introdus (' || :new.salariu_baza || ' RON) este sub pragul minim legal de ' || v_limita || ' RON.');
    when others then
        raise_application_error(-20000, 'Eroare sistem: ' || sqlerrm);
end;
/

begin
    dbms_output.put_line('Încercare actualizare salariu la 2800 RON pentru angajatul cu ID-ul 1...');
    update staff 
    set salariu_baza = 2800 
    where id_staff = 1;
exception
    when others then
        dbms_output.put_line(sqlerrm);
end;
/

-- Exercise 3
-- Requirement: Identify the student living in a specific room of a dormitory. If multiple students live in that room (capacity > 1), the SELECT...INTO statement will trigger the implicit too_many_rows exception.
declare
    v_nume_student studenti.nume%type;
    v_camera camere.nr_camera%type := &numar_camera;
    v_cod camine.cod_camin%type := lower('&cod_camin');
begin
    select s.nume into v_nume_student
    from studenti s
    join cazari z on s.id_student = z.id_student
    join camere c on z.id_camera = c.id_camera
    join camine k on c.id_camin = k.id_camin
    where c.nr_camera = v_camera and k.cod_camin = v_cod and z.status_cazare = 'activ';

    dbms_output.put_line('În camera ' || v_camera || ' locuiește: ' || initcap(v_nume_student));

exception
    when too_many_rows then
        dbms_output.put_line('Eroare: În camera ' || v_camera || ' sunt cazați mai mulți studenți. Folosiți un cursor pentru listare.');
    when no_data_found then
        dbms_output.put_line('Eroare: Camera este momentan liberă.');
    when others then
        dbms_output.put_line('Eroare sistem: ' || sqlerrm);
end;
/

-- Exercise 4
-- Requirement: Attempt to update the tuition fee rate for a dormitory. If the new rate is greater than 1000 RON, stop the execution using raise_application_error (explicit exception with a custom error code).
declare
    v_id_camin camine.id_camin%type := &id_camin;
    v_pret_nou number := &nou_pret_taxa;
begin
    if v_pret_nou > 1000 then
        raise_application_error(-20101, 'Eroare: Tariful de ' || v_pret_nou || ' depășește plafonul maxim admis de universitate.');
    else
        update lista_preturi_camin
        set pret_taxa = v_pret_nou
        where id_camin = v_id_camin;
        
        if sql%notfound then
            dbms_output.put_line('Eroare: Nu s-a găsit nicio înregistrare de preț pentru id-ul ' || v_id_camin || '.');
        else
            dbms_output.put_line('Succes: Tariful a fost actualizat.');
        end if;
    end if;
    
    rollback;
exception
    when others then
        dbms_output.put_line('Eroare sistem: ' || sqlerrm);
end;
/

-- Exercise 5
-- Requirement: List the unpaid invoices of a student. If the total amount of arrears exceeds 1500 RON, trigger an explicit exception e_student_restant.
declare
    cursor c_facturi(p_id number) is
        select suma_plata from facturi_cazare f
        join cazari z on f.id_cazare = z.id_cazare
        where z.id_student = p_id and f.status_factura = 'neplatit';
    
    v_suma_totala number := 0;
    v_suma_factura number;
    v_id_stud number := &id_student;
    e_student_restant exception; 
begin
    open c_facturi(v_id_stud);
    fetch c_facturi into v_suma_factura;
    
    while c_facturi%found loop
        v_suma_totala := v_suma_totala + v_suma_factura;
        fetch c_facturi into v_suma_factura;
    end loop;
    close c_facturi;

    dbms_output.put_line('Total restanțe student: ' || v_suma_totala || ' RON.');

    if v_suma_totala > 1500 then
        raise e_student_restant;
    end if;

exception
    when e_student_restant then
        dbms_output.put_line('Atenție: Studentul are restanțe critice! Se recomandă blocarea accesului la servicii.');
    when others then
        dbms_output.put_line('Eroare sistem: ' || sqlerrm);
end;
/
