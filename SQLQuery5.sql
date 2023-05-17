use master;
go
drop database if exists zooloski;
go
create database zooloski;
go
use zooloski;

create table zivotinja(
	sifra int not null primary key identity(1,1),
	vrsta varchar(50),
	ime varchar(50),
	djelatnik int,
	prostorija int,
	datum int,
);

create table djelatnik(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	iban varchar(50),
);

create table datum(
	sifra int not null primary key identity(1,1),
	drodjenja datetime,
	ddolaska datetime,
	dsmrti datetime,
);

create table prostorija(
	sifra int not null primary key identity(1,1),
	dimenzije varchar(50),
	maksbroj int,
	mjesto varchar(50),
);

alter table zivotinja add foreign key (djelatnik) references djelatnik(sifra);
alter table zivotinja add foreign key (prostorija) references prostorija(sifra);
alter table zivotinja add foreign key (datum) references datum(sifra);