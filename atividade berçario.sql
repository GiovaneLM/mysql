create database bercario;
use bercario;

create table especializacoes(
id int primary key auto_increment not null,
especializacao varchar(100)
);

create table medico(
id int primary key auto_increment not null,
nome varchar(125) not null,
crm int(20) not null,
DDD int(3) not null,
telefone int(12) not null,
idEspecializacoes int not null,
foreign key (idEspecializacoes) references especializacoes(id)
);

create table mae(
id int primary key auto_increment not null,
nome varchar(125) not null,
dataNascimento varchar(20) not null,
DDD int(3) not null,
telefone int(12) not null,
endereco varchar(225) not null
);

alter table mae
modify column dataNascimento date not null;

create table bebe(
id int primary key auto_increment not null,
nome varchar(125) not null,
dataNascimento varchar(20) not null,
peso varchar(20) not null,
altura varchar(20) not null,
idMae int not null,
foreign key (idMae) references mae(id),
idMedico int not null,
foreign key (idMedico) references medico(id)
);

desc bebe;

alter table bebe
modify column peso float(10,3) not null;

alter table bebe
modify column altura float(10,3) not null;

insert into especializacoes(especializacao) 
values('Acupuntura'),
('Alergia e imunologia'),
('Anestesiologia'),
('Angiologia'),
('Cardiologia'),
('Cirurgia cardiovascular'),
('Cirurgia da mão'),
('Cirurgia de cabeça e pescoço'),
('Cirurgia do aparelho digestivo'),
('Cirurgia geral'),
('Cirurgia oncológica'),
('Cirurgia pediátrica'),
('Cirurgia plástica'),
('Cirurgia torácica'),
('Cirurgia vascular'),
('Clínica médica'),
('Coloproctologia'),
('Dermatologia'),
('Endocrinologia e metabologia'),
('Endoscopia'),
('Gastroenterologia'),
('Genética médica'),
('Geriatria'),
('Ginecologia e obstetrícia'),
('Hematologia e hemoterapia'),
('Homeopatia'),
('Infectologia'),
('Mastologia'),
('Medicina de emergência'),
('Medicina de família e comunidade'),
('Medicina do trabalho'),
('Medicina de tráfego'),
('Medicina esportiva'),
('Medicina física e reabilitação'),
('Medicina intensiva'),
('Medicina legal e perícia médica'),
('Medicina nuclear'),
('Medicina preventiva e social'),
('Nefrologia'),
('Neurocirurgia'),
('Neurologia'),
('Nutrologia'),
('Oftalmologia'),
('Oncologia clínica'),
('Ortopedia e traumatologia'),
('Otorrinolaringologia'),
('Patologia'),
('Patologia clínica/medicina laboratorial'),
('Pediatria'),
('Pneumologia'),
('Psiquiatria'),
('Radiologia e diagnóstico por imagem'),
('Radioterapia'),
('Reumatologia'),
('Urologia');

insert into medico(nome,crm,DDD,telefone,idEspecializacoes)
values('Paulo José','102030','51','987654321','24'),
('Aline Cunha','203040','51','123456789','24'),
('Antônio Jose alan','304050','51','741258963','24'),
('Araújo','405060','51','951753852','24'),
('João Paulo','506070','51','456321789','3'),
('Viçosa','607080','51','888997744','3');

insert into mae(id,nome,endereco,DDD,telefone,dataNascimento)
values(1,'Adriana','Rua Ponsalino Cardoso,266 - Vila Maria - Alvorada/RS','51','993307083','1970-05-16'),
(2,'Patricia','Rua Áustria,140 Jdm Golden Park Residente,Hortolândia/SP','19','993359553','1973-10-10'),
(3,'Daiane','Rua Guarani,716 - Vila Imbui - Cachoeirinha/RS','51','991320333','1976-04-12');



select * from mae;
#DELETE from mae where id=1;


insert into bebe(nome,dataNascimento,peso,altura,idMae,idMedico)
values('Aléxia','11/12/2001',3.250,49,3,1),
('André','14/04/1998',4.300,49.9,3,5),
('Alicia','08/07/2016',3.100,47,3,2),
('Natalia','15/09/1995',3.610,50,1,4),
('Fernanda','08/04/1993',3.120,49,1,4),
('Francine','16/04/1991',3.750,51,1,6),
('Rafaela','30/09/1996',3.170,49,2,4),
('Gustavo','09/09/2005',3.070,47,2,3);
select*from bebe;
#TRUNCATE TABLE bebe;


/*
1 - nome mae e filhos que nasceram em RS
*/

select b.nome as 'Nome Bebe',m.nome as 'Nome Mae',m.endereco as 'Endereço' 
from bebe b 
inner join mae m on (m.id = b.idMae)
where endereco like '%RS%';


/*
2 -quantidades de bebe, altura media, peso media da daiane
*/

select distinct m.nome as 'Nome Mae',count(b.id)as 'Qtd Bebes',avg(distinct b.altura) as 'Altura Media',avg(distinct b.peso) as 'Peso Media'
from mae m 
inner join bebe b on (b.idMae = m.id)
where m.nome = 'Adriana';

/*
3 -idade atual da maes
*/


select nome as 'Nome',
TIMESTAMPDIFF(YEAR, dataNascimento, CURDATE()) as 'Idade Atual'
from mae;