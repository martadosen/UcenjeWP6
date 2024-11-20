select * from smjerovi

update smjerovi set cijena=1100
where sifra=2; -- ako mijenjamo o PK tada mijenjamo 1 red

update smjerovi set 
izvodiseod='2024-12-05', 
vaucer=0
where sifra=2;

select * from polaznici where sifra=16;

update polaznici set prezime='Franjić' where sifra=16;

select * from polaznici where sifra=16;

insert into smjerovi (naziv, cijena, izvodiseod, vaucer)
values ('Web programiranje',1225.48,'2024-11-06 17:00',1);

insert into smjerovi(naziv, cijena, izvodiseod, vaucer)
values
('fjhtgbknk',5121,null,null),
('fjhtgbknk',51217,null,null),
('fjhgtjubknk',51521,null,null),
('fjhgtjbknk',51521,null,null),
('fjhgzghjbknk',55121,null,null);


select * from smjerovi;
update smjerovi set cijena = cijena * 0.9;
select * from smjerovi;


select * from smjerovi;
update smjerovi set cijena = cijena * 1.35;
select * from smjerovi;

select * from smjerovi;
update smjerovi set cijena = cijena - 10; 
select * from smjerovi;

-- uvjet vanjskog ključa
update grupe set smjer=8 where sifra=1;

-- DELETE naredba

select * from smjerovi;
delete from smjerovi where sifra>8;
select * from smjerovi;

select * from grupe;
update grupe set smjer=1 where sifra=1;

delete grupe where sifra=1;

select * from clanovi;

update clanovi set grupa=2 where grupa=1;