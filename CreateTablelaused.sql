create database StenEricKoit;
use StenEricKoit;
--tabeli loomine
CREATE TABLE opilane(
opilaneId int Primary Key identity(1, 1),
eesnimi varchar(25),
perekonnanimi varchar(30) not null,
synniaeg date,
pohitoetus bit,
aadress TEXT, 
keskmineHinne decimal(2, 1))

SELECT * FROM opilane;

--andmete lisamine tabelisse
INSERT INTO opilane(perekonnanimi, eesnimi, synniaeg)
VALUES ('Valge', 'Sall', '2007-02-21'),
('Roheline', 'Pall', '2005-05-13')

--uuendame tabeliandmeid
UPDATE opilane SET aadress='Tallinn, Eesti'
UPDATE opilane SET pohitoetus=1 --1 on true
UPDATE opilane SET keskmineHinne=4.5;

--kui soovime kõik veerud täita - ei pea neid nimetama
INSERT INTO opilane
VALUES ('nimi', 'perenimi', '2007-02-21', 0, 'Tartu, Eesti', 3.5)
