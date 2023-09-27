CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT,
	tipo varchar(30) NOT NULL,
    tamanho varchar(20) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    valor decimal(5,2) NOT NULL,
    oregano boolean NOT NULL,
    pimenta boolean NOT NULL,
    pizzas_id bigint NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (pizzas_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,tamanho) VALUES("Normal","Grande");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Vegana","Grande");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Normal","Média");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Vegana","Média");

INSERT INTO tb_pizzas(nome,valor,oregano,pimenta,pizzas_id) VALUES("Queijo",68.00,true,false,2);
INSERT INTO tb_pizzas(nome,valor,oregano,pimenta,pizzas_id) VALUES("Queijo",65.00,true,true,1);
INSERT INTO tb_pizzas(nome,valor,oregano,pimenta,pizzas_id) VALUES("Carne",42.00,true,true,3);
INSERT INTO tb_pizzas(nome,valor,oregano,pimenta,pizzas_id) VALUES("Soja",50.00,true,true,4);
INSERT INTO tb_pizzas(nome,valor,oregano,pimenta,pizzas_id) VALUES("Frango",68.00,true,false,3);
INSERT INTO tb_pizzas(nome,valor,oregano,pimenta,pizzas_id) VALUES("Queijo",42.00,true,false,3);
INSERT INTO tb_pizzas(nome,valor,oregano,pimenta,pizzas_id) VALUES("Queijo com milho",68.00,true,false,2);
INSERT INTO tb_pizzas(nome,valor,oregano,pimenta,pizzas_id) VALUES("Calabresa",68.00,false,false,1);

SELECT id,nome,valor,oregano,pimenta FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.pizzas_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.pizzas_id WHERE tipo = "Normal";