create database mercantil;
use mercantil;

CREATE TABLE cliente (
cliente_id INT PRIMARY KEY AUTO_INCREMENT,
nome_cli VARCHAR(100) not null,
cpf_cli VARCHAR(11) not null,
data_nascimento date not null,
tell_cli char(11) not null,
email_cli varchar (30) not null 

);
select * from cliente;
insert into cliente
values

(default, 'Juliano','30619535075','1997-03-21','7935363751','vicenta8067@uorak.com'),
(default, 'Ana','69524057042','1993-07-04','8926757073','numseionde@uorak.com');

CREATE TABLE Conta (
    conta_id INT PRIMARY KEY AUTO_INCREMENT,
    nm_conta  varchar (45) not null,
    tipo_conta VARCHAR(50) not null,
    saldo_conta DECIMAL(10, 2) not null,
    data_abertura DATE not null,
    status enum ('a','i')

);
select * from conta;
insert into conta
values

(default, 'Juliano','corrente','0.00','1999-06-24','i'),
(default, 'Ana','poupança','4.00','2024-01-20','a');

CREATE TABLE transacao (
    transacao_id INT PRIMARY KEY AUTO_INCREMENT,
    conta_id INT (8) not null,
    data_transacao DATETIME not null,
    tipo_transacao VARCHAR(50) not null,
    valor DECIMAL(10, 2) not null,
    descricao VARCHAR (255) not null

);
select * from transacao;
insert into transacao
values 

(default, 'Juliano','218595','2023-05-01','ted','200.00','pagamento referente a conta de energia'),
(default, 'Ana','379205','2024-02-27','pix','1.000.00','pagamento referente ao aluguel');

CREATE TABLE Agencia (
id_agencia INT PRIMARY KEY AUTO_INCREMENT,
nm_agencia VARCHAR(100) not null,
tell_agencia CHAR(11) not null,
data_abertura date not null,
cid_agencia varchar (20) not null,
email_agencia varchar (30) not null
);
select * from agencia;
insert into agencia
values
(default, 'Banco Mercantil Minas Gerais','7936184456','1990-07-18','Ourinhos','mercantilminasgerais@conexao.com'),
(default, 'Banco Mercantil Brasilia','51985328423','2005-08-10','Brasilia','mercantildf@conexao.com');

CREATE TABLE Funcionario (
id_fun INT PRIMARY KEY AUTO_INCREMENT,
nm_fun varchar (40) not null,
cargo_fun varchar (45) not null,
dtadmissao_fun date not null,
salario_fun decimal (4,2) not null
);
select * from funcionario;
insert into funcionario
values
(default, 'Janaina Pereira Santos','caixa','2010-09-30','3.500.00'),
(default, 'Claudio Santana Pires','gerente','2005-12-03','5.742.39');

create table emprestimo (
id_emprestimo int primary key  AUTO_INCREMENT,
valor_emp decimal not null,
data_concessao date not null,
data_vecimento date not null,
taxa_juros decimal not null
);
select * from emprestimo;
insert into emprestimo
values
(default, 'Janaina Pereira Santos','30.000.00','2010-11-09','2015-11-09','3.5'),
(default, 'Claudio Santana Pires','5.000.00','2024-06-20','2029-06-20','3.5');

  


