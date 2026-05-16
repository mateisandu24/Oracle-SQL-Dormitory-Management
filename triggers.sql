create or replace trigger trg_comp_capacitate_camera
for insert or update on cazari
compound trigger

    type t_camere_modificate is table of number index by pls_integer;
    v_camere t_camere_modificate;
    v_capacitate camere.capacitate%type;
    v_ocupanti number;

    before statement is
    begin
        v_camere.delete;
    end before statement;

    after each row is
    begin
        if inserting or (updating and :new.status_cazare = 'activ') then
            v_camere(:new.id_camera) := 1;
        end if;
    end after each row;

    after statement is
        v_id_camera pls_integer;
    begin
        v_id_camera := v_camere.first;
        while v_id_camera is not null loop
            select capacitate into v_capacitate 
            from camere 
            where id_camera = v_id_camera;
            
            select count(*) into v_ocupanti 
            from cazari 
            where id_camera = v_id_camera and status_cazare = 'activ';
            
            if v_ocupanti > v_capacitate then
                raise_application_error(-20500, 'Eroare: Capacitatea maximă de ' || v_capacitate || ' locuri pentru camera ' || v_id_camera || ' a fost depășită!');
            end if;
            
            v_id_camera := v_camere.next(v_id_camera);
        end loop;
    end after statement;
end trg_comp_capacitate_camera;
/

declare
    v_id_student studenti.id_student%type := 2; 
    v_id_camera camere.id_camera%type := 1; 
begin
    dbms_output.put_line('--- TEST: trg_comp_capacitate_camera ---');
    dbms_output.put_line('Încercare inserare student ' || v_id_student || ' în camera ' || v_id_camera || '...');
    
    insert into cazari (id_student, id_camera, an_universitar, data_start, status_cazare)
    values (v_id_student, v_id_camera, '2024-2025', sysdate, 'activ');
    
    dbms_output.put_line('Operațiune reușită: Camera avea locuri libere.');
    rollback;

exception
    when others then
        if sqlcode = -20500 then
            dbms_output.put_line('SUCCES TEST. Mesaj captat:');
            dbms_output.put_line(sqlerrm);
        else
            dbms_output.put_line('A apărut altă eroare de sistem: ' || sqlerrm);
        end if;
        rollback;
end;
/

create or replace trigger trg_previne_stergere_student
before delete on studenti
for each row
declare
    v_cazari_active number;
begin
    select count(*) into v_cazari_active
    from cazari
    where id_student = :old.id_student and status_cazare = 'activ';

    if v_cazari_active > 0 then
        raise_application_error(-20501, 'Acțiune blocată: Studentul ' || :old.nume || ' nu poate fi șters din sistem deoarece figurează cu o cazare activă.');
    end if;
end;
/

declare
    v_id_student studenti.id_student%type := 1; 
begin
    dbms_output.put_line('--- TEST: trg_previne_stergere_student ---');
    dbms_output.put_line('Încercare ștergere student cu ID-ul ' || v_id_student || ' din sistem...');
    
    delete from studenti 
    where id_student = v_id_student;
    
    dbms_output.put_line('Operațiune reușită: Studentul a fost șters deoarece nu avea cazări active.');
    rollback;

exception
    when others then
        if sqlcode = -20501 then
            dbms_output.put_line('SUCCES TEST. Mesaj captat:');
            dbms_output.put_line(sqlerrm);
        else
            dbms_output.put_line('A apărut altă eroare de sistem: ' || sqlerrm);
        end if;
        rollback;
end;
/