use giovane008;

create table estudantes(
id int primary key not null auto_increment,
nome varchar(100) not null,
idade int not null
);

create table professor(
id int primary key not null auto_increment,
nome varchar(100) not null,
idade int not null
);


insert into estudantes (nome,idade) 
values ('Fernanda',20),('Maria',19),
('Gabriel',21),('Antônio',23),('Marcos',21),
('Sofia',22),('Laura',18),('Bruna',20);

select * from estudantes;

insert into professor (nome,idade) 
values ('Roberto',40),('Laura',35),('José',38),
('Maria',45),('Antônio',50),('Geralda',32),
('Marcos',45),('Otávio',30);

select * from professor;

select e.id,e.nome,p.id,p.nome
from estudantes as e 
inner join professor as p
on e.nome = p.nome;

select e.id,e.nome,p.id,p.nome
from estudantes as e 
left join professor as p
on e.nome = p.nome;

select e.id,e.nome,p.id,p.nome
from estudantes as e 
right join professor as p
on e.nome = p.nome;

use lojinhaprof1;

select count(*)
from cliente cl
right join cidade cd on cl.codigoCidade = cd.codigo
join estado e on cd.codigoEstado = e.codigo
where e.uf = 'SP'
and cl.nome is null;

select * from estado 
where uf = 'SP';

select count(*) from cidade 
where codigoEstado = 26;

select * from cliente c
where codigoCidade in (select codigo from cidade where codigoEstado = 26);

select * from cidade where codigo = 5341;


select e.idade,e.nome,p.idade,p.nome
from estudantes as e 
cross join professor as p
on e.id = 1 or  p.id = 1;

acesse:
www.w3schools.com/sql/exercise