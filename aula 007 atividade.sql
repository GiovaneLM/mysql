#create database atividade1; 
use atividade1;

create table cliente(
codigo int primary key not null auto_increment,
nome varchar(45) not null,
endereco varchar(45) not null,
cidade varchar(45) not null,
cep varchar(20) null,
estado varchar(3) not null,
cnpj varchar(20) not null,
ie varchar(20) null
);

create table vendedor(
codigo int primary key not null auto_increment,
nome varchar(45) not null,
salarioFixo float(10,2) not null,
faixaComicao char
);

create table produto(
codigo int primary key not null auto_increment,
uniProduto varchar(6) not null,
produto varchar(45) not null,
valorUnitario float(10,2) not null
);

create table itemPedido(
codigo int primary key not null auto_increment,
quantidade int not null,
codigoProduto int not null,
foreign key(codigoProduto) references produto(codigo),
codigoPedido int not null,
foreign key(codigoPedido) references pedido(codigo)
);

create table pedido(
codigo int primary key not null auto_increment,
PrazoEntrega int not null,
codigoCliente int not null,
foreign key (codigoCliente) references cliente(codigo),
codigoVendedor int not null,
foreign key (codigoVendedor) references vendedor(codigo)
);


#---------------------------------------------
#inserção cliente
#---------------------------------------------

insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(720,'Ana','Rua 17 n 19','Niterói','24358310','RJ','12113231/0001-34','2134');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(870,'Flávio','Av.Pres.Vargas 10','São Paulo','22763931','SP','22534126/9387-9','4631');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj) values(110,'Jorge','Rua Caiapo 13','Curitiba','30078500','PR','14512764/9834-9');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(222,'Lúcia','Rua Itabira 123 Loja 9','Belo Horizonte','22124391','MG','28315213/9348-8','2985');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(830,'Maurício','Av.Paulista 1236 sl 2345','São Paulo','3012683','SP','32816985/7465-6','9343');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(130,'Edmar','Rua da Praia sn','Salvador','30079300','BA','23463284/234-9','7121');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(410,'Rodolfo','Largo da Lapa 27 sobrado','Rio de Janeiro','30078900','RJ','12835128/2346-9','7431');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(20,'Beth','Av.Climério 45','São Paulo','25679300','SP','32485126/7326-8','9280');
insert into cliente(codigo,nome,endereco,cidade,estado,cnpj,ie) values(157,'Paulo','Tv.Moraes c/3','Londrina','PR','32848223/324-2','1923');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj) values(180,'Lívio','Av.Beira Mar n. 1256','Florianópolis','30077500','SC','12736571/2347-4');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(260,'Susana','Rua Lopes Mendes 12','Niterói','30046500','RJ','21763571/232-9','2530');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(290,'Renato','Rua Meireles 123 bl.2 sl.345','São Paulo','30225900','SP','13276571/1231-4','1820');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(390,'Sebastião','Rua da Igreja 10','Uberaba','30438700','MG','32176547/213-3','9071');
insert into cliente(codigo,nome,endereco,cidade,cep,estado,cnpj,ie) values(234,'José','Quadra 3 bl.3 sl.1003','Brasília','22841650','DF','21763576/1232-3','2931');

#-----------------------------------------
#inserção vendedor
#-----------------------------------------

INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (209,'José','1800.00','C');
INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (111,'Carlos','2490.00','A');
INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (11,'João','2780.00','C');
INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (240,'Antônio','9500.00','C');
INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (720,'Felipe','4600.00','A');
INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (213,'Jonas','2300.00','A');
INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (101,'João','2650.00','C');
INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (310,'Josias','870','B');
INSERT INTO vendedor (codigo,nome,salarioFixo,faixaComicao) VALUES (250,'Maurício','2930.00','B');

#-------------------------------------------
#inserçao produto
#-------------------------------------------

INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (25,'Kg','Queijo','0.97');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (31,'BAR','Chocolate','0.87');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (78,'L','Vinho','2');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (22,'M','Linho','0.11');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (30,'SAC','Açúcar','0.3');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (53,'M','Linha','1.8');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (13,'G','Ouro','6.18');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (45,'M','Madeira','0.25');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (87,'M','Cano','1.97');
INSERT INTO produto(codigo,uniProduto,produto,valorUnitario) values (77,'M','Papel','1.05');

#---------------------------------------------
#inserçao pedido
#---------------------------------------------

INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (121,20,410,209);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (97,20,720,101);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (101,15,720,101);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (137,20,720,720);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (148,20,720,101);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (189,15,870,213);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (104,30,110,101);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (203,30,830,250);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (98,20,410,209);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (143,30,20,111);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (105,15,180,240);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (111,20,260,240);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (103,20,260,11);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (91,20,260,11);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (138,20,260,11);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (108,15,290,310);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (119,30,390,250);
INSERT INTO pedido(codigo,PrazoEntrega,codigoCliente,codigoVendedor) values (127,10,410,11);

#-------------------------------------------
#inserçao itemPedido
#--------------------------------------------

INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (121,25,10);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (121,31,35);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (97,77,20);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (101,31,9);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (101,78,18);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (101,13,5);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (98,77,5);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (148,45,8);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (148,31,7);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (148,77,3);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (148,25,10);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (148,78,30);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (104,53,32);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (203,31,6);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (189,78,45);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (143,31,20);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (143,78,10);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (105,78,10);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (111,25,10);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (111,78,70);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (103,53,37);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (91,77,40);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (138,22,10);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (138,77,35);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (138,53,16);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (108,13,17);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (119,77,40);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (119,13,6);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (119,22,10);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (119,53,43);
INSERT INTO itemPedido(codigoPedido,codigoProduto,quantidade) values (137,13,8);