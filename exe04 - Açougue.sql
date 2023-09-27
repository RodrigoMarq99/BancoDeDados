CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT,
	animal varchar(30) NOT NULL,
    origem varchar(30) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    valor decimal(5,2) NOT NULL,
    congelado boolean NOT NULL,
    quantidade int NOT NULL,
    produtos_id bigint NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (produtos_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(animal,origem) VALUES("Bovina","Nacional");
INSERT INTO tb_categorias(animal,origem) VALUES("Boniva","Importada");
INSERT INTO tb_categorias(animal,origem) VALUES("Suína","Nacional");
INSERT INTO tb_categorias(animal,origem) VALUES("Suína","Importada");
INSERT INTO tb_categorias(animal,origem) VALUES("Frango","Nacional");


INSERT INTO tb_produtos(nome,valor,congelado,quantidade,produtos_id) VALUES("Bife",48.00,true,1,1);
INSERT INTO tb_produtos(nome,valor,congelado,quantidade,produtos_id) VALUES("Picanha",88.00,true,1,2);
INSERT INTO tb_produtos(nome,valor,congelado,quantidade,produtos_id) VALUES("Linguiça",38.00,false,5,3);
INSERT INTO tb_produtos(nome,valor,congelado,quantidade,produtos_id) VALUES("Pé",28.00,false,1,4);
INSERT INTO tb_produtos(nome,valor,congelado,quantidade,produtos_id) VALUES("Coração",18.00,true,10,5);
INSERT INTO tb_produtos(nome,valor,congelado,quantidade,produtos_id) VALUES("Filé Mingnon",78.00,true,1,1);
INSERT INTO tb_produtos(nome,valor,congelado,quantidade,produtos_id) VALUES("Fígado",35.00,true,1,2);
INSERT INTO tb_produtos(nome,valor,congelado,quantidade,produtos_id) VALUES("Coração",39.00,true,1,3);


SELECT * FROM tb_produtos WHERE valor < 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.produtos_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.produtos_id WHERE origem = "Importada";