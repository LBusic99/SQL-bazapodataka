--slaganje rezultata
select*from kupci
where prezime like 'AB%'
order by 2 desc,3;

select top 10*from kupci
where ime like'%NT%'
and prezime not like 'F%';

select top 10percent*from kupci
where ime like'%NT%'
and prezime not like 'F%';

select ime, prezime from kupci
where mjesto=18031;

select concat(trim(ime),' ',trim(prezime)) as imeprezime,
'Osijek' as mjesto
from kupci
where mjesto=18031
union
select concat(trim(ime),' ',trim(prezime)) as imeprezime,
'Donji Miholjac' as mjesto
from kupci
where mjesto=2763;

select*from artikli
where kratkiNaziv like '%PERILICA%'
and dugiNaziv like '%posu%';

select*from Artikli where
concat(kratkiNaziv, dugiNaziv) like '%perili%posu%';

--koliko tablica ima redova
select count(*) from kupci;

select count(*) from ArtikliNaPrimci;

select top 10*from ArtikliNaPrimci;

select distinct artikl from ArtikliNaPrimci
order by 1;

--upit pronaći artikle koje nismo nikada nabavili
select*from artikli where sifra not in 
(select distinct artikl from ArtikliNaPrimci);

--obrisite artikle koje nismo nikada nabavili
delete from Artikli where sifra in (90661, 79102);

--zadnja sifra kupca
select top 1 sifra from kupci order by 1 desc;

--unesite sebe kao kupca
select*from kupci;
insert into kupci(ime, jmbg, prezime, adresa, mjesto, email, telefon,oib)
values ('Luka','1236598745632', 'Bušić', 'MELITE LORKOVIĆ 22', '32270', NULL,'095658364','23658965871');

--tablici kupci dodati kolonu oib
alter table kupci add oib char(11);
select top 10 concat('>',oib,'<')from kupci;
update kupci set oib='  ';
alter table kupci alter column oib char(11)not null;

--koliko ima kupaca iz Osijeka
select top 1* from kupci;
select*from mjesta where naziv like '%Osijek%'
select count(*) from kupci where mjesto=45691;
select top 10 primka, kolicina*cijena as iznos
from ArtikliNaPrimci;

select sum (kolicina*cijena) from ArtikliNaPrimci
where primka=14;

select min(cijena) from Artikli;

select*from Artikli where cijena=0.04;
 select max(cijena) from artikli;
 select*from artikli where cijena=66890.00;
 select*,cijena/7.5345 as EUR from artikli where cijena=66890.00;

 --ukupni iznosi na svim primkama
 select primka, sum(cijena*kolicina)from ArtikliNaPrimci
 group by primka
 having sum(cijena*kolicina)>10000000
 order by 2  desc;

 --pronađite naziv dobavljaca koji je dostavio najveci iznos po jednoj primci

select*from primke where sifra=15853;
select * from dobavljaci where sifra=560;
select * from mjesta where sifra=42633;
select*from opcine where sifra=5312;
select*from zupanije where sifra=18;

select*from kupci;

--koliko kupaca se zove kao vi?

select count(*) from kupci where ime='Luka';

alter table kupci add spol bit;
update kupci set spol=1 where trim (ime) like '%a';
update kupci set spol=0 where trim(ime) not like'%a';