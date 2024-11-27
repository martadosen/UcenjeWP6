use master;
go 
drop database if exists djecjivrtic;
go

create database djecjivrtic collate Croatian_CI_AS;
go

use djecjivrtic;
go

create table vrtici(
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
vrtic int not null references vrtici(sifra)  
);

create table clanovi(
dijete int not null references djeca(sifra),
grupa int not null references grupe(sifra)
);

INSERT INTO vrtici (naziv, adresa, voditelj) VALUES
('Mali Zvončić', 'Ulica Sunca 12, Zagreb', 'Ivana Horvat'),
('Dječji Svijet', 'Trg Slobode 5, Rijeka', 'Marko Novosel'),
('Vrtić Zeleni Čaj', 'Ulica Mirisa 8, Osijek', 'Ana Kovačić'),
('Zlatna Duga', 'Kralja Tomislava 14, Split', 'Lidija Juric'),
('Leptirić', 'Ulica Lavande 3, Zadar', 'Petra Babić');

INSERT INTO djeca(ime, prezime) 
VALUES 
('Ivan', 'Horvat'),
('Ana', 'Ivić'),
('Marko', 'Jurić'),
('Lucija', 'Kovačić'),
('Petar', 'Babić'),
('Sara', 'Radić'),
('Nikola', 'Matić'),
('Emil', 'Knežević'),
('Maja', 'Lukić'),
('David', 'Savić');


INSERT INTO odgajatelji(ime, prezime) 
VALUES 
('Jelena', 'Kovačić'),
('Ivan', 'Novak'),
('Maja', 'Babić'),
('Ana', 'Perić'),
('Tomislav', 'Ivić'),
('Lucija', 'Horvat'),
('Marko', 'Jurić'),
('Petra', 'Slišković');

insert into grupe(naziv,odgajatelj,vrtic) 
values
('Leptirići',1,1),
('Ribice',2,2),
('Bombončići',3,3),
('Lavići',4,4),
('Pčelice',5,5);

insert into clanovi(dijete,grupa) 
values
(1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4),(9,5),(10,5);










