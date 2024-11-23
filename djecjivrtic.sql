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
('Mali Zvonèiæ', 'Ulica Sunca 12, Zagreb', 'Ivana Horvat'),
('Djeèji Svijet', 'Trg Slobode 5, Rijeka', 'Marko Novosel'),
('Vrtiæ Zeleni Èaj', 'Ulica Mirisa 8, Osijek', 'Ana Kovaèiæ'),
('Zlatna Duga', 'Kralja Tomislava 14, Split', 'Lidija Juriæ'),
('Leptiriæ', 'Ulica Lavande 3, Zadar', 'Petra Babiæ');

INSERT INTO djeca (sifra, ime, prezime) 
VALUES 
(1, 'Ivan', 'Horvat'),
(2, 'Ana', 'Iviæ'),
(3, 'Marko', 'Juriæ'),
(4, 'Lucija', 'Kovaèiæ'),
(5, 'Petar', 'Babiæ');


INSERT INTO odgajatelji (sifra, ime, prezime) 
VALUES 
(1, 'Jelena', 'Kovaèiæ'),
(2, 'Ivan', 'Novak'),
(3, 'Maja', 'Babiæ'),
(4, 'Ana', 'Periæ'),
(5, 'Tomislav', 'Iviæ'),
(6, 'Lucija', 'Horvat'),
(7, 'Marko', 'Juriæ'),
(8, 'Petra', 'Sliškoviæ');

INSERT INTO grupe (naziv, odgajatelj, vrtic)
VALUES 
('Mali istraživaèi', 1, 'Vrtiæ Sunce'),
('Zeleni list', 2, 'Vrtiæ Zvonèiæ'),
('Laviæi', 3, 'Vrtiæ Leptiriæ'),
('Sretne ptice', 4, 'Vrtiæ Jelenko'),
('Veseli delfini', 5, 'Vrtiæ Jelenko'),
('Tigrasti junaci', 6, 'Vrtiæ Zvonèiæ'),
('Bubamare', 7, 'Vrtiæ Sunce'),
('Zlatne ribe', 8, 'Vrtiæ Leptiriæ');


INSERT INTO clanovi (dijete, grupa) 
VALUES 
(1, 'Mali istraživaèi'),
(2, 'Zeleni list'),
(3, 'Laviæi'),
(4, 'Sretne ptice'),
(5, 'Veseli delfini'),
(6, 'Tigrasti junaci'),
(7, 'Bubamare'),
(8, 'Zlatne ribe');




