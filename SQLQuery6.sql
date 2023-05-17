--use zooloski;
--use master;

select * from djelatnik;
insert into djelatnik(ime, prezime, iban)
values ('Petra','Peric','668513526186523165'),
('Pero','Petric','648683516546421300'),
('Ivan','Ivic', '655848646513586430');

select * from datum;
insert into datum(drodjenja, ddolaska, dsmrti)
values ('2015-04-11 17:00','2015-05-23 10:00','2015-06-01 09:00'),
('2017-04-15 19:00','2018-12-31 09:00','2020-05-11 18:00'),
('2021-05-31 18:00', '2021-07-18 18:00', '2023-05-17 18:40');

select*from prostorija;
insert into prostorija(dimenzije, maksbroj, mjesto)
values
('2x2','15','Osijek'),
('3x3','16', 'Zagreb'),
('4x4','17','Split');

select*from zivotinja;
insert into zivotinja(vrsta, ime, djelatnik, prostorija, datum)
values 
('pauk','charlotte',1,1,1),
('zirafa','dugonja',2,2,2),
('lav','simba',3,3,3);

