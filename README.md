use frizerski;
go
create table Frizerski(
	Naziv varchar(50),
	Cijena decimal(18,2),
	Postanskibroj char(5),
);
create table Korisnik(
	OIB char(11),
	Ime varchar(50),
	Prezime varchar(50),
);
create table Djelatnica(
	OIB char(11),
	Ime varchar(50),
	Prezime varchar(50),
);
