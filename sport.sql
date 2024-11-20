-- Ovo je SQL skripta
-- prebacujem se na master bazu
use master;
go 
-- brišem postojeæu bazu
drop database if exists sport;
go
-- kreiram novu bazu
create database sport;
go
-- pozicioniram se na novu bazu
use sport;
go

create table klub(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
osnovan datetime not null,
stadion varchar(50),
predsjednik varchar(50),
drzava varchar(50) not null,
liga varchar(50)
);

create table utakmica(
sifra int not null primary key identity(1,1),
datum datetime not null,
vrijeme datetime not null,
lokacija varchar(50) not null,
stadion varchar(50) not null,
domaci_klub varchar(50),
gostujuci_klub varchar(50) 
);

create table igrac(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
datum_roðenja varchar(50) not null,
pozicija varchar(50),
broj_dresa decimal(18,2) not null,
klub varchar
);

create table trener(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
klub varchar(50),
nacionalnost varchar(50),
iskustvo varchar(50)
);