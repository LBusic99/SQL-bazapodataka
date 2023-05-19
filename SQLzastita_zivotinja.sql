use master;
drop database if exists Udruga;
go
create database Udruga;
go
use Udruga;

create table Udruga(
	sifra int not null primary key identity(1,1),
	naziv varchar(50),
	adresa varchar(50),
	prostor varchar(50),
);

create table Djelatnica(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	oib char(11),
	udruga int,
);

create table Sticenik(
	sifra int not null primary key identity(1,1),
	djelatnica int,
	vrsta varchar(50),
	ime varchar(50),
	prostor int,
);

create table Prostor(
	sifra int not null primary key identity(1,1),
	dimenzija varchar(50),
);

alter table Djelatnica add foreign key (udruga) references Udruga(sifra);
alter table Sticenik add foreign key (djelatnica) references Djelatnica(sifra);
alter table Sticenik add foreign key (prostor) references Prostor(sifra);