create database senai_bp;
use senai_bp;

create table cursos (
cod_curso int,
nome_curso varchar(100),
primary key (cod_curso)
);

create table alunos (
cod_aluno int,
nome varchar(45),
sobrenome varchar(45),
data_nascimento date,
cod_curso int,
primary key (cod_aluno),
foreign key(cod_curso) references cursos(cod_curso)
);


insert into cursos (cod_curso,nome_curso) values (101,'Introdução ao Desenvolvimento de Projetos');
insert into cursos values (102,'Inglês Técnico Aplicado ao Desenvolvimento de Sistemas');
insert into cursos values (103,'Higiene do Alimento; Microbiologia de Alimentos');
insert into cursos values (104,'Ferramentas Digitais de Gestão');
insert into cursos values (105,'Introdução a IOT para manutenção Industrial');
insert into cursos values (106,'Introdução à Indústria 4.0');
insert into cursos values (107,'Administrador de Banco de Dados');


select * from alunos where cod_aluno = 1100;


insert into alunos (cod_aluno,nome,sobrenome,data_nascimento,cod_curso) values (1100,'Luis Miguel','Garcia','2005-06-27',107);


select nome,sobrenome,data_nascimento from alunos where data_nascimento > '1998-12-31' order by data_nascimento asc;


select count(*) from alunos where data_nascimento < '2005-12-31';

select count(*) from cursos;
select * from cursos;

select c.nome_curso,count(a.cod_aluno)as quantidade_alunos 
from cursos c 
inner join alunos a on c.cod_curso = a.cod_curso 
group by c.cod_curso,c.nome_curso;




select concat(a.nome, ' ', a.sobrenome) as nome_completo
from alunos a
inner join cursos c on a.cod_curso = c.cod_curso
where c.nome_curso = 'Introdução à Indústria 4.0';











