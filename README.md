# Andmebaasihaldussüsteemid

[Põhimõisted](README.md) | [Põhimõisted](kysimused.md) | [Põhimõisted](keys.md) | [Põhimõisted](trigerid.md) | [Põhimõisted](TRIGERIDÜLESANNNEEE.md) 

### Tunnis me kasutame andmebaasihaldussüsteemi:

- SQL - structured Query Language - struktureeritud päringukeel
  - DDL - Data Definition Language - andmebaasi struktuuri loomiseks - CREATE, ALTER
  - DML - Data Manipulation Language - andmete lisamine ja uuendamise tabelis - INSERT, UPDATE, DELETE

## Navigeerimine

[Select laused](select.md) | [Kasutaja loomine XAMPP-is](kasutajaXampp.md) | [Kasutaja loomine SQL Server](kasutaja.md) | [Triggerid](keys.md#triggerid-triggers) | [Kodutöö - Keys](keys.md)

---

## Kasutatavad andmebaasihaldussüsteemid

1. **SQL Server Management Studio** (SQL Serveri haldamiseks)
   <img width="493" height="515" alt="SQL Server Management Studio" src="https://github.com/user-attachments/assets/393ba8f5-ccab-4dc8-b3ff-29595613472b" />

2. **XAMPP - phpmyAdmin** (mariaDB andmebaas) - vabavara

---

## Sisukord

- [Andmebaasihaldussüsteemid](#andmebaasihaldussüsteemid)
- [Põhimõisted](#põhimõisted)
- [Andmetüübid](#andmetüübid)
- [Piirangud](#piirangud)
- [Tabelivahelised seosed](#tabelivahelisedseosed)

## Põhimõisted

- **Andmebaas** - struktueeritud andmete kogum
- **Tabel** - olem (entity)
- **Veerg** - väli (field)
- **Rida** - kirje (record)
- **Primaarne võti (Primary Key/PK)** - Veerg (tavaliselt nimega id) unikaalse identifikaatoriga mis eristab igat kirjet
- **Välisvõti (võõrvõti) (FK/Foreign Key)** - veerg mis loob seose teise tabeli primaarvõtmega

---

## Andmetüübid

- **Numbrilised:** INT, SMALLINT, FLOAT, DECIMAL(6,2)
- **Tekst:** VARCHAR(50), CHAR(6), TEXT
- **Loogilised:** BOOLEAN, BOOL, BIT
- **Kuupäevad ja kellaajad:** DATE, TIME, DATETIME

---

## Piirangud

```
- Check
- Primary Key
- Foreign Key
- Not Null
- Unique
```

---

## TabelivahelisedSeosed

- **Üks - ühele** (nt mees -- naine)
- **Üks - mitmele** (nt õpilane käib erinevates õppeainetes)
- **Mitu - mitmele** (nt õpilane - õpetaja)

<img width="541" height="268" alt="Tabelivahelised seosed" src="https://github.com/user-attachments/assets/4ffcc7f4-137c-42c6-b885-310ab5878db0" />

