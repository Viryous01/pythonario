create database mundo default character set utf8;
use mundo;

create table continente(
id int auto_increment primary key,
nome varchar(45)
);

create table pais(
id int auto_increment primary key,
nome varchar(45),
continente_id int null,
foreign key(continente_id) references continente(id)
);

create table cidade(
id int auto_increment primary key,
nome varchar(45),
populacao int not null,
area int not null,
pais_id int null,
foreign key(pais_id) references pais(id)
);

insert into continente(nome)
values("África"), ("América"), ("Ásia"), ("Europa"), ("Oceania"), ("Antártida");

insert into pais(nome, continente_id)
values
("Angola",1), ("Estados Unidos da América",2), ("China",3), ("Eslováquia",4), ("Austrália",5), ("Portugal",4),
("Alemanha",4), ("Inglaterra",4), ("Japão",3), ("Tunísia",null), ("Índia",3), ("Rússia",4), ("Quénia",1),
("Namíbia",1), ("Nigéria",1), ("Holanda",4), ("Bélgica",4), ("Croácia",4), ("Hungria",4),
("Corea do Sul", 3), ("Taiwan", 3), ("Costa do Marfim",1), ("Zâmbia",1), ("Argélia",1), ("Irão",null);

insert into cidade(nome, populacao, area, pais_id)
values 
("Tóquio", 13515271	,254321,9), ("Abuja", 25896541,3025780,15), ("Nova York", 27896541,5008625, 2), 
("Argel", 2896541,1256304,24),("Benguela", 2896541,124634,1),("Washington", 45896541, 3568021, 2),
("Luanda", 8962541,4523,1), ("Lagos", 30896541, 1085627,15), ("Kuito", 25896541,8648,15),
("Lisboa", 96541,120365,6),("Berlim", 962541,129365,7),("Abijan", 962541,120365,22),("Bruxelas", 1026541,820365,17),
("Harare", 716541,450365,null),("Zagrebe", 3541,20365,18),("Nairobi", 981541,253365,13),
("Oslo", 6541,25963,null),("Huambo", 2026541,34365,1),("Varsóvia", 96541,36552,null),("Praga", 196541,751365,null);