-- Ovo je SQL skripta
-- prebacujem se na master bazu
use master;
go 
-- brišem postojeæu bazu
drop database if exists zoo;
go
-- kreiram novu bazu
create database zoo;
go
-- pozicioniram se na novu bazu
use zoo;
go

--create table zivotinja(
--sifra int,
--vrsta varchar(50),
--ime varchar(50),
--djelatnik int,
--prostorija int,
--datum int
--);

create table prostorija(
sifra int,
dimenzije varchar(30),
maksimalanbroj int,
mjesto varchar(30)
);

create table djelatnik(
sifra int,
ime varchar(50),
prezime varchar(50),
iban varchar(50)
);

create table datum(
datumrodenja datetime,
datumdolaska datetime
datumsmrti datetime
sif
);