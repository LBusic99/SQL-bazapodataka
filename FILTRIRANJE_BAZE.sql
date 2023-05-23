-- do sada smo radili ovu naredbu

select*from smjer;

--minimalnio dio select naredbe bi bio
select 1;

-- filtriranje kolona

select sifra, naziv from smjer; -- sifra, naziv u select listi

select sifra,naziv,sifra from smjer;

select *,naziv,*from smjer;

--u select listi se moze nalazit


select naziv,'Osijek', 2 from smjer;

--kolone mogu imat zamjenska imena

select naziv as nazivsmjera, 'Osijek' as grad from smjer;

--izraz (funkcija)
--getdate funkcija koja vraca trenutni naziv
select naziv, getdate() from smjer;
select upper(naziv) as smjer, getdate() as datum from smjer;

--ispišite imena i prezimena polaznika

select ime, prezime from polaznik;

-- filtriranje redova

select*from polaznik;

-- od prosli puta 
select*from polaznik where sifra=2;

-- u where dijelu se nalaze opreatori
--operatori usporedjivanja
--= != < > <= >=
select*from polaznik where sifra!=2;
select*from polaznik where sifra>2;
select*from polaznik where sifra<=2;
select*from polaznik where sifra>=2;
select*from polaznik where ime='Luka';

--logicki opreatori
--and or not
select*from polaznik where sifra>2 and sifra<5;
select*from polaznik where sifra=2 or sifra=3;
select*from polaznik where not (sifra>3 and sifra<5);
select*from polaznik where ime='Luka' and prezime='Bušiæ';

--izlistajte sve polaznike koji se ne zovu luka
select*from polaznik where ime!='Luka';


--operatori algebre
--+ - * / 
update smjer set cijena=cijena *1.1;

--ostali operatori
--like, between, in, is null, is not null
select*from polaznik where ime like'L%';
select*from polaznik where ime like'L%A';

select*from polaznik where ime like'%NT%';

select*from polaznik where sifra between 2 and 4;
select*from polaznik where sifra in (1,7,9);

select*from smjer;
select*from smjer where cijena is null;
select*from smjer where cijena is not null;