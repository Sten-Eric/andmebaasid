# Andmebaasihaldussüsteemid

### Tunnis me kasutame andmebaasihaldussüsteemi:

- SQL - structured Query Language - struktureeritud päringukeel
--DDL - Data Definition Language -andmebaasi struktuuri loomiseks - CREATE, ALTER
--DML - Data Manipulation Language -andmete lisamine ja uuendamise tabelis - INSER, UPDATE, DELETE

## Sisukord
- [Andmebaasihaldussüsteemid](#andmebaasihaldussüsteemid)
- [Põhimõisted](#põhimõisted)
- [Andmetüübid](#andmetüübid)
- [Piirangud](#piirangud)
- [Seosed](#tabelivahelisedseosed)

1. SQL Server Management Stuudio (SQL Serveri haldamiseks)
<img width="493" height="515" alt="{7B36BE88-298C-4B65-A8A1-20023CE6B080}" src="https://github.com/user-attachments/assets/393ba8f5-ccab-4dc8-b3ff-29595613472b" />

3. XAMPP -phpmyAdmin (mariaDB andmebaas) -vabavara
## Põhimõisted
- Andmebaas - struktueeritud andmete kogum
- Tabel - olem (entity)
- Veerg - väli (field)
- Rida - kirja (record)
- Primaarne võti (Primary Key/PK) - Veerg (tavaliselt nimega id) unikaalse identifikaatoriga mis eristab igat kirjet
- Välisvõti (võõrvõti) (FK/Foreign Key) - veerg mis loob seose teise tabeli primaarvõtmega

-  ## Andmetüübid
-   INT,Float,Decimal(6,2) - numbrilised
-   varchar(50), char(6) -tekst/sümbolid
-   boolean, bool, bit -loogiline tüüp
-   date, time, datetime - kuupäevad

-   ## Piirangud
  ```
-   Check
-   Primary Key
-   Foreign Key
-   Not Null
-   Unique
  ```
## TabelivahelisedSeosed
- üks - ühele - (nt mees --naine)
- üks - mitmele (nt õpilane käib erinevates õppeainetes)
- <img width="541" height="268" alt="{09C9FFDE-7CC1-4449-8C15-8431908DBE7B}" src="https://github.com/user-attachments/assets/4ffcc7f4-137c-42c6-b885-310ab5878db0" />
- mitu - mitmele (nt õpilane - õpetaja)
