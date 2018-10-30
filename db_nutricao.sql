/*Cria um banco de dados de raças de cachorros*/
create database DB_NUTRICAO;

/*apresenta todos os bancos existentes*/
show databases;

/*seleciona um banco de dados*/
use DB_NUTRICAO;

/*Cria uma tabela de dados*/
create table t_cliente(
    codigo int not null auto_increment,   /*inicia contagem de numeros inteiros a partir do 1 não nulos, automaticamente (obs. codigo identado - que pertence, esta dentro de algo)*/ 
    nome varchar(100),  /*Coluna que aceita variaveis de caracteres com limite de quantidade entre parenteses*/
    cidade varchar(100),
    estado varchar(2),
    peso float(10,2), /*Coluna aceita numeros reais com limite de casas decimais entre parenteses*/
    altura float(10,2),
    data_nascimento datetime,
    data_ultima_consulta datetime,
    primary key(codigo)  /*Indica chave primaria - necessário*/
);

desc t_cliente;  /*Mostra os registros da tabela*/

/*Inserção dos dados da tabela, por linhas, indicando as respectivas colunas*/
insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Arnaldo Antunes" , "Americana" , "SP" , 90 , 1.8 , "1988/10/20" , "2018/09/24");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Claudemir Silva" , "Campinas" , "SP" , 75 , 1.9 , "1980/11/30" , "2018/09/10");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Roberto da Costa" , "Americana" , "SP" , 92 , 1.7 , "1986/08/05" , "2018/10/05");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Mônica Silva" , "Rio de Janeiro" , "RJ" , 78 , 1.75 , "1990/05/20" , "2018/10/17");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Renata Domingues" , "Ouro Preto" , "MG" , 60 , 1.63 , "1980/01/21" , "2018/09/20");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Cleide Souza" , "Campinas" , "SP" , 62 , 1.5 , "1991/10/22" , "2018/10/30");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Fernanda Souza" , "Rio de Janeiro" , "RJ" , 75 , 1.75 , "1992/05/10" , "2018/09/24");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Fernando Souza" , "Campinas" , "SP" , 80 , 1.9 , "1992/06/15" , "2018/09/10");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Renato Araújo" , "Belo Horizonte" , "MG" , 90 , 1.85 , "1992/01/20" , "2018/10/05");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Franciele Freitas" , "Americana" , "SP" , 70 , 1.68 , "1992/02/18" , "2018/10/17");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nascimento , data_ultima_consulta) values ("Claudemir Rezende" , "Americana" , "SP" , 75 , 1.70 , "1992/05/07" , "2018/09/15");
