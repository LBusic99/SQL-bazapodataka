use master;
drop database if exists edunovawp1
go
create database edunovawp1 collate Croatian_CI_AS;
go
use edunovawp1;

create table smjer(
	sifra int not null primary key identity(1,1),
	naziv varchar(50) not null,
	trajanje int not null,
	cijena decimal (18,2),
	upisnina decimal(18,2),
	verificiran bit 
);

create table polaznik(
	sifra int not null primary key identity (1,1),
	ime varchar(50) not null,
	prezime varchar(50) not null,
	oib char(11),
	email varchar(100) 
);

create table grupa(
	sifra int not null primary key identity (1,1),
	naziv varchar(50) not null,
	smjer int not null, 
	datumpocetka datetime not null
);

create table clan(
	grupa int not null,
	polaznik int not null,
);

--veze izmedju tablica

alter table grupa add foreign key (smjer) references smjer(sifra);
alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

--najlosiji nacin 

--1
insert into smjer
values ( 'Web programiranje ŠČ',250, 1473.82,73,1);

--malo bolji nacin
--2
insert into smjer (naziv,trajanje)
values ('Java programiranje', 130);

--dobra praksa 
--3
insert into smjer (naziv, trajanje, cijena, upisnina, verificiran)
values ('Serviser',150,null,null,0);


