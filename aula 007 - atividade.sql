use atividade;
#drop table estado;
#alter table estado auto_increment=28;
create table estado(
codigo int primary key not null auto_increment,
nome varchar(45) not null,
sigla varchar(2) not null
);

create table cidade(
codigo int primary key not null auto_increment,
nome varchar(45) not null,
ibge varchar(20) not null,
codigoEstado int not null,
foreign key (codigoEstado) references estado(codigo)
);

create table cliente(
codigo int primary key not null auto_increment,
nome varchar(45) not null,
cep varchar(20) null,
endereco varchar(45) not null,
cnpj varchar(20) not null,
ie varchar(20) null,
codigocidade int not null,
foreign key (codigoCidade) references cidade(codigo)
);

create table vendedor(
codigo int primary key not null auto_increment,
nome varchar(45) not null,
salarioFixo float(10,2) not null,
faixaComicao char
);

create table produto(
codigo int primary key not null auto_increment,
UniProduto varchar(6) not null,
produto varchar(45) not null,
ValorUnitario float(10,2) not null
);

create table ItemPedido(
codigo int primary key not null auto_increment,
quantidade int not null,
codigoProduto int not null,
foreign key(codigoProduto) references produto(codigo)
);