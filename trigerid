### Triger - Trigger -päästik
## Triger - Andmebaasi objekt, mis käivitad automaatselt, kui toimub teatud sündmus (nt INSERT, UPDATE, DELETE)
Trigerite loomine automaatseerub protsessid SQL serveris

Tabelid is tuleb luua enne trigerit
´´´sql
create database trigerLogitpe24;

use trigerLogitpe24;
Create table linnad(
linnId int primary key identity(1,1),
linnanimi varchar(30) unique,
maakond varchar(50),
rahvaarv int);
select * from linnad;
insert into linnad(linnanimi, maakond, rahvaarv)
values ('Tallinn', 'Harjumaa', 600000);


--tabel logi - tabel, mis täidab triger!!! kui kasutaja täidab tabeli linnad
create table logi(
id int primary key identity(1,1),
kasutaja varchar(50),
aeg DATETIME, 
andmed TEXT);

```sql
create trigger linnaLisamine
on linnad -- tabel mida triger jälgib
for insert
as
insert into logi(kasutaja, aeg, andmed)
select 
SYSTEM_USER, -- sisselogitud user
GETDATE(), 
CONCAT('lisatud: ','inserted.linnanimi',', ',
inserted.maakond,', ',inserted.rahvaarv)
from inserted;

--kontrollimiseks tuleb lisada linna tabelisse linnad
insert into linnad(linnanimi, maakond, rahvaarv)
values ('Tartu', 'Tartumaa', '20000');


--kontrollimiseks tuleb lisada linna tabelissed linnad
insert into linnad(linnanimi, maakond, rahvaarv)
values ('Viljandi', 'Viljandimaa', '5000');

select * from linnad;
select * from logi;

-- trigeri kustutamine
--2. delete triger - jälgib kustutamine tabelis linnad ja teeb vastava kirja logi tabelisse
create trigger linnaKustutamine
on linnad -- tabel mida triger jälgib
for delete
as
insert into logi(kasutaja, aeg, andmed)
select 
SYSTEM_USER, -- sisselogitud user
GETDATE(), 
CONCAT('kustutatud: ','deleted.linnanimi',', ',
deleted.maakond,', ',deleted.rahvaarv)
from deleted;


--kontroll
delete from linnad where linnId=2;

select * from linnad;
select * from logi;

--3. update trigger -jälgib uuendused/muutused tabelis linnad 
--ja teeb vastava kirje tabelis logi
create trigger linnaUuendamine
on linnad -- tabel mida triger jälgib
for UPDATE
as
insert into logi(kasutaja, aeg, andmed)
select 
SYSTEM_USER, -- sisselogitud user
GETDATE(), 
CONCAT('vanad andmed : ,',
deleted.linnanimi,', ', deleted.maakond,', ',deleted.rahvaarv,
' uued andmed: ',
inserted.linnanimi,', ',inserted.maakond,', ',inserted.rahvaarv)
from deleted inner join inserted
on deleted.linnId=inserted.linnId;

--kontroll
update linnad set linnanimi='Tallinn22', rahvaarv=700000
where linnId=1;

--triger sisse/välja lülitamine
disable trigger linnaLisamine on linnad;
disable trigger linnaKustutamine on linnad;
enable trigger linnaUuendamine on linnad;

--ühine triger mis jälgib kas lisamine või kustutamine tabelisse linnad
create trigger linnaLisamineKustutamine
on linnad -- tabel mida triger jälgib
for insert, delete
as
begin
set nocount on;
	insert into logi(kasutaja, aeg, andmed)
	select 
	SYSTEM_USER, -- sisselogitud user
	GETDATE(), 
	CONCAT('lisatud: ',inserted.linnanimi,', ',
	inserted.maakond,', ',inserted.rahvaarv)
	from inserted

	union all

	select 
	SYSTEM_USER, -- sisselogitud user
	GETDATE(), 
	CONCAT('kustutatud: ',deleted.linnanimi,', ', 
	deleted.maakond,', ',deleted.rahvaarv)
	from deleted;
END;

--kontroll
delete from linnad where linnId=3;

insert into linnad(linnanimi, maakond, rahvaarv)
values ('Viljandi', 'Viljandimaa', '4000');

select * from 
-- õigustega linnalisamine, kustutamine, uuendamine,
-- ja ei näe tabeli logi ning ei saa trigerid muuta

--security--new login

grant select, insert, delete on linnad to sekretarSten;
deny select on logi to sekretarSten;
