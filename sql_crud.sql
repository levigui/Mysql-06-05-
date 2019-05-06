use senai;

create table aluno01( 

id integer primary key auto_increment,
nome text,
email text,
nota1 real,
nota2 real

);




insert into aluno01 values (null,"cacildo","cac@gmail.com",4.6,7.8);


insert into aluno01 (nome,nota1,nota2) 
values("ronilson",4.7,5.6);

delete from aluno01 where email = "gil@hotmail.com";

select * from aluno01;

insert into aluno01 values (3,"gilmara","gil@hotmail.com",9.8,7.8);

select * from aluno01;

select * from aluno01 where email is null;
update aluno01 set email = "rooooni@lol.com" where id =3;
select * from aluno01;
insert into aluno values (5,"marilson",null,8,6);
select * from aluno01;
delete from aluno where id= 5;
insert into aluno01 values (5,"marilson",null,8,6);
select * from aluno01;


select nome 
AS NOME,
nota1 AS 'NOTA 1',
nota2 AS 'NOTA 2',
round((nota1+nota2)/2,1) AS MEDIA
from aluno01;

select * from aluno01 order by nome; 

select nome 
AS NOME,
nota1 AS 'NOTA 1',
nota2 AS 'NOTA 2',
round((nota1+nota2)/2,1) AS MEDIA
from aluno01 order by MEDIA desc;


delete from aluno01 where id= 1;

select * from aluno01;

select nome 
AS NOME,
round((nota1+nota2)/2,1) AS MEDIA
from aluno01 order by MEDIA desc limit 1;

#alterando uma tabela para adicionar uma nova coluna de email

alter table aluno01 add column email01 text;
select * from aluno01;