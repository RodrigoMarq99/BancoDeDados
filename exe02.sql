CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
quantidade int NOT NULL,
cor varchar(20) NOT NULL,
valor decimal(15,2) NOT NULL,
cadastro date NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto,quantidade,cor,valor,cadastro) VALUES("Copo",6,"Verde",34.99,'2023-09-23');
INSERT INTO tb_produtos(produto,quantidade,cor,valor,cadastro) VALUES("Copo",6,"Amarelo",36.99,'2023-09-23');
INSERT INTO tb_produtos(produto,quantidade,cor,valor,cadastro) VALUES("Copo",6,"Azul",33.99,'2023-09-23');
INSERT INTO tb_produtos(produto,quantidade,cor,valor,cadastro) VALUES("Pano de Prato",4,"Branco",13.99,'2023-08-23');
INSERT INTO tb_produtos(produto,quantidade,cor,valor,cadastro) VALUES("Pano de Prato",4,"Bege",15.99,'2023-08-23');
INSERT INTO tb_produtos(produto,quantidade,cor,valor,cadastro) VALUES("Pano de Prato",4,"Rosa",16.99,'2023-08-23');

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE valor > 15;
SELECT * FROM tb_produtos WHERE valor <= 15;

UPDATE tb_produtos SET valor = 37.99 WHERE id = 2;