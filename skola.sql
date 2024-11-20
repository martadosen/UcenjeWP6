-- Ovo je SQL skripta
-- prebacujem se na master bazu
use master;
go 
-- brišem postojeæu bazu
drop database if exists skola;
go
-- kreiram novu bazu
create database skola;
go
-- pozicioniram se na novu bazu
use skola;
go

create table razredi(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
razrednik int not null
);

create table ucenici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
datumrodenja datetime,
razred int not null
);

create table ucitelji(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
premet varchar(50),
razrednik varchar(50)
);