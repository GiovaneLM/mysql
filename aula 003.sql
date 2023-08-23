create database sistema;
use sistema;

create table cidade(
	codigo int primary key auto_increment,
	nome varchar(100) not null 
);
create table estado(
	codigo int primary key auto_increment,
	nome varchar(100) not null,
	sigla varchar(2) not null
);
create table pessoa(
	codigo int primary key auto_increment,
    nome varchar(100) not null,
    cpf varchar(11) default '00000000000'
    );
desc cidade;

alter table cidade
add column codigoCidade int not null;

alter table cidade
change codigoCidade codigoEstado int not null;

alter table cidade
add constraint fk_estado foreign key(codigoEstado) references estado(codigo);

desc pessoa;

alter table pessoa
add column codigoCidade int not null;

alter table pessoa
add constraint fk_cidade foreign key(codigoCidade) references cidade(codigo);

#Comandos DML
#Inclusão De Dados - INSERT
#Atualização De Dados - UPDATE
#Exclusão De Dados - DELETE
#Consulta De Dados - SELECT

select * from estado;#mostra a tabela mas nao para modificar os dados e sim as as informaçoes que seram postas '*' mostrar toda a tabela mas se pode colocar qualquer outro item que tem na tabela
insert into estado(codigo,nome,sigla) values('2','Santa Catarina','RS');#comando para botar as informaçoes na tabela nao o tipo de informaçao
insert into estado(codigo,nome,sigla) values('33','33','33');#testando algo
insert into estado(nome,sigla) values('Parana','PR');#por o codigo ser auto_incremente nao e necessario por no insert mas ele vai colocar um apos o outro seguindo uma ordem mas se eu mesmo colocar um numero ele vai seguir apartir dele 
