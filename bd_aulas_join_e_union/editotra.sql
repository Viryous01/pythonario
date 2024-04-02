create database editora;
use editora;

create table cliente (id_cliente int(10) auto_increment primary key, nome varchar(50) not null,
pais varchar(50) not null, provincia varchar(50) not null, municipio varchar(50) default "Viana", distrito varchar(50), 
bairro varchar(50), rua varchar(50), email varchar(50), capital_social float default 100, Tipo varchar(50));


create table contato_cliente (numtelef int(20), id_cliente int(10) references cliente(id_cliente), constraint pk primary key(numtelef,id_cliente));


Create table autor (id_autor int(10) auto_increment primary key, nomereal varchar(50) not null, nomeartistico varchar(50) not null, data_nasc date);


create table telefone_autor (numtelef int(20), id_autor int(10) references autor(id_autor), constraint pk1 primary key(numtelef,id_autor));

create table nacionalidade (pais varchar(30), id_autor int(10) references autor(id_autor), constraint pk2 primary key (pais, id_autor));


create table obra (isbn  int(10) primary key, titulo varchar(50) not null, preco float, categoria varchar(40) not null);


create table obra_autor (isbn int(10) references obra(isbn), id_autor int(10) references autor(id_autor), constraint pk3 primary key (isbn,id_autor));

create table ano_edicao (data date, isbn int(10) references obra(isbn), constraint pk4 primary key (data,isbn));

create table funcionario (nfun int(10) auto_increment primary key, nome varchar(50) not null,
bi varchar(30) unique, provincia varchar(50) not null, municipio varchar(50) not null, genero varchar(50) not null, ndep int(10) not null);

create table usuario (id_usuario varchar(50) primary key, password varchar(50) not null, 
perfil varchar(20) not null, nfun int(10) references funcionario(nfun));

create table departamento (ndep int(10) auto_increment primary key, nome varchar(50) not null, chefe int(10) references funcionario(nfun));

create table venda (id_venda int(10) auto_increment primary key, datahora datetime not null,
 id_cliente int(10) references cliente(id_cliente), nfun int(10) references funcionario(nfun));

create table venda_obra (id_venda int(10) references venda(id_venda), isbn int(10) references obra(isbn), totalpago float not null, qtd int(10) not null,
 constraint pk6 primary key (id_venda,isbn));

alter table obra add (qtd_stock int(10));

alter table funcionario add constraint fk foreign key (ndep) references departamento (ndep);


insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito, bairro, rua, capital_social, tipo,email) values
(1, "Leid Rufino LTD","Brasil","Sao paulo", "Boavista","Zona Verde","Chines","10",100000,"Livraria","leidltd@gmail.com");


 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
(2, "Edmilson Books","Angola","Uige", "Uige","Candombe Velho","Carmona","8",1000000,"Livraria","edmilsonbooks@gmail.com");


 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
(3, "Livraria Lelo","Portugal","Lisboa", "Almada","Benfica","Eusebio","10",100000,"Biblioteca","livrarialelo@gmail.com");


 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
 (4, "Leonel e Filhos","Portugal","Porto", "Braga","Trofa","Matosinhos","17",10000,"Livraria","leonelefilhos@gmail.com");

insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
(5, "Domingas Leitura","Angola", "Luanda", "Luanda","Sambizanga","Dimuka","8",1000000,"Biblioteca","domingasleitura@gmail.com");

 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
 (6, "Ismael e Associados","Angola","Luanda", "Viana","Zango","ZangoIV","3",10000,"outro","Ismaeleassociados@gmail.com");

 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
 (7, "Eduvania e Emeranca Books","Angola","Cabinda", "Cabinda","Mukusal","Munguera","1847",100000000,"Livraria","edueme@gmail.com");

  insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
  (8, "Colina do Sol","Angola","Benguela", "Lobito","Baia Farta","Boavista","101",10000,"Escola","colina@gmail.com");

  insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
  (9, "FENG_UMA","Angola","Kwanza Norte", "Cazengo","Primeiro de Maio","Trabalhadores","101",100000000,"Faculdade","feng@gmail.com");

  insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
  (10, "Marcos","Namibia","winduk", "Ongdiva","Oshikango","Katutura","102",10000,"Faculdade","marcos@gmail.com");
  
  
insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito, bairro, rua, capital_social, tipo,email) values
(11, "Antonio Lopez School","Brasil","Sao paulo", "Boavista","Zona Verde","Chines","10",100000,"Livraria","ALS@gmail.com");


 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
(12, "Margareth Books","Angola","Uige", "Uige","Candombe Velho","Carmona","10",1000000,"Livraria","margabooks@gmail.com");


 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
(13, "Edmara Leitura","Portugal","Lisboa", "Almada","Benfica","Eusebio","101",100000,"Biblioteca","EDDS@gmail.com");


 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
 (14, "Jose Ngola","Portugal","Porto", "Braga","Trofa","Matosinhos","171",10000,"Colegio","Ngola@gmail.com");

insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
(15, "Imaculada","Angola", "Luanda", "Luanda","Sambizanga","Dimuka","18",1000000,"Biblioteca","imaculada@gmail.com");

 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
 (16, "Wilson e Associados","Angola","Luanda", "Viana","Zango","ZangoIV","33",10000,"outro","Wilsonassociados@gmail.com");

 insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
 (17, "Prosperidade e tatiana Books","Angola","Cabinda", "Cabinda","Mukusal","Munguera","1847",100000000,"Livraria","ProTa@gmail.com");

  insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
  (18, "Colina do Sol","Angola","Luanda", "Luanda","Ingombota","Mutamba","101",10000,"Escola","colina@gmail.com");

  insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
  (19, "FENG_UMA","Angola","Luanda", "Cacuaco","Cacuaco","Funda","101",100000000,"Faculdade","feng@gmail.com");

  insert into cliente (id_cliente, nome, pais, provincia, municipio, distrito,bairro, rua, capital_social, tipo,email) values 
  (20, "Rosalina e Punga Books","Namibia","winduk", "Ongdiva","Oshikango","Katutura","103",10000,"Faculdade","Rosa@gmail.com");

  insert into contato_cliente( numtelef,id_cliente) values (911911911, 1);

  insert into contato_cliente( numtelef,id_cliente) values (200200200, 1);

  insert into contato_cliente( numtelef,id_cliente) values (955955955, 2);

  insert into contato_cliente( numtelef,id_cliente) values (999999999, 3);

  insert into contato_cliente( numtelef,id_cliente) values (900900900, 4);

  insert into contato_cliente( numtelef,id_cliente) values (914914914, 5);

  insert into contato_cliente( numtelef,id_cliente) values (222222222, 5);

  insert into contato_cliente( numtelef,id_cliente) values (995995995, 6);

  insert into contato_cliente( numtelef,id_cliente) values (912912912, 7);

  insert into contato_cliente( numtelef,id_cliente) values (913913913, 8);

  insert into contato_cliente( numtelef,id_cliente) values (915915915, 10);

  insert into contato_cliente( numtelef,id_cliente) values (220220220, 10);



  insert into autor(nomereal, nomeartistico, data_nasc) values ("Jose Ngola", "O poeta", "1996-04-04");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Antonio Lopes", "AL", "1998-08-08");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Marcos Marcio", "Virys", "1995-05-05");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Carlos Dundao", "Carlitos", "1955-05-05");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Constantino", "Poeta Chato", "1985-10-10");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Matumona", "Luz Divina", "1967-11-11");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Maura Alexandre", "Maura", "1997-11-11");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Jufith", "Kenedy", "1997-11-11");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Wilson", "Jon snow", "1975-11-11");

  insert into autor(nomereal, nomeartistico, data_nasc) values ("Josemar", "Joao Louren o", "1985-11-11");



  insert into telefone_autor (numtelef, id_autor) values (916916916,1);

  insert into telefone_autor (numtelef, id_autor) values (917917917,2);

  insert into telefone_autor (numtelef, id_autor) values (917917917,3);

  insert into telefone_autor (numtelef, id_autor) values (914914914,5);

  insert into telefone_autor (numtelef, id_autor) values (922922922,6);

  insert into telefone_autor (numtelef, id_autor) values (933933933,7);

  insert into telefone_autor (numtelef, id_autor) values (944944944,9);

  insert into telefone_autor (numtelef, id_autor) values (944944944,10);



  insert into nacionalidade (pais, id_autor) values ("Angola", 1);

  insert into nacionalidade (pais, id_autor) values ("Cuba", 1);

  insert into nacionalidade (pais, id_autor) values ("Cuba", 2);

  insert into nacionalidade (pais, id_autor) values ("Angola", 3);

  insert into nacionalidade (pais, id_autor) values ("Togo", 3);

  insert into nacionalidade (pais, id_autor) values ("Angola", 4);

  insert into nacionalidade (pais, id_autor) values ("Portugal", 5);

  insert into nacionalidade (pais, id_autor) values ("Portugal", 6);

  insert into nacionalidade (pais, id_autor) values ("Brasil", 7);

  insert into nacionalidade (pais, id_autor) values ("Alemanha", 7);

  insert into nacionalidade (pais, id_autor) values ("Expanha", 8);

  insert into nacionalidade (pais, id_autor) values ("Angola", 8);

  insert into nacionalidade (pais, id_autor) values ("Brasil", 8);

  insert into nacionalidade (pais, id_autor) values ("Canada", 9);

  insert into nacionalidade (pais, id_autor) values ("EUA", 10);

  insert into nacionalidade (pais, id_autor) values ("RDC", 10);

  update nacionalidade set pais="Espanha" where pais="Expanha";




  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (1000, "A culpa eh das Estrelas",5000,"Romance", 200);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (1500, "Meu Melhor Amigo",3500,"Drama", 220);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (1800, "O cerebro de Buda",7500,"Neuro Ciencia", 120);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (800, "O Desejado de todas as na  es",5500,"Religioso", 250);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (600, "Um homem do mundo em busca de um mundo do homem",4500,"Drama", 75);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (700, "Eu depois de ti",4700,"Romance", 100);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (222,"Java Media framework",3700,"Programa  o", 100);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (22,"Metodos Computacionais",3700,"Matematica", 300);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (223,"Usa a Cabe a",4500,"Programa  o", 230);

  insert into obra (isbn, titulo, preco,categoria, qtd_stock) values (1023,"O teu corpo como  um interruptor",4500,"Biologia", 130);







  insert into ano_edicao(isbn, data) values (22, "2000-08-08");

  insert into ano_edicao(isbn, data) values (22, "2006-10-10");

  insert into ano_edicao(isbn, data) values (222, "2006-10-10");

  insert into ano_edicao(isbn, data) values (223, "2010-10-10");

  insert into ano_edicao(isbn, data) values (600, "1950-05-05");

  insert into ano_edicao(isbn, data) values (600, "1987-02-02");

  insert into ano_edicao(isbn, data) values (700, "1987-02-02");

  insert into ano_edicao(isbn, data) values (800, "1997-07-07");

  insert into ano_edicao(isbn, data) values (1000, "2000-07-07");

  insert into ano_edicao(isbn, data) values (1023, "2004-04-04");

  insert into ano_edicao(isbn, data) values (1500, "2014-04-04");

  insert into ano_edicao(isbn, data) values (1800, "2013-03-03");

 
 

  insert into obra_autor(isbn,id_autor) values  (22,1);

  insert into obra_autor(isbn,id_autor) values  (22,5);

  insert into obra_autor(isbn,id_autor) values  (222,10);

  insert into obra_autor(isbn,id_autor) values  (222,9);

  insert into obra_autor(isbn,id_autor) values  (223,2);

  insert into obra_autor(isbn,id_autor) values  (600,3);

  insert into obra_autor(isbn,id_autor) values  (600,4);

  insert into obra_autor(isbn,id_autor) values  (700,5);

  insert into obra_autor(isbn,id_autor) values  (800,6);

  insert into obra_autor(isbn,id_autor) values  (1000,7);

  insert into obra_autor(isbn,id_autor) values  (1023, 8);

  insert into obra_autor(isbn,id_autor) values  (1500,9);

  insert into obra_autor(isbn,id_autor) values  (1800,7);



  insert into departamento(ndep, nome, chefe) values (1,"Vendas",1);

  insert into departamento(ndep, nome, chefe) values (2,"Recursos Humanos",2);

  insert into departamento(ndep, nome, chefe) values (3,"Edi ao e Imagem",3);


  insert into departamento(ndep, nome, chefe) values (4,"Juridico",4);

  insert into departamento(ndep, nome, chefe) values (5,"Contabilidade e Finan as",5);



 insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (1,"Paulo Matoso", "0066LA039", "Luanda","Luanda", "Masculino",1);

 insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (2,"Alvaro Fernando", "0088LA039", "Luanda","Viana", "Masculino",2);

 insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (3,"Elias Zacarias", "0099LA039", "Luanda","Belas", "Masculino",3);

 insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (4,"Winyk Mota", "0000LA039", "Luanda","Belas", "Masculino",4);

  insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (5,"Ana Nobre", "0010LA039", "Luanda","Viana", "Femenino",5);

  insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (6,"Dionisia Jose", "0020LA039", "Luanda","Icolo e Bengo", "Femenino",1);

  insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (7,"Mireila Dinis", "0030LA039", "Luanda","Icolo e Bengo", "Femenino",1);

  insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (8,"Kluyverth", "0040LA039", "Luanda","Luanda", "Masculino",1);

  insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (9,"Salomao Satuta", "0044LA039", "Luanda","Viana", "Masculino",1);

 insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (10,"Angelica Silva", "0055LA039", "Luanda","Viana", "Feminino",1);

  insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (11,"Ely Antonio", "0052LA039", "Luanda","Belas", "Masculino",2);

  insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (12,"Sebastiao Manuel", "0062LA039", "Luanda","Belas", "Masculino",2);

  insert into funcionario(nfun, nome, bi, provincia, municipio, genero, ndep)
 values (13,"jhon edgar", "0072LA039", "Luanda","Talatona", "Masculino",3);





insert into usuario(id_usuario, password, perfil, nfun) values ("Gil","1234","Gerente",1);

  insert into usuario(id_usuario, password, perfil, nfun) values ("Dionisia","1234","Funcionario",6);

  insert into usuario(id_usuario, password, perfil, nfun) values ("Mireila","1234","Funcionario",7);

  insert into usuario(id_usuario, password, perfil, nfun) values ("Kluyverth","1234","Funcionario",8);

  insert into usuario(id_usuario, password, perfil, nfun) values ("salomao","1234","Funcionario",9);

  insert into usuario(id_usuario, password, perfil, nfun) values ("Angelica","1234","Funcionario",10);





  insert into venda(datahora, id_cliente, nfun) values ("2017-05-05 14:47:37", 1,6);

  insert into venda(datahora, id_cliente, nfun) values ("2017-05-05 15:47:37", 2,6);

  insert into venda(datahora, id_cliente, nfun) values ("2017-06-06 16:45:37", 3,7);

  insert into venda(datahora, id_cliente, nfun) values ("2017-07-06 12:45:37", 4,7);

  insert into venda(datahora, id_cliente, nfun) values ("2017-08-06 12:45:20", 5,8);

  insert into venda(datahora, id_cliente, nfun) values ("2017-08-07 12:45:20", 6,8);

  insert into venda(datahora, id_cliente, nfun) values ("2017-08-08 12:43:20", 1,8);

  insert into venda(datahora, id_cliente, nfun) values ("2017-08-09 12:33:20", 8,9);

  insert into venda(datahora, id_cliente, nfun) values ("2017-08-10 12:33:20", 9,9);

  insert into venda(datahora, id_cliente, nfun) values ("2018-08-11 12:30:20", 10,9);
  
  insert into venda(datahora, id_cliente, nfun) values ("2018-05-05 14:47:37", 1,9);

  insert into venda(datahora, id_cliente, nfun) values ("2018-05-05 15:47:37", 1,8);

  insert into venda(datahora, id_cliente, nfun) values ("2018-06-06 16:45:37", 9,6);

  insert into venda(datahora, id_cliente, nfun) values ("2018-07-06 12:45:37", 4,7);

  insert into venda(datahora, id_cliente, nfun) values ("2018-08-06 12:45:20", 5,8);



  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (1,22,8,28600);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (2,222,8,28600);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (3,223,10,45000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (4,600,10,45000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (5,700,20,92000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (6,800,20,110000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (8,1000,50,250000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (7,1023,20,180000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (9,1500,30,105000);
  
    insert into venda_obra(id_venda, isbn,qtd,totalpago) values (10,1500,100,350000);
  
insert into venda_obra(id_venda, isbn,qtd,totalpago) values (11,700,20,92000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (12,800,40,220000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (13,1000,100,500000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (14,1023,20,180000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (15,1500,30,105000);
  
  
   insert into venda_obra(id_venda, isbn,qtd,totalpago) values (1,1000,100,500000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (2,1023,20,180000);

  insert into venda_obra(id_venda, isbn,qtd,totalpago) values (3,1500,30,105000);
  
 
  update funcionario set genero="Masculino" where nfun=1;
  
  
 show tables;
  