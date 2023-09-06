use lojinhaprof;
select * from estado where uf='RS';
select * from cidade;

select * from cidade where codigoEstado =(select codigo from estado where uf='RS');

select * from cidade where codigoEstado in (select codigo from estado where uf in ('RS','SC'));

select * from cliente where codigoCidade =(select codigo from cidade where nome='São Paulo');


select * from pedido;
update vendedor set nome = 'João II',salario=10000.00,faixaComissao='A' where codigo = 11;

select count(*)QTDE,AVG(prazo) as 'PRAZO MÉDIO'
from pedido where codigoVendedor = 
(select codigo from vendedor where nome='João 2');


create table teste (
id int primary key auto_increment,
idCliente int not null,
idCidade int not null
);

desc teste;
select*from teste;

insert into teste(idCliente,idCidade)
(select c.codigo,cd.codigo 
from cliente c ,cidade cd
where c.codigoCidade =cd.codigo);


select c.nome as 'Cliente',
count(ped.numero) as 'Numero de Pedidos',
sum(pp.qtde*pro.valor) as 'Valor'
from cliente c
join pedido ped on (ped.codigoCliente=c.codigo)
join pedido_produto pp on(pp.numeroPedido=ped.numero)
join produto pro on (pp.codigoProduto=pro.codigo)
group by c.nome
order by Valor desc;