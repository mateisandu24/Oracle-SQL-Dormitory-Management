-- initial environment settings
set serveroutput on;
set verify off;

-- exercise 1: Substitution variables, %type and alternative structures
declare
   v_matricol studenti.nr_matricol%type := '&numar_matricol';
   v_nume studenti.nume%type;
   v_an studenti.an_curent%type;
begin
   select nume, an_curent into v_nume, v_an 
   from studenti 
   where nr_matricol = v_matricol;
    if
v_an = '1' then
       dbms_output.put_line('Studentul ' || v_nume || ' este boboc (anul 1).');
   elsif v_an = '2' or v_an = '3' then
       dbms_output.put_line('Studentul ' || v_nume || ' este în ciclul de
licență (anul ' || v_an || ').');
   else
       dbms_output.put_line('Studentul ' || v_nume || ' este la master (anul '
|| v_an || ').');
    end if;
end;
/

-- exercise 2: Implicit cursor, %rowtype and predefined exceptions
declare
    v_student studenti%rowtype;
begin
    select * into v_student 
    from studenti 
    where lower(nume) =
lower('&nume_student');
    dbms_output.put_line('Student găsit: ' ||
v_student.nume || ' ' || v_student.prenume || ' - CNP: ' || v_student.cnp);
exception
    when no_data_found then
        dbms_output.put_line('Eroare: Nu s-a
găsit niciun student cu acest nume!');
    when too_many_rows then
       dbms_output.put_line('Eroare: Există mai mulți studenți cu acest nume!
utilizați un criteriu de filtrare mai strict.');
end;
/

-- exercise 3: Explicit cursor, loop structure and %notfound attribute
declare
    cursor c_tarife is 
        select c.nume_camin, l.pret_buget 
        from camine c
        join lista_preturi_camin l on
c.id_camin = l.id_camin;
    v_nume camine.nume_camin%type;
    v_pret lista_preturi_camin.pret_buget%type;
begin
    dbms_output.put_line('--- lista tarife
buget ---');
    open c_tarife;
    loop
        fetch c_tarife into v_nume, v_pret;
        exit when c_tarife%notfound;
        dbms_output.put_line('Căminul ' ||
v_nume || ' are un tarif de: ' || v_pret || ' ron');
    end loop;
    close c_tarife;
end;
/

-- exercise 4: DML interaction and implicit cursor attributes (%rowcount, %notfound)
declare
    v_etaj camere.etaj%type :=
&etaj_modificat;
    v_cod_camin camine.cod_camin%type :=
lower('&cod_camin');
    v_capacitate camere.capacitate%type :=
&capacitatea_noua; 
begin
    if
v_capacitate < 2 then
       raise_application_error(-20002, 'Eroare: Capacitatea unei camere nu
poate fi mai mică decât 2!');
   else
       update camere 
       set capacitate = v_capacitate
       where etaj = v_etaj 
         and id_camin = (select id_camin from camine where cod_camin =
v_cod_camin);
       if sql%notfound then
           dbms_output.put_line('Nu s-au găsit camere la etajul ' || v_etaj || ' în
căminul specificat.');
       else
           dbms_output.put_line('S-a modificat capacitatea pentru ' || sql%rowcount
|| ' camere.');
       end if;
   end
if;
end;
/

-- exercise 5: Collection data types - index by pls_integer
declare
    type ang_table is table of staff%rowtype
index by pls_integer;
    v_tab ang_table;
    v_index pls_integer := 1;
begin
    for r_angajat in (select * from staff where
rownum <= 5) loop
        v_tab(v_index) := r_angajat;
        v_index := v_index + 1;
    end loop;
    dbms_output.put_line('--- Date extrase din
tabloul indexat ---');
    for i in v_tab.first .. v_tab.last loop
        dbms_output.put_line('Angajat: ' || v_tab(i).nume
|| ' ' || v_tab(i).prenume || ' - Salariu: ' || v_tab(i).salariu_baza);
    end loop;
    dbms_output.put_line('Total înregistrări în
tablou: ' || v_tab.count);
end;
/

-- exercise 6: Implicit cursor within a FOR loop structure
declare
   cursor c_facturi_mari is
       select f.id_factura, f.suma_plata, s.nume
       from facturi_cazare f
       join cazari z on f.id_cazare = z.id_cazare
       join studenti s on z.id_student = s.id_student
       where f.status_factura = 'neplatit' and f.suma_plata > 300;
begin
   dbms_output.put_line('--- Facturi restante > 300 ron ---');
    for
r_factura in c_facturi_mari loop
       dbms_output.put_line('Factura id: ' || r_factura.id_factura || ' | Sumă:
' || r_factura.suma_plata || ' ron | Student: ' || r_factura.nume);
    end
loop;
end;
/

-- exercise 7: Handling non-predefined Oracle exceptions (pragma exception_init)
declare
   del_exception exception;
   pragma exception_init(del_exception, -2292);
begin
   delete from camine;
exception
   when del_exception then
       dbms_output.put_line('Eroare: Nu puteți șterge căminul!');
       dbms_output.put_line('Există camere/date asignate acestuia (restricție
referențială).');
       dbms_output.put_line('Cod eroare: ' || sqlcode);
       dbms_output.put_line('Mesaj eroare: ' || sqlerrm);
end;
/

-- exercise 8: User-defined exceptions (raise_application_error)
declare
   v_id_angajat staff.id_staff%type := &id_angajat;
    v_salariu_nou
staff.salariu_baza%type := &noul_salariu;
begin
    if
v_salariu_nou < 2500 then
       raise_application_error(-20001, 'Operațiune respinsă: Salariul introdus
(' || v_salariu_nou || ' ron) este sub pragul minim legal de 2500 ron!');
    else
       update staff 
       set salariu_baza = v_salariu_nou 
       where id_staff = v_id_angajat;
       dbms_output.put_line('Salariul a fost actualizat cu succes la ' ||
v_salariu_nou || ' ron.');
    end
if;
end;
/

-- exercise 9: Parameterized explicit cursor and while loop
declare
   v_cod_camin camine.cod_camin%type := lower('&cod_camin_cautat'); 
   cursor c_studenti_camin(p_cod varchar2) is
       select s.nume, s.prenume, c.nr_camera, k.nume_camin
       from studenti s
       join cazari z on s.id_student = z.id_student
       join camere c on z.id_camera = c.id_camera
       join camine k on c.id_camin = k.id_camin
       where k.cod_camin = p_cod and z.status_cazare = 'activ'
       order by c.nr_camera;
   v_nume studenti.nume%type;
   v_prenume studenti.prenume%type;
   v_camera camere.nr_camera%type;
    v_nume_camin
camine.nume_camin%type;
    v_contor
number := 0;
begin
   open c_studenti_camin(v_cod_camin);
   fetch c_studenti_camin into v_nume, v_prenume, v_camera, v_nume_camin;
   dbms_output.put_line('--- Primii 5 studenți cazați în căminul ' ||
v_nume_camin || ' ---');
   while c_studenti_camin%found and v_contor < 5 loop
       v_contor := v_contor + 1;
       dbms_output.put_line(v_contor || '. ' || v_nume || ' ' || v_prenume || '
(Camera: ' || v_camera || ')');
       fetch c_studenti_camin into v_nume, v_prenume, v_camera, v_nume_camin;
    end
loop;
    if
v_contor = 0 then
       dbms_output.put_line('Nu s-au găsit studenți activi cazați în acest
cămin.');
    end
if;
   close c_studenti_camin;
end;
/

-- exercise 10: Case expression, DML and dup_val_on_index exception
declare
    v_cod_camin camine.cod_camin%type :=
lower('&cod_nou_camin'); 
    v_nume_camin camine.nume_camin%type :=
lower('&nume_nou_camin');
    v_adresa camine.adresa%type :=
lower('&adresa_camin');
    v_mixt_text
varchar2(2) := lower('&este_mixt_da_sau_nu');
   v_if_mixt camine.if_mixt%type;
begin
   v_if_mixt := case v_mixt_text 
                    when 'da' then 1 
                    when 'nu' then 0 
                    else 0 
                 end;
   insert into camine (cod_camin, nume_camin, adresa, if_mixt)
   values (v_cod_camin, v_nume_camin, v_adresa, v_if_mixt);
   dbms_output.put_line('Succes: A fost inserat ' || sql%rowcount || '
cămin nou (' || v_nume_camin || ').');
exception
   when dup_val_on_index then
       dbms_output.put_line('Eroare: Codul de cămin "' || v_cod_camin ||
'" există deja în baza de date!');
       dbms_output.put_line('A fost încălcată constrângerea unique
(uq_cod_camin).');
   when others then
       dbms_output.put_line('A apărut o eroare neașteptată: ' || sqlerrm);
end;
/
