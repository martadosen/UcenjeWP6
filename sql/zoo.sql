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



create table djelatnik(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
iban varchar(50)
);

create table datum(
datumrodenja datetime not null,
datumdolaska datetime not null,
datumsmrti datetime,
sifra int not null primary key identity(1,1) 
);


create table prostorija(
sifra int not null primary key identity(1,1),
dimenzije varchar(30) not null,
maksimalanbroj int,
mjesto varchar(30)
);

create table zivotinja(
sifra int not null primary key,
vrsta varchar(50) not null,
ime varchar(50) not null,
djelatnik int not null references djelatnik(sifra),
prostorija int not null references prostorija(sifra),
datum int not null references datum(sifra)
);
