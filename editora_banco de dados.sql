create database Editora;
use Editora;

create table editora(
id_edi int (5) not null auto_increment primary key,
nm_edi varchar (25) not null,
email_edi varchar (25) not null,
cnpj_edi varchar (14) not null,
tel_edi int (14) not null,
vendas_edi decimal (5,2) not null
);

select * from editora;
insert into editora
values

(default, 'FrutoProibido', 'fruteirabr@gmail.com','40957377000158','(82)2073-4422','200.000,00'),
(default, 'Rocco','roccoedi@gmail.com','2444703000582','(18) 3362-9394','150.000,00'),
(default, 'Bloomsbury', 'predafumada','4095737000158', '(11) 4762-8794','60.000,00'),
(default, 'Abril', 'abriuedi@gmail.com','02183757001750', '(21) 3762-9114','10.000,00');

create table autor(
id_aut int (5) not null auto_increment primary key,
nm_aut varchar (30) not null,
tell_aut int (14) not null,
email_aut varchar (30) not null,
nacionalidade_aut varchar (50) not null
);

select * from autor;
insert











