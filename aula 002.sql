#criando meu banco de dados
#lembrete importante ";" deve ser sempre usado no final para entende que acabou um comando e que nem o "pare" no portugol
create database aula_2108;#"create" = a criar algo nesse caso por causa do "database" ele cria um banco de dados
use aula_2108;#use e para usar o banco de dados especifico deve sempre ser ativado quando se abrir o mysql
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
alter table categoria #"alter" comando para fazer uma alteraçao em algo
change nome nomeCategoria varchar(100) null;#"charge" trocar a coluna e as informaçoes da coluna especifica para aquilo que tu botar
create table pedido_produto(
	idPedido int not null,
    idProduto int not null,
    qtde int not null
);#como criar uma tabela e depois madificar ela para chaves estrangeira
desc pedido_produto;
alter table pedido_produto
add constraint fk_pedido foreign key(idPedido) references pedido(id);#adicionou o informaçao de que idPedido e uma foreign key
alter table pedido_produto#fazendo a alteraçao das duas colunas ao mesmo tempo adicionou o informaçao de que idPedido e uma foreign key
add constraint fk_pedido foreign key(idPedido) references pedido(id),#"," e usado para diferenciar mas nao encerrar o comando fazendo ele fazer varios comandos em um so
add constraint fk_produto foreign key(idProduto) references produto(id);
desc pedido;
alter table pedido
add column idUsuario int not null;#alterando a tabela pedido para adicionar a coluna usuario
create table usuario(
	id int primary key not null auto_increment,
    nome varchar(45) not null
);
alter table pedido
add constraint fk_usuario foreign key(idUsuario) references usuario(id);
#alter table table_name
#drop column column_name;#usa esse comando para excluir uma coluna especifica
alter table pedido_produto
drop column qtde;
alter table pedido_produto
add column coisas int not null;
alter table pedido_produto
change coisas qtde int;
desc pedido_produto;
