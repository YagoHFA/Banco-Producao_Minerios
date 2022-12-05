drop database if  exists Produção;
create database produção;
use produção;

create table Continente(
id int primary key auto_increment,
nome varchar(60) 	not null,
area decimal(12,3),
qtd_vulcão INT
);

create table pais(
id int primary key auto_increment,
nome varchar(60) 	not null,
capital varchar(60),
moeda varchar(60),
idContinente int,
foreign key (idContinente) references Continente(id)
);

create  table minerio(
id int primary key auto_increment,
nome varchar(60) 	not null
);


create table produção(
idPais int,
idMinerio int,
data_produção date,
toneladas long not null,
foreign key (idPais) references Pais(id),
foreign key (idminerio) references minerio(id)
);


insert into Continente values (null, "America", 12000000, 3);
insert into Continente values (null, "Europa", 30000000, 8);
insert into Continente values (null, "Asia", 200000, 9);


insert into Pais values (null, "Brasil", "Brasilia", "Real", 1); -- 1
insert into Pais values (null, "Estados-Unidos", "Washiton D.C", "Dolar", 1); -- 2
insert into Pais values (null, "China", "Pequim", "Renminbi", 3); -- 3
insert into Pais values (null, "Paquistão", "Islamabade", "Renminbi", 2); -- 4
insert into Pais values (null, "Islândia", "Reykjavik", "Renminbi", 3); -- 5
insert into Pais values (null, "Argentina", "Bueno Aires", "Real", 1); -- 6
insert into Pais values (null, "Canada", "Ottawa", "Dolar", 1); -- 7 
insert into Pais values (null, "Inglaterra", "Londres", "Dolar", 1); -- 8
insert into Pais values (null, "França", "Paris", "Dolar", 2); -- 9
insert into Pais values (null, "Alemanha", "Berlim", "Dolar", 2); --  10
insert into Pais values (null, "Japão", "Tokyo", "Renminbi", 3); -- 11
insert into Pais values (null, "Finlandia", "Helsinque", "Dolar", 2); -- 12
insert into Pais values (null, "Cazaquistão", "Astana", "Renminbi", 3); -- 13
insert into Pais values (null, "Quirguistão", "Bishkek", "Renminbi", 3); -- 14
insert into Pais values (null, "Croacia", "Zagrebe", "Dolar", 2); -- 15
insert into Pais values (null, "Espanha", "Madrid", "Dolar", 2); -- 16


insert into minerio values (null, "Bauxita"); -- 1
insert into minerio values (null, "Tungstênio"); -- 2
insert into minerio values (null, "Cobre"); -- 3
insert into minerio values (null, "Ferro"); -- 4
insert into minerio values (null, "Ouro"); -- 5
insert into minerio values (null, "Estanho"); -- 6
insert into minerio values (null, "Silicio"); -- 7
insert into minerio values (null, "Diamante"); -- 8
insert into minerio values (null, "Prata"); -- 9
insert into minerio values (null, "Aluminio"); -- 10
insert into minerio values (null, "Niquel"); -- 11
insert into minerio values (null, "Manganês"); -- 12
insert into minerio values (null, "Níobio"); -- 13
insert into minerio values (null, "Titanio"); -- 14
insert into minerio values (null, "Uranio"); -- 15

insert into Produção values (1, 7, '2010-01-01', 500000);
insert into Produção values (1, 7, '2011-01-01', 500000);
insert into Produção values (1, 7, '2012-01-01', 500000);
insert into Produção values (1, 7, '2013-01-01', 500000);
insert into Produção values (1, 7, '2014-01-01', 500000);
insert into Produção values (1, 7, '2015-01-01', 500000);
insert into Produção values (1, 7, '2016-01-01', 500000);
insert into Produção values (1, 7, '2017-01-01', 500000);
insert into Produção values (1, 7, '2018-01-01', 500000);
insert into Produção values (1, 7, '2019-01-01', 500000);


insert into Produção values (2, 1, '2019-01-01', 500000);
insert into Produção values (7, 2, '2018-01-01', 200000);
insert into Produção values (8, 3, '2011-01-01', 300000);
insert into Produção values (11, 4, '2010-01-01', 400000);
insert into Produção values (14, 5, '2012-01-01', 800000);
insert into Produção values (15, 7, '2015-01-01', 100000);
insert into Produção values (8, 9, '2016-01-01', 300000);
insert into Produção values (7, 10, '2017-01-01', 200000);
insert into Produção values (6, 11, '2018-01-01', 10000);
insert into Produção values (5, 15, '2016-01-01', 500000);
insert into Produção values (4, 14, '2015-01-01', 900000);
insert into Produção values (12, 13, '2002-01-01', 800000);
insert into Produção values (9, 15, '2003-01-01', 700000);
insert into Produção values (10, 14, '2011-01-01', 500000);
insert into Produção values (12, 11, '2012-01-01', 300000);
insert into Produção values (14, 9, '2013-01-01', 400000);
insert into Produção values (15, 4, '2014-01-01', 300000);
insert into Produção values (1, 9, '2018-01-01', 700000);
insert into Produção values (1, 4, '2019-01-01', 800000);
insert into Produção values (7, 6, '2020-01-01', 200000);
insert into Produção values (6, 5, '2021-01-01', 100000);
insert into Produção values (5, 3, '2021-01-01', 800000);
insert into Produção values (4, 2, '2022-01-01', 900000);
insert into Produção values (3, 1, '2019-01-01', 400000);

insert into Produção values (3, 4, '2014-01-01', 700000);
insert into Produção values (3, 7, '2014-01-01', 100000);
insert into Produção values (3, 2, '2014-01-01', 300000);
insert into Produção values (3, 2, '2014-01-01', 200000);
insert into Produção values (3, 1, '2014-01-01', 500000);
insert into Produção values (3, 1, '2014-01-01', 400000);


insert into Produção values (3, 1, '2011-01-01', 400000);
insert into Produção values (5, 1, '2011-01-01', 500000);
insert into Produção values (15, 1, '2011-01-01', 800000);



insert into Produção values (15, 8, '2012-01-01', 400000);
insert into Produção values (1, 8, '2012-01-01', 700000);
insert into Produção values (11, 8, '2012-01-01', 600000);
insert into Produção values (12, 8, '2012-01-01', 200000);

insert into Produção values (4, 4, '2019-01-01', 500000);
insert into Produção values (7, 4, '2019-01-01', 200000);
insert into Produção values (15, 4, '2019-01-01', 150000);
insert into Produção values (11, 4, '2019-01-01', 250000);
insert into Produção values (7, 4, '2019-01-01', 2500000);

insert into Produção values (8, 2, '2021-01-01', 700000);
insert into Produção values (1, 2, '2011-01-01', 900000);
insert into Produção values (2, 5, '2021-01-01', 600000);
insert into Produção values (16, 5, '2014-01-01', 300000);

insert into Produção values (3, 5, '2018-01-01', 1400000);
insert into Produção values (6, 7, '2018-01-01', 300000);
insert into Produção values (7, 8, '2018-01-01', 400000);
insert into Produção values (2, 9, '2018-01-01', 600000);

-- 1 - Um relatório que mostra todos os países de um continente, informando o nome do país, sua capital e moeda oficial.
/* select pais.nome, capital, moeda from pais
join Produção on pais.id = Produção.idPais
where idContinente = 3
group  by pais.nome */

-- 2 - O total de silício produzido na década de 2010 de cada país.
/* select pais.nome, minerio.nome, sum(toneladas) from pais
join Produção on pais.id = Produção.idPais
join Minerio on minerio.id = produção.idMinerio
where Minerio.id = 7 and data_produção between '2010-01-01' and '2019-01-01'
group  by pais.nome */

-- 3 - Todos os países que em 2019 registraram produção de ferro entre 2000000 e 5000000 de toneladas.
/* select pais.nome, minerio.nome, toneladas from pais
join Produção on pais.id = Produção.idPais
join Minerio on minerio.id = produção.idMinerio
where Minerio.id = 4 and data_produção = '2019-01-01' and toneladas between 200000 and 500000
group  by pais.nome */ 

-- 4 - Todos os continentes informando seu nome, área e quantidade vulcões ativos.
/* select nome, area, qtd_vulcão from Continente */

-- 5 - O pais com maior produção de bauxita em 2011.
 /* select pais.nome, minerio.nome, toneladas from pais
join Produção on pais.id = Produção.idPais
join Minerio on minerio.id = produção.idMinerio
where toneladas in (select max(toneladas) from produção where Minerio.id = 1 and data_produção = '2011-01-01')
 */
 
 -- 6 - A média mundial de produção de diamante em 2012.
/* select minerio.nome, avg(toneladas) from pais
join produção on pais.id = Produção.idPais
join Minerio on minerio.id = produção.idMinerio
where Minerio.id = 8 and data_produção = '2012-01-01'
*/

-- 7 - O minério com maior produção em 2018
/*
select minerio.nome,sum(toneladas) from produção 
join Minerio on minerio.id = produção.idMinerio
where data_produção = '2018-01-01'
group  by Minerio.nome 
order by sum(toneladas) desc
limit 1
*/

-- 8 - A média de produção de cada minério em 2014.
/* select minerio.nome, avg(toneladas) from pais
join produção on pais.id = Produção.idPais
join Minerio on minerio.id = produção.idMinerio
where data_produção = '2014-01-01'
group by  Minerio.nome
*/

-- 9 - Todos os países que o nome termina com 'istão' ou 'lândia'.
/* select nome from pais where nome like '%istão' or nome like '%landia' */


-- 10 - Todos os países que produzem ouro e tungstênio no ano passado bem como as quantidades.
 /* select pais.nome, Minerio.nome, toneladas from pais
join produção on pais.id = Produção.idPais
join Minerio on minerio.id = produção.idMinerio
where Minerio.id = 5 and year(data_produção) = year(now()) - 1 or Minerio.id = 2 and year(data_produção) = year(now()) - 1
group by pais.nome
*/
