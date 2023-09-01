#-----
#1. Listar todos os produtos com as respectivas descrições, unidades e valores unitários, obtendo o
#seguinte resultado (SELECT simples sem WHERE com especificação de todos os campos):


select p.descricao as 'Descrição',
p.unidade as 'Unidade',p.valor as 'Valor Unitario'
from produto p order by p.descricao;

#-----------------------------
#2. Listar da tabela CLIENTE o CNPJ, o nome do cliente e seu endereço, obtendo o seguinte
#resultado (idem com especificação de parte dos campos): 


select cl.cnpj as 'CNPJ',cl.nome as 'Nome',concat( cl.endereco,' - ',cd.nome,' / ' ,es.nome)as 'Endereço'
from cliente cl
join cidade cd on (cd.codigo = cl.codigoCidade)
join estado es on (es.codigo=cd.codigoEstado)
order by cl.nome asc;

#--------------------------------
#3. Listar todo o conteúdo de vendedor, obtendo o seguinte resultado (SELECT sem a especificação
#de campos – coringa *): 


select * from vendedor ;

#----------------------------------
#4. Problema: Listar o numero do pedido, o código do produto e a quantidade dos itens do pedido
#com a quantidade igual a 35 da tabela item de pedido, obtendo o seguinte resultado (SELECT com WHERE):



select p.descricao as 'Produto',pp.numeroPedido as 'Pedido',pp.qtde as 'QTDE'
from pedido_produto pp
join produto p on(p.codigo = pp.codigoProduto)
where pp.qtde=35;

#----------------------------------
#5. Quais são os clientes que moram em Niterói?


select cl.nome from cliente cl,cidade cd
where cl.codigoCidade=cd.codigo
and cd.nome = 'Niteroi';

#---------------------------------------
#6. Listar os produtos que tenham unidade igual a ‘M’ e valor unitário igual a R$ 1,05 da tabela
#produto, obtendo o seguinte resultado (operadores lógicos): 


select p.descricao,p.unidade,p.valor from produto p
where p.unidade='M'
and p.valor=1.05;

#-------------------------------------
#7. Listar o código e a descrição dos produtos que tenham o valor unitário na faixa de R$ 0,32 até R$
#2,00, obtendo o seguinte resultado (operador between)


select codigo,descricao,valor
from produto
where valor between 0.32 and 2.00
order by valor;

#----------------------------------------
#8. Listar todos os produtos que tenham o seu nome começando por Q, obtendo o seguinte resultado
#operador LIKE, com os coringas _ - um caractere - e % - vários caracteres):


select * from produto p
where p.descricao like 'q%';

#---------------------------------------
#9. Listar os vendedores que não começam por ‘Jo’, , obtendo o seguinte resultado (operador LIKE,
#com os coringas _ - um caractere - e % - vários caracteres): 


select * from vendedor v
where v.nome not like 'Jo%'
order by v.nome;

#--------------------------------------
#10. Listar os vendedores que são da faixa de comissão A e B, obtendo o seguinte resultado
#(operadores IN e um conjunto de valores):


select * from vendedor
where faixaComissao in( 'A', 'B')
order by nome;

#----------------------------------------
#11. Mostrar os clientes que não tenham inscrição estadual, obtendo o seguinte resultado (IS NULL):


select * from cliente cl
where cl.ie is null;

#-------------------------------------------
#12. Mostrar em ordem alfabética a lista de vendedores e seus respectivos salários fixos, obtendo o
#seguinte resultado (ORDER BY [ASC/DESC]): 


select v.nome as 'Funcionario',v.salario as 'Salario Atual',(v.salario *1.0675) as 'Salario Simulado' 
from vendedor v order by v.nome asc;

#--------------------------------------------
#13. Listar os nomes, cidades e estados de todos os clientes, ordenados por estado e cidade de forma
#descendente, obtendo o seguinte resultado (operador ORDER BY com mais de um campo especificado): 

select cl.nome as 'Nomes',es.nome as 'Estados',cd.nome as 'Cidades' 
from cliente cl
join cidade cd on (cd.codigo=cl.codigoCidade)
join estado es on (es.codigo=cd.codigoEstado) 
order by es.nome desc , cd.nome desc;

#------------------------------------
#14. Mostrar a descrição e o valor unitário de todos os produtos que tenham a unidade ‘KG’, em ordem
#de valor unitário ascendente, obtendo o seguinte resultado (ORDER BY): 

select p.descricao as 'Produto',p.valor as 'Valor Unitario'
from produto p
where p.unidade = 'M'
order by p.valor asc;

#--------------------------------------
#15. Mostrar o novo salário fixo dos vendedores, de faixa de comissão ‘C’, calculado com base no
#reajuste de 75% acrescido de R$ 120,00 de bonificação. Ordenar pelo nome do vendedor, obtendo
#o seguinte resultado (coluna calculda): 

select nome as 'Nome Vendedor',((salario*1.75)+120) as 'Novo Salario'
from vendedor
where faixaComissao='C'
order by nome asc;

#---------------------------------------
#16. Mostrar o menor e o maior salários da tabela vendedores, obtendo o seguinte resultado (funções MAX() e MIN()): 

