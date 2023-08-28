use sistema2;
desc pessoa;
alter table pessoa
change cpf cpf varchar(11) not null unique;

select*from cidade where nome='porto alegre';
select*from estado where codigo=23;

insert into pessoa(nome,cpf,codigoCidade) values ('GiovaneLM','11111111111',4237);
select*from pessoa;

select * from pessoa;
update pessoa set nome='Giovane Limeira Martins' where codigo = 3; #comando para mudar algo em uma tabela nesse caso o nome que esta no codigo especifico

update pessoa set nome='Giovane Limeira Martins' where cpf=11111111111;

select*from cidade where codigoEstado=23 order by nome desc;#comando "ORDER BY" e o comando para ordernar algo por um topico especifico nesse caso ordenou a tabela por nome em ordem descendent

select*from estado;
update estado set nome='Rio Grande do Sul' where sigla='RS';

select c.nome as 'CIDADE',e.nome as 'ESTADO', e.sigla as 'UF'
from cidade c,estado e
where c.codigoEstado = e.codigo
and e.nome = 'SÃO PAULO';

select c.nome as 'CIDADE',e.nome as 'ESTADO', e.sigla as 'UF'
from cidade c,estado e
where c.codigoEstado = e.codigo
and e.sigla='SP'
order by e.nome,c.nome;	