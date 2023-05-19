use master;
drop database if exists Udruga_za_zastitu_zivotinja;
go
create database Udruga_za_zastitu_zivotinja;
go
use Udruga_za_zastitu_zivotinja;

create table udruga_za_zastitu_zivotinja(
	sifra int not null primary key identity(1,1),
	adresa varchar(50),
	ime varchar(50)
);

create table radnik(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	prezime varchar(50),
	oib char(11),
	Udruga_za_zastitu_zivotinja int
);

create table zivotinja(
	sifra int not null primary key identity(1,1),
	ime varchar(50),
	datum_rodenja datetime,
	datum_smrti datetime,
	prostor int,
	radnik int
);

create table prostor(
	sifra int not null primary key identity(1,1),
	velicina varchar(50)
);

alter table radnik add foreign key (udruga_za_zastitu_zivotinja) references udruga_za_zastitu_zivotinja (sifra);
alter table zivotinja add foreign key (radnik) references radnik (sifra);
alter table zivotinja add foreign key (prostor) references prostor (sifra);
