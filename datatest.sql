CREATE DATABASE biblio;
\c biblio
CREATE TABLE auteur(
    id serial primary key,
    label varchar
);
CREATE TABLE editeur(
    id serial primary key,
    label varchar
);

CREATE TABLE livre(id serial primary key,
label varchar,
auteur integer,
editeur integer,
date_publication date,
foreign key(auteur) references auteur(id),
foreign key(editeur) references editeur(id)
);

insert into auteur(label) values('Auteur 1'),('Auteur 2'),('Auteur 3');
insert into editeur(label) values('Editeur 1'),('Editeur 2'),('Editeur 3');
insert into livre(label,auteur,editeur,date_publication) values
('Livre 1',1,1,'2022-10-12'),
('Livre 2',2,1,'2022-11-10'),
('Livre 3',3,2,'2022-09-12');
