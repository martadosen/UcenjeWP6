use master;
go 
drop database if exists djecjivrtic;
go

create database djecjivrtic collate Croatian_CI_AS;
go

use djecjivrtic;
go

create table vrtic(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
adresa varchar(50) not null,
voditelj varchar(50) not null
);

create table djeca(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null
);

create table odgajatelji(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null
);

create table grupe(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
odgajatelji varchar(50) not null,
djeca varchar(50) not null 
);