#comentario No MySQL Workbench
#Aula de criação e Manipulação de Banco De Dados
#06/05/2019
#
#Revisão SQL Básico Ultilizando o Khan Academy
#https://pt.khanacademy.org/computing/computer-programming/sql/sql-basics/pc/challenge-book-list-database
#Prof. Tarcisio Nunes (@tarcnux)
################################################################

#Observação! Apos cada linha de comando, para ser 
# execultado pressionar  CTRL + Enter

#criando Base de dados

create database senai;
use senai;

drop database test;

#criando uma tabela
# e nesscesario saber o nome da tabela
#e os tipos dos campos



create table aluno(
   id int primary key, 
   nome varchar(40),
   nota1 decimal(4,2),
   nota2 decimal(4,2),
   media decimal(4,2)
);

insert into aluno(id,nome,nota1,nota2,media)
values(1,"Teobaldo Anastacio",7.8,8.5,(7.8+8.5)/2); 
select * from aluno;


insert into aluno(id,nome,nota1,nota2,media)
values(2,"Julio Becker",9.5,8.5,(9.5+8.5)/2); 


insert into aluno values
(3,"Estevão Daniel",3.5,4.0,(3.5+4.0)/2);
insert into aluno values
(4,"Guilherme Camargo",6.0,7.5,(6.0+7.5)/2 );


select * from aluno;


delete from aluno where id =4;
insert into aluno values
(4,"Guilherme Camargo",8.0,7.5,(8.0+7.5)/2 );
select * from aluno;


alter table aluno add column email text;

select
 * from aluno;

update aluno set email = "Tel@joca.com" where id = 1;

update aluno set email = "jud2@gmali.com" where id = 2;
update aluno set email = "DAnialevingador@bol.com" where id = 3;
update aluno set email = "guilevicamargo@gmail.com" where id = 4;


update aluno set nota2 = 10 where id= 4 ;
update aluno set media = (10+8)/2 where id =4;


alter table aluno drop column media;

select* from aluno;

select  round((nota1+nota2)/2,1) AS MEDIA, nome AS NOME from aluno order by MEDIA DESC;