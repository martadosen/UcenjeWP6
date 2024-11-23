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
odgajatelj int not null references odgajatelji(sifra),
vrtic int not null references vrtic(sifra)  
);

create table clanovi(
dijete int not null references djeca(sifra),
grupa int not null references grupe(sifra)
);

INSERT INTO vrtic (naziv, adresa, voditelj)
VALUES
('Mali Zvonèic', 'Ulica Sunca 12, Zagreb', 'Ivana Horvat'),
('Djecji Svijet', 'Trg Slobode 5, Rijeka', 'Marko Novosel'),
('Vrtic Zeleni Caj', 'Ulica Mirisa 8, Osijek', 'Ana Kovaèic'),
('Zlatna Duga', 'Kralja Tomislava 14, Split', 'Lidija Juric'),
('Leptiric', 'Ulica Lavande 3, Zadar', 'Petra Babic');

INSERT INTO djeca (ime, prezime) 
VALUES 
('Ivan', 'Horvat'),
('Ana', 'Iviæ'),
('Marko', 'Juriæ'),
('Lucija', 'Kovaèiæ'),
('Petar', 'Babiæ'),
('Sara', 'Radiæ'),
('Nikola', 'Matiæ'),
('Emil', 'Kneževiæ'),
('Maja', 'Lukiæ'),
('David', 'Saviæ');


INSERT INTO odgajatelji (ime, prezime) 
VALUES 
('Jelena', 'Kovaèic'),
('Ivan', 'Novak'),
('Maja', 'Babic'),
('Ana', 'Peric'),
('Tomislav', 'Ivic'),
('Lucija', 'Horvat'),
('Marko', 'Juric'),
('Petra', 'Sliškovic');





