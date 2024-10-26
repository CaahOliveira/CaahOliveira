create database hortfrutti;
use hortfrutti;

create table produto (
id_prod int (5) not null auto_increment primary key,
mn_prod varchar (25) not null, 
prc_prod decimal (5,2) not null,
dtv_prod date not null,
qual_prod enum ('s','i')
);
desc produto;
select * from produto;

insert into produto
values 
(default, 'banana', '30.00', '2024-09-30', 's');

select * from produto;
insert into produto
values
(default, 'tomate','12.00','2024-09-23','s'),
(default, 'pera','7.00','2024-09-23','s'),
(default,'pitaya','10.00','2024-09-23','s'),
(default,'melancia','20.00','2024-09-23','s');
 
 create table fornecedor(
 id_forn int (6) not null auto_increment primary key,
 name_forn varchar (30) not null,
 id_cnpj int (14) not null,
 email_forn varchar (30) not null,
 tele_forn int (14) not null
 );
 
select * from fornecedor;
insert into fornecedor
values
(default, 'Parmata','89940878029100','2024-09-23'),
(default, 'Qualy','10510342000105','2024-09-23'),
(default, 'Ovo ldta','05346800000182','2024-09-23');

 
 create table pedido(
 
 id_ped int (6) not null auto_increment primary key,
 cliente_ped varchar (30) not null,
 mesa_ped decimal (10) not null,
 telef_ped int (14) not null,
 dtv_ped date not null
 );

select * from pedido;
insert into pedido
values
(default, 'Ca','',
 
 create table funcionario(
 
 id_fun int (5) not null auto_increment primary key,
 nm_fun varchar (25) not null, 
 salario_fun decimal (5,2) not null,
 id_cpf int (11) not null,
 cargo_fun varchar (25) not null
 );
 
 select *from funcionario;

create table estoque(

id_est int (40) not null auto_increment primary key,
entrada_est decimal (25) not null,
saida_est decimal (50) not null,
funcionario_est varchar (30) not null,
qual_est enum ('s','i')

);
 
 select * from estoque;
 
 create table cliente(
 
 id_clien int (30) not null auto_increment primary key,
 nm_clien varchar (25) not null, 
 id_cpf  int (11) not null,
 tele_clien int (14) not null,
 pga_clien decimal (25) not null
 
 );
 
 select * from cliente;
 
 create table pagamento(
 
 id_pag int (30) not null auto_increment primary key,
 dtv_data date not null,
 dinheiro_pag decimal (20) not null,
 avista_pag decimal (20) not null,
 credito_pag decimal (40) not null
 );
 
 select * from pagamento;
 
 


 
 
 

