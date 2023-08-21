#criando meu banco de dados
#lembrete importante ";" deve ser sempre usado no final para entende que acabou um comando e que nem o "pare" no portugol
create database aula_2108;#"create" = a criar algo nesse caso por causa do "database" ele cria um banco de dados
use aula_2108;#use e para usar o banco de dados especifico
#"drop" database aula_2108; e o comando para deletar algo nesse caso e para apagar todo um banco de dados nunca usar esse comando e posso nunca ter acesso a ele em uma empresa
create table cliente(
	id int not null auto_increment,
    primary key(id)
);	#"table" = tabela nesse caso foi criado uma tabela e tudo que estiver dentro dos parentes sao as especificaçoes da tabela
	#"," e usado para cada vez que tiver mais colunas em uma tabela e na ultima coluna no se poe","
#drop table cliente; comando para excluir a tabela
create table clientesor(
	id int primary key not null auto_increment,
    nome varchar(225) not null,
    idade int null unique
);
#drop table clientesor;
#"default" e usado para se caso o cliente nao de a informacao ele vai colacar a informacao que eu escolher automaticamente para aquilo que e pedido naquela linha
#"unique" usado para definir que nao se pode repetir a mesma informacao na mesma coluna ex:cpf pois nao existem pessoas com o mesmo cpf
desc clientesor;#"desc" = descrever e mostra uma tabelhinha com as descricoes da tabela escolhida nao e necessario para criar so para mostrar e se achar
create table categoria(
	id int primary key not null auto_increment,
    nome varchar(45) not null
);
desc categoria;
create table produto(
	id int primary key not null auto_increment,
    nome varchar(45) not null,
    preco float(10,2),
    idCategoria int not null,
    foreign key(idCategoria) references categoria(id)#criaçao de uma chave estrangeira
);
desc produto;
create table pedido(
	id int primary key not null auto_increment,
    numero int not null unique,
    dataPedido datetime null,
    idCliente int not null,
    foreign key(idCliente) references clientesor(id)
);
desc pedido