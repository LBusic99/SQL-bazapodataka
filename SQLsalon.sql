use master;
drop database if exists frizerski;
go
create database frizerski;
go
use frizerski;

create table Frizerski_salon(
	sifra int not null primary key identity(1,1),
	naziv varchar(50),
	lokacija varchar(50),
	prostor varchar(50),
);

create table Djelatnica(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	oib char(11),
	salon int,
);

create table korisnik(
	sifra int not null primary key identity(1,1),
	djelatnica int,
	usluga int,
	ime varchar(50),
	spol bit,
);

create table usluga(
	sifra int not null primary key identity(1,1),
	naziv varchar(50),
	trajanje datetime,
);

alter table korisnik add foreign key (djelatnica) references Djelatnica(sifra);
alter table korisnik add foreign key (usluga) references usluga(sifra);
alter table Djelatnica add foreign key (salon) references Frizerski_salon(sifra);