create database SalaoBeleza;
use SalaoBeleza;

create table funcionario (
id_fun int (5) not null auto_increment primary key,
nm_fun varchar (25) not null,
email_fun varchar (25) not null,
sal_fun decimal (5,2) not null, 
cargo_fun varchar (25) not null, 
cpf_fun int (11) not null
);

select * from funcionario;
insert into funcionario 
values

(default, 'Juliano','jujuestrela@gmail','2.500.00','Gerente','226.864.160-09' ),
(default,'Robert','paulorobert@gmail', '100.00','Maquiador','867.376.630-36' ),
(default,'Paulo','paulorauaus@gmail', '2.000.00','Cabelereiro','782.476.160-68' );


create table fornecedor (
id_forn int (6) not null auto_increment primary key,
nm_forn varchar (30) not null,
cnpj_forn varchar (14) not null,
email_forn varchar (30) not null,
tel_forn int (14) not null,
razaosocial_ int (8) not null
); 

select * from fornecedor;
insert into fornecedor 
values

(default, 'Coiffer','10456015000112', 'coiifer@gmail.com','(67) 2642-8975', 'DALIE CHEMISTRY INDUSTRIA DE COSMETICOS LTDA'),
(default, 'Risque','20118636000140', 'risque@gmail.com','(95) 2547-7033', 'RISQUE E RABISQUE LTDA ');

create table produto (
id_prod int (5) not null auto_increment primary key,
nm_prod varchar (25) not null,
dtv_prod date not null,
quali_prod enum ('s','i'), 
categoria_prod varchar (25) not null,
marca_prod varchar (25) not null
);
select * from produto;
insert into produto 
values
(default, 'Blindagem dos Fios','2025.08.20', 's','Alisamento' 'Coiffer'),
(default, 'Cafe','2024.12.29', 's','Esmaltaria','Risque' ),
(default, 'Raparador de Pontas','2026.06.26', 's','Hidratação','Coiffer' );

create table cliente (
id_clien int (5) not null auto_increment primary key,
nm_clien varchar (25) not null, 
email_clien varchar (15) not null,
dtv_clien date not null,
qual_clien enum ('s','i'),
att_clien varchar (25) not null
);
select * from cliente;
insert into cliente
values
(default, 'Rita','ritairrita@gmail.com','2024.02.17','i','cabelo'),
(default, 'Martinha','matinrsa@gmail.com','2024.08.12','s','mao e pe'),
(default, 'Raissa','raissasas@gmail.com','2024.08.21','i','alogamento');

create table servico (
id_serv int (5) not null auto_increment primary key,
nm_serv varchar (25) not null,
qual_serv enum ('s','i'),
sta_serv varchar (25) not null, 
tp_serv varchar (30) not null, 
prc_serv decimal (5,2) not null
); 
select * from servico;
insert into servico
values
(default, 'Corte','s', 'ativo','capilar','40.00' ),
(default, 'Progressiva','s', 'ativo','capilar','100.00' ),
(default, 'Alongamento','s', 'ativo','nail design','160.00' );

create table pagamento (
id_pag int (30) not null auto_increment primary key,
dtv_pag date not null, 
clien_pag varchar (20) not null, 
met_pag varchar (50) not null,
ped_pag varchar (48) not null, 
val_pag decimal (20) not null
);
select * from pagamento;
insert into pagamento
values
(default, '2024.02.17','Rita', 'avista','Mão e pé','35.00' ),
(default, '2024.08.12','Martinha', 'credito','cabelo','150.00' ),
(default, '204.08.21','Raissa', 'debito','alongamento','170.00' );

create table utilitarios (
id_util int (30) not null auto_increment primary key,
nm_util varchar (50) not null,
cater_util varchar (50) not null,
desc_util text (50) not null,
anofab_util date not null,
prec_util decimal (5,2) not null
);
select * from utilitarios;
insert into utilitarios
values
(default, 'cadeira de salao','poltrona','acomodação','2024.02.03','677.50'),
(default, 'Lavatorio','cadeira para lavar o cabelo','2019.06.14','842.00'),
(default, 'secador de cabelo','secagem','2015.05.06','339.90');


			