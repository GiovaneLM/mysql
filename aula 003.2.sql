#criando meu banco de dados
create database sistema2;
use sistema2;

create table cidade (
codigo int primary key auto_increment,
nome varchar (100) not null
);

create table estado(
	codigo int primary key auto_increment,
	nome varchar(100) not null,
    sigla varchar(2) not null
);

create table pessoa (
	codigo int primary key auto_increment,
    nome varchar(100) not null,
    cpf varchar(11) default '00000000000'
);

alter table cidade
add column codigoEstado int not null;
 
 
 alter table cidade
 add constraint fk_estado foreign key(codigoEstado) references estado(codigo);
 

 alter table pessoa
 add column codigoCidade int not null;

 
 alter table pessoa
 add constraint fk_cidade foreign key(codigoCidade) 
 references cidade(codigo);
 
 # comandos DML
 # selecionando todos os dados da tabela
 select * from estado;
 insert into estado (nome,sigla)  values ('Rio Grande do Sul','RS');
 insert into estado (nome,sigla)  values ('Santa Catarina','SC');
 insert into estado (nome,sigla)  values ('Paraná','PR');
 
 /*
 INSERIR NA TABELA ESTADO, TODOS OS ESTADOS DA REGIÃO SUDESTE
 */
select*from estado;
insert into estado (nome,sigla)  values ('Minas Gerais','MG');
 
 #OUTRA FORMA - insert EM LOTE
 
insert into estado (nome,sigla) values ('Maranhão','MA'),('Piauí','PI'),('Ceará','CE'),('Rio Grande do Norte','RN'),('Paraíba','PB'),('Pernambuco','PE'),
('Alagoas','AL'),('Sergipe','SE'),('Bahia','BA');

/*
 INSERIR NA TABELA ESTADO, TODOS OS ESTADOS DA REGIÃO NORTE EM LOTE
 */
 
insert into estado (nome,sigla) values ('Amazonas','AM'),('Pará','PA'),('Acre','AC'),('Roraima','RR'),('Rondônia','RO'),('Amapá','AP'),('Tocantins','TO');
  
desc estado;
  
insert into estado(nome) values ('XXX');
insert into estado(nome,sigla) values ('yyy',null);#nao vai entrar na tabela pois a sigla e um item not null entao nao pode ser colocado um null
insert into estado(nome,sigla) values ('zzz','');

insert into estado values(null,'teste','UU');

show tables;#comando para ver todas as tabelas que estamos manipulando
select * from cidade;
insert into cidade(nome,codigoEstado) values ('Porto Alegre',1);
insert into cidade(nome,codigoEstado) values('Curitiba',3),('florianópolis',2),('canoas',1);