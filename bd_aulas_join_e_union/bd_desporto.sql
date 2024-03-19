use desporto;

create table ciclismo(
id int primary key auto_increment,
nome varchar(45),
pais varchar(45)
);

create table skate(
id int primary key auto_increment,
nome varchar(45),
pais varchar(45)
);

insert into ciclismo(nome,pais)
values
("Antunes", "Angola"), ("Aldemir", "Bélgica"), ("Viti", "UK");

insert into skate(nome,pais)
values
("Antunes", "Angola"), ("Eduardo", "Bélgica"), ("João", "UK");