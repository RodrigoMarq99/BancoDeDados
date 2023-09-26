CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int NOT NULL,
cargo varchar(40) NOT NULL,
salario decimal(10,2) NOT NULL,
contratacao date NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome,idade,cargo,salario,contratacao) VALUES("Jorge Carlos",32,"Porteiro",2300.30,'2021-03-21');
INSERT INTO tb_funcionarios(nome,idade,cargo,salario,contratacao) VALUES("Ana Pera",42,"Jardineira",2100.60,'2021-07-29');
INSERT INTO tb_funcionarios(nome,idade,cargo,salario,contratacao) VALUES("Pedro Anjo",22,"Motorista",2700.30,'2020-01-11');
INSERT INTO tb_funcionarios(nome,idade,cargo,salario,contratacao) VALUES("Ângela Martins",27,"Auxiliar de RH",1900.30,'2023-01-10');
INSERT INTO tb_funcionarios(nome,idade,cargo,salario,contratacao) VALUES("José Ricardo",29,"Faxineiro",1852.70,'2021-11-30');
INSERT INTO tb_funcionarios(nome,idade,cargo,salario,contratacao) VALUES("Roberto Carlos",52,"Gerente",21600.60,'2011-04-08');

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario <= 2000;

UPDATE tb_funcionarios SET salario = 2567.12 WHERE id = 1;