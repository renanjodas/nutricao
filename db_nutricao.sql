/*Cria um banco de dados*/
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

/*Seleciona todos os registros da tabela*/
select * from t_cliente;

/**Selecionam os dados a partir de uma condição, no caso pela cidade Americana*/
select nome, cidade from t_cliente where cidade = "Americana";

/*Selecionam os dados a partir de uma condição, no caso por cidade Campinas*/
select * from t_cliente where cidade = "Campinas";

/*Seleciona um registro específico, no caso por nome Renata Domingues*/
select * from t_cliente where nome = "Renata Domingues";

/*Selecionam os dados a partir de uma condição, no caso que pesam mais de 80kg*/
select * from t_cliente where peso > 80;

/*Selecionam os dados a partir de uma condição, no caso os que cuja altura é menor de 1.7*/
select * from t_cliente where altura < 1.7;

/*Selecionam os dados a partir de uma condição, no caso os que nasceram em 07/05/1992*/
select * from t_cliente where data_nascimento = "1992-05-07";

/*Selecione os registros a partir de uma condição, com exceção aos que são do estado SP*/
select * from t_cliente where estado != "SP";

/*Selecione os registros a partir de uma condição, no caso em que o estado é diferente de SP*/
select * from t_cliente where estado != "SP";

/*Selecione os registros a partir de uma condição, pessoas de Americana - SP*/
select * from t_cliente where cidade = "Americana" and estado = "SP";

/*Selecione os registros a partir de uma condição, pessoas de Campinas ou do Rio de Janeiro*/
select * from t_cliente where cidade = "Campinas" or cidade = "Rio de Janeiro";

/*Selecione os registros a partir de uma condição, que tem mais de 80kg e 1.8 de altura*/
select * from t_cliente where peso > 80 && altura > 1.8;

/*Selecione os registros a partir de uma condição, que tem mais de 80kg e menos de 1.8 de altura*/
select * from t_cliente where peso > 80 && altura < 1.8;

/*alterando a cidade do código 1 - alterando dados*/
update t_cliente set cidade = "Sumaré" where codigo = 1;

/*Corrigindo a altura de todos os pacientes - alterando dados*/
update t_cliente set altura = 1.5;

/*Excluir o registro do Arnaldo Antunes*/
delete from t_cliente where nome = "Arnaldo Antunes";

/*Excluir o registro do Roberto da Costa*/
delete from t_cliente where nome = "Roberto da Costa";

/*Excluir o registro da Fernanda Souza*/
delete from t_cliente where nome = "Fernanda Souza";

/*Excluir o registro da Franciele Freitas*/
delete from t_cliente where nome = "Franciele Freitas";

/******** Criar nova tabela, com registros de Nutricionistas *******/

create table t_nutricionista(
    codigo int not null auto_increment,
    nome varchar(100),
    especialidade varchar(50),
    cidade varchar(100),
    estado varchar(2),
    primary key (codigo)

);

/*Criar tabela de consultas*/
create table t_consulta(
    codigo_consulta int not null auto_increment,
    data_consulta datetime,
    cliente int not null,       
    nutricionista int not null,
    FOREIGN KEY (cliente) REFERENCES t_cliente (codigo), /*Aplicação chave estrangeira para amarrar o dado da coluna com a tabela cliente*/
    FOREIGN KEY (nutricionista) REFERENCES t_nutricionista (codigo), /*Aplicação chave estrangeira para amarrar o dado da coluna com a tabela nutricionista*/
   PRIMARY KEY (codigo_consulta)
);

/*Inserir Dados da tabela t_nutricionista*/
insert into t_nutricionista(nome , cidade , estado , especialidade) values
    ("Bruce Wayne", "Piracicaba", "SP", "Nutrição Esportiva"),
    ("Sarah Connor", "Campinas", "SP", "Nutrição Esportiva"),
    ("Milene Domingues", "Nova Odessa", "SP", "Nutrição Esportiva"),
    ("Claire R. Clair", "Rio de Janeiro", "RJ", "Reeducação Alimentar"),
    ("Maycon Douglas", "São Paulo", "SP", "Reeducação Alimentar"
);

/*Seleciona todos os registros da tabela*/
select * from t_nutricionista;

/*Seleciona as pessoas da cidade Americana*/
select * from t_nutricionista where cidade = "Americana";

/*Seleciona as pessoas com especialidade em Nutrição Esportiva*/
select * from t_nutricionista where especialidade = "Nutrição Esportiva";

/*Seleciona o registro do Maycon - duas formas: por código ou nome*/
select * from t_nutricionista where nome = "Maycon Douglas";
select * from t_nutricionista where codigo = 5;

/*Seleciona pessoas que não são de São Paulo*/
select * from t_nutricionista where cidade != "SP";

/*Corrigir o nome do Maycon Douglas*/
update t_nutricionista set nome = "Maicon Douglas" where nome = "Maycon Douglas";

/*Abreviar as especialidades*/
update t_nutricionista set especialidade = "NE" where especialidade = "Nutrição Esportiva";

update t_nutricionista set especialidade = "RA" where especialidade = "Reeducação Alimentar";

/*excluir o registro da Milene */
delete from t_nutricionista where nome = "Milene Domingues";

/*Inserir dados na tabela nutricionista*/
insert into t_consulta(data_consulta , cliente , nutricionista) values (
    "2018-10-30", 1 , 1),
    ("2018-10-29", 2 , 2),
    ("2018-10-29", 3 , 2),
    ("2018-10-30", 4 , 3),
    ("2018-10-30", 5 , 5),
    ("2018-10-30", 6 , 1),
    ("2018-10-29", 7 , 1),
    ("2018-10-29", 8 , 2),
    ("2018-10-30", 9 , 3),
    ("2018-10-30", 10 , 1 
);

/*Altere os clientes da Milene para o Maicon*/
update t_consulta set nutricionista = 3 where nutricionista = 5;

/*Exibir dados específicos ligados entre as tabelas e imprimir
select n.nome , con.data_consulta
from t_nutricionista as n, t_consulta as con
where con.nutricionista = n.codigo;
*/
