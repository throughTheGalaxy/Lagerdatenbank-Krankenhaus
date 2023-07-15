create table Lager (
Lager_name varchar(22) not NULL,
Lager_id integer not NULL,
standort varchar(20) not NULL,
primary key(Lager_id)	
);

create table Mitarbeiter (
mitarbeiter_id integer not NULL,
vorname varchar(20) not NULL,
nachname varchar(20) not NULL,
position varchar(20) not NULL,
Lager_id integer not NULL,
FOREIGN KEY (Lager_id) REFERENCES Lager(Lager_id),
primary key(mitarbeiter_id)	
);

create table Geraete (
geraet_id integer not NULL,
geraet_name varchar(20) not NULL,
hersteller varchar(20) not NULL,
Lager_id integer not NULL,
mitarbeiter_id integer not NULL,
FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter(mitarbeiter_id),	
FOREIGN KEY (Lager_id) REFERENCES Lager(Lager_id),
primary key(geraet_id)
	
);


create table Kleidung (
kleidung_id integer not NULL,
kleidung_name varchar(20) not NULL,
farbe varchar(20) not NULL,	
groeße varchar(20) not NULL,
Lager_id integer not NULL,
mitarbeiter_id integer not NULL,
FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter(mitarbeiter_id),	
FOREIGN KEY (Lager_id) REFERENCES Lager(Lager_id),
primary key(kleidung_id)	
);

create table Medikamente(
medikament_id integer not NULL,
medikament_name varchar(20) not NULL,
wirkstoff varchar(20) not NULL,
klassifizierung varchar(20) not NULL,
Lager_id integer not NULL,
mitarbeiter_id integer not NULL,
FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter(mitarbeiter_id),	
FOREIGN KEY (Lager_id) REFERENCES Lager(Lager_id),	
primary key(medikament_id)	
);  

create table Einwegartikel(
artikel_id integer not NULL,
einwegartikel_name varchar(20) not NULL,
kategorie varchar(20) not NULL,
Lager_id integer not NULL,
mitarbeiter_id integer not NULL,
FOREIGN KEY (mitarbeiter_id) REFERENCES Mitarbeiter(mitarbeiter_id),	
FOREIGN KEY (lager_id) REFERENCES lager(lager_id),	
primary key(artikel_id)	
);

