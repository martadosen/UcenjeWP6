select * from smjerovi; 

select 1;

--filtriranje kolona (između select i from)
-- * sve kolone
-- kolone
-- konstanta
-- izraz
select naziv as n1, cijena as c1, 
naziv, 'Osijek' as grad,
cijena*1.25 as sPDV,
getdate() as kada, *
from smjerovi;

select ime,prezime from polaznici;

--filtriranje redova
select * from polaznici;

update polaznici set oib = '24503540454' where sifra=7; 

select * from polaznici
where ime like '%an%';

select * from polaznici where ime not like '%a';

select * from polaznici 
where sifra in(1,7,9);

select * from smjerovi 
where izvodiseod between '2024-01-01' and '2024-12-31';

select prezime,ime from polaznici
order by prezime, 2;

select top 10 percent * from polaznici;

select top 10 ime,prezime into nova from polaznici;

select * from nova;

drop table nova;

use knjiznica;
select count(*) from autor;

select top 10 * from autor;

insert into autor (sifra,ime,prezime,datumrodenja) 
values (4,'Marta','Došen','1997-02-18');

