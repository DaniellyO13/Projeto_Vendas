-- CRIANDO BASE DADOS --

create database bd_venda;
use bd_venda;

create table tb_venda(
cd_venda int primary key auto_increment,
dt_venda date not null,
qt_venda int not null,
vl_venda decimal (10,2));

create table tb_equipe(
cd_equipe int primary key auto_increment,
nm_equipe varchar(45) not null,
nm_regiao varchar(45) not null);

create table tb_vendedor(
cd_vendedor int primary key auto_increment,
nm_vendedor varchar(45) not null,
nr_telefone char(11));

create table tb_produto(
cd_produto int primary key auto_increment,
nm_produto varchar(45) not null,
vl_produto decimal(6,2) not null);

create table tb_cliente(
cd_cliente int primary key auto_increment,
nm_empresa varchar(45),
nr_contato char(11) not null,
nm_contato varchar(45));

-- ACRESCENTANDO ALTERAÇÕES AS TABELAS  --

alter table tb_venda
add nm_local_entrega varchar(50) not null;

alter table tb_venda
add fk_cd_vendedor int,
add foreign key(fk_cd_vendedor) references tb_vendedor(cd_vendedor);

alter table tb_venda
add fk_cd_produto int,
add foreign key(fk_cd_produto) references tb_produto(cd_produto);

alter table tb_venda
add fk_cd_cliente int,
add foreign key(fk_cd_cliente) references tb_cliente(cd_cliente);

alter table tb_vendedor
add fk_cd_equipe int,
add foreign key(fk_cd_equipe) references tb_equipe(cd_equipe);

-- INSERINDO EQUIPES --

insert into tb_equipe(nm_equipe, nm_regiao)
values('Alpha', 'Norte');

insert into tb_equipe(nm_equipe, nm_regiao)
values('Omega', 'Leste');

insert into tb_equipe(nm_equipe, nm_regiao)
values('Beta', 'Sul');

insert into tb_equipe(nm_equipe, nm_regiao)
values('Gama', 'Oeste');

select * from tb_equipe;

-- INSERINDO VENDEDORES NAS EQUIPES --

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Abigail Anderson', '13997815606');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Ellie Willians', '13996563845');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Joel Miller', '11875957845');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Arthur Morgan', '11368954745');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Jhon Marston', '13996681475');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Dutch van der Linde', '12459876684');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Micah Bell', '62997845574');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Charles Smith', '11954147895');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Bill Williamson', '29964457832');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Bonnie MacFarlane', '13987468521');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Hosea Matthews', '13997815606');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Tess Servopoulos', '13997815606');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Loid Forger', '24985746912');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Yor Briar', '11985445685');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Frankie Franklin', '75985436512');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Henry Henderson', '19845895475');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Damian Desmond', '26985778452');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Becky Blackbell', '17987845619');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Fiona Frost', '15985478562');

insert into tb_vendedor(nm_vendedor, nr_telefone)
values ('Anya Briar', '47985612459');

select * from tb_vendedor;
select * from tb_equipe;

-- INSERINDO VENDEDORES NAS EQUIPES --

update tb_vendedor
set fk_cd_equipe = 1
where cd_vendedor between 1 and 5;

update tb_vendedor
set fk_cd_equipe = 2
where cd_vendedor between 6 and 10;

update tb_vendedor
set fk_cd_equipe = 3
where cd_vendedor between 11 and 15;

update tb_vendedor
set fk_cd_equipe = 4
where cd_vendedor between 16 and 20;

-- CADASTRANDO CLIENTES --

insert into tb_cliente (nm_contato, nr_contato) 
values ('Tanjiro Kamado', '19995874912');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Nezuko Kamado', '12974856412');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Zenitsu Agatsuma', '96247815984');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Inosuke Hashibira', '45981574562');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Giyu Tomioka', '15746984236');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Shinobu Kocho', '14947851682');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Kanao Tsuyuri', '12145987456');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Muzan Kibutsuji', '84957562481');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Hotaru Haganezuka', '74957846215');

insert into tb_cliente (nm_contato, nr_contato) 
values ('Rengoku Kyojuro', '94954815387');

-- ATUALIZANDO TABELA CLIENTES --

update tb_cliente 
set nm_empresa = 'TechNova Components' 
where cd_cliente = 1;

update tb_cliente 
set nm_empresa = 'ByteForge Systems' 
where cd_cliente = 2;

update tb_cliente 
set nm_empresa = 'HyperCore Tech' 
where cd_cliente = 3;

update tb_cliente 
set nm_empresa = 'QuantumBits Hardware'
 where cd_cliente = 4;

update tb_cliente 
set nm_empresa = 'NextGen Silicon' 
where cd_cliente = 5;

update tb_cliente 
set nm_empresa = 'NovaChip Solutions' 
where cd_cliente = 6;

update tb_cliente 
set nm_empresa = 'TitanMemory Corp' 
where cd_cliente = 7;

update tb_cliente 
set nm_empresa = 'UltraDrive Technologies' 
where cd_cliente = 8;

update tb_cliente 
set nm_empresa = 'FusionTech Hardware' 
where cd_cliente = 9;

update tb_cliente 
set nm_empresa = 'PrimeCircuit Systems' 
where cd_cliente = 10;

-- CADASTRANDO PRODUTOS --

insert into tb_produto (nm_produto, vl_produto) 
values ('SSD 240GB SATA', 180);

insert into tb_produto (nm_produto, vl_produto) 
values ('SSD 480GB SATA', 280);

insert into tb_produto (nm_produto, vl_produto) 
values ('SSD 1TB NVMe', 550);

insert into tb_produto (nm_produto, vl_produto) 
values ('Memória RAM 8GB DDR4', 150);

insert into tb_produto (nm_produto, vl_produto) 
values ('Memória RAM 16GB DDR4', 280);

insert into tb_produto (nm_produto, vl_produto) 
values ('Memória RAM 32GB DDR5', 650);

insert into tb_produto (nm_produto, vl_produto) 
values ('Placa de Vídeo GTX 1660', 1200);

insert into tb_produto (nm_produto, vl_produto) 
values ('Placa de Vídeo RTX 3060', 1800);

insert into tb_produto (nm_produto, vl_produto) 
values ('Placa de Vídeo RTX 4070', 3500);

insert into tb_produto (nm_produto, vl_produto) 
values ('Placa Mãe B450', 500);

insert into tb_produto (nm_produto, vl_produto) 
values ('Placa Mãe B550', 700);

insert into tb_produto (nm_produto, vl_produto) 
values ('Placa Mãe Z790', 1200);

insert into tb_produto (nm_produto, vl_produto) 
values ('Processador Ryzen 5', 900);

insert into tb_produto (nm_produto, vl_produto) 
values ('Processador Ryzen 7', 1400);

insert into tb_produto (nm_produto, vl_produto) 
values ('Processador Intel i5', 1100);

insert into tb_produto (nm_produto, vl_produto) 
values ('Processador Intel i7', 1800);

insert into tb_produto (nm_produto, vl_produto) 
values ('Monitor 24 polegadas Full HD', 800);

insert into tb_produto (nm_produto, vl_produto) 
values ('Monitor 27 polegadas 144Hz', 1500);

insert into tb_produto (nm_produto, vl_produto) 
values ('Fonte 500W', 300);

insert into tb_produto (nm_produto, vl_produto) 
values ('Fonte 750W 80 Plus', 550);

select * from tb_produto;

-- CADASTRANDO VENDAS --

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-03-25', 1, 2000.00, 'São Paulo', 1, 20, 10);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-03-26', 2, 360.00, 'Rio de Janeiro', 20, 1, 1);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-03-27', 1, 1900.00, 'Belo Horizonte', 2, 19, 9);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-03-28', 2, 560.00, 'Curitiba', 19, 2, 2);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-03-29', 1, 1500.00, 'Porto Alegre', 3, 18, 8);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-03-30', 1, 550.00, 'Salvador', 18, 3, 3);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-03-31', 1, 800.00, 'Fortaleza', 4, 17, 7);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-01', 2, 300.00, 'Recife', 17, 4, 4);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-02', 1, 1800.00, 'Brasília', 5, 16, 6);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-03', 1, 280.00, 'Manaus', 16, 5, 5);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-04', 1, 1100.00, 'Goiânia', 6, 15, 4);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-05', 1, 650.00, 'Campinas', 15, 6, 6);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-06', 1, 1400.00, 'Santos', 7, 14, 3);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-07', 1, 1200.00, 'Florianópolis', 14, 7, 7);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-08', 1, 900.00, 'Vitória', 8, 13, 2);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-09', 1, 1800.00, 'Natal', 13, 8, 8);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-10', 1, 1200.00, 'João Pessoa', 9, 12, 1);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-11', 1, 3500.00, 'Maceió', 12, 9, 9);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-12', 1, 700.00, 'Aracaju', 10, 11, 5);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-13', 1, 500.00, 'Campo Grande', 11, 10, 10);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-14', 2, 3000.00, 'São Paulo', 1, 18, 9);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-15', 2, 1100.00, 'Rio de Janeiro', 20, 3, 2);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-16', 1, 1200.00, 'Belo Horizonte', 5, 7, 10);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-17', 1, 2000.00, 'Curitiba', 16, 20, 1);

insert into tb_venda 
(dt_venda, qt_venda, vl_venda, nm_local_entrega, fk_cd_vendedor, fk_cd_produto, fk_cd_cliente)
values ('2026-04-18', 3, 540.00, 'Porto Alegre', 3, 1, 8);

select * from tb_venda;

-- 6. Exibir todas as vendas executadas pelo vendedor de código 7 e comprador de código 3 --

select cd_venda as Venda, dt_venda as Data, qt_venda as Quantidade, vl_venda as Valor, fk_cd_vendedor as Vendedor, fk_cd_cliente as Cliente
from tb_venda
where fk_cd_vendedor = 7
and fk_cd_cliente = 3;

-- 7. Exibir todos os produtos com valor maior que 1500.00 --

select cd_produto as Código, nm_produto as Produto, vl_produto as Valor
from tb_produto
where vl_produto > 1500.00;

-- 8. Exibir as vendas que foram executadas entre as datas 25/03/2026 à 01/04/2026 --

select cd_venda as Venda, dt_venda as Data, qt_venda as Quantidade, vl_venda as Valor, nm_local_entrega as Local, fk_cd_vendedor as Vendedor, 
fk_cd_cliente as Cliente
from tb_venda
where dt_venda between '2026-03-25' and '2026-04-01';

-- 9. Listar os vendedores da equipe Norte --

select * from tb_equipe;

select nm_vendedor as Vendedor, fk_cd_equipe as Equipe
from tb_vendedor
where fk_cd_equipe = 1;

-- 10. Vendas com quantidade 10, 25, 30 ou 45 --

select cd_venda as Venda, qt_venda as Quantidade, nm_local_entrega as Local, fk_cd_produto as Produto,
 fk_cd_cliente as Cliente
from tb_venda
where qt_venda in (10, 25, 30, 45);

-- 11. Cadastro do 5º cliente --

select cd_cliente as Cliente, nm_contato as Nome, nr_contato as Telefone
from tb_cliente
where cd_cliente = 5;

-- 12. Nome e telefone de vendedores que começam com F --

select nm_vendedor as Nome, nr_telefone as Telefone
from tb_vendedor
where nm_vendedor like 'f%';

-- 13. Nome da empresa cujo contato termina com E --

select nm_empresa as Empresa, nm_contato as Contato, nr_contato as Telefone
from tb_cliente
where nm_contato like '%e';

-- 14. Alterar nome do produto de código 4 para 'Placa de vídeo RTX' --

update tb_produto
set nm_produto = 'Placa de vídeo RTX'
where cd_produto = 4;

select * from tb_produto;