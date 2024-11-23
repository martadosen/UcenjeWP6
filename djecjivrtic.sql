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
('Mali Zvon�i�', 'Ulica Sunca 12, Zagreb', 'Ivana Horvat'),
('Dje�ji Svijet', 'Trg Slobode 5, Rijeka', 'Marko Novosel'),
('Vrti� Zeleni �aj', 'Ulica Mirisa 8, Osijek', 'Ana Kova�i�'),
('Zlatna Duga', 'Kralja Tomislava 14, Split', 'Lidija Juri�'),
('Leptiri�', 'Ulica Lavande 3, Zadar', 'Petra Babi�');

INSERT INTO djeca (sifra, ime, prezime) 
VALUES 
(1, 'Ivan', 'Horvat'),
(2, 'Ana', 'Ivi�'),
(3, 'Marko', 'Juri�'),
(4, 'Lucija', 'Kova�i�'),
(5, 'Petar', 'Babi�');


INSERT INTO odgajatelji (sifra, ime, prezime) 
VALUES 
(1, 'Jelena', 'Kova�i�'),
(2, 'Ivan', 'Novak'),
(3, 'Maja', 'Babi�'),
(4, 'Ana', 'Peri�'),
(5, 'Tomislav', 'Ivi�'),
(6, 'Lucija', 'Horvat'),
(7, 'Marko', 'Juri�'),
(8, 'Petra', 'Sli�kovi�');

INSERT INTO grupe (naziv, odgajatelj, vrtic)
VALUES 
('Mali istra�iva�i', 1, 'Vrti� Sunce'),
('Zeleni list', 2, 'Vrti� Zvon�i�'),
('Lavi�i', 3, 'Vrti� Leptiri�'),
('Sretne ptice', 4, 'Vrti� Jelenko'),
('Veseli delfini', 5, 'Vrti� Jelenko'),
('Tigrasti junaci', 6, 'Vrti� Zvon�i�'),
('Bubamare', 7, 'Vrti� Sunce'),
('Zlatne ribe', 8, 'Vrti� Leptiri�');


INSERT INTO clanovi (dijete, grupa) 
VALUES 
(1, 'Mali istra�iva�i'),
(2, 'Zeleni list'),
(3, 'Lavi�i'),
(4, 'Sretne ptice'),
(5, 'Veseli delfini'),
(6, 'Tigrasti junaci'),
(7, 'Bubamare'),
(8, 'Zlatne ribe');




