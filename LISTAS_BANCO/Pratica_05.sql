create schema pratica05;

use pratica05;

create table dados_multimidia (
codigo integer auto_increment not null,
nome varchar (30),
tipo varchar (20),
dados longblob,
primary key (codigo)
);

show variables like "secure_file_priv";

insert into dados_multimidia (nome, tipo, dados ) values ('Arthur', 'Foto jpeg' ,'C:\wamp64\tmp\peixe.jpg');
insert into dados_multimidia (nome, tipo, dados ) values ('Arthur', 'Foto jpeg' ,'C:\wamp64\tmp\tubarao.jpg');
insert into dados_multimidia (nome, tipo, dados ) values ('Arthur', 'Foto jpeg' ,'C:\wamp64\tmp\quadrado.jpg');

select dados into outfile 'C:\\wamp64\\tmp\\peixe.jpg' from dados_multimidia where codigo = 1;
select dados into outfile 'C:\\wamp64\\tmp\\tubarao1.jpg' from dados_multimidia where codigo = 2;
select dados into outfile 'C:\\wamp64\\tmp\\quadrado1.jpg' from dados_multimidia where codigo = 3;

select * from dados_multimidia;


select dados into dumpfile 'C:\\wamp64\\tmp\\imagem_export.jpg' from dados_multimidia where codigo = 1;
select dados into dumpfile 'C:\\wamp64\\tmp\\imagem_export1.jpg' from dados_multimidia where codigo = 2;
select dados into dumpfile 'C:\\wamp64\\tmp\\imagem_export2jpg' from dados_multimidia where codigo = 3;