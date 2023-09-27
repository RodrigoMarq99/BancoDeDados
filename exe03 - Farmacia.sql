CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT,
	tipo varchar(30) NOT NULL,
    quantidade int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    valor decimal(5,2) NOT NULL,
    soluvel boolean NOT NULL,
    resticao boolean NOT NULL,
    produtos_id bigint NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (produtos_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,quantidade) VALUES("Analgésico",8);
INSERT INTO tb_categorias(tipo,quantidade) VALUES("Analgésico",10);
INSERT INTO tb_categorias(tipo,quantidade) VALUES("Analgésico",16);
INSERT INTO tb_categorias(tipo,quantidade) VALUES("Antialérgico",5);
INSERT INTO tb_categorias(tipo,quantidade) VALUES("Antialérgico",10);

INSERT INTO tb_produtos(nome,valor,soluvel,resticao,produtos_id) VALUES("Dipirona",18.00,false,false,1);
INSERT INTO tb_produtos(nome,valor,soluvel,resticao,produtos_id) VALUES("Cura Dor Solúvel",12.00,true,false,1);
INSERT INTO tb_produtos(nome,valor,soluvel,resticao,produtos_id) VALUES("Dipirona Solúvel",20.00,true,false,2);
INSERT INTO tb_produtos(nome,valor,soluvel,resticao,produtos_id) VALUES("Cura Dor",11.00,false,false,2);
INSERT INTO tb_produtos(nome,valor,soluvel,resticao,produtos_id) VALUES("Cura Tudo",68.00,false,true,2);
INSERT INTO tb_produtos(nome,valor,soluvel,resticao,produtos_id) VALUES("Cura Tudo Solúvel",68.00,true,false,3);
INSERT INTO tb_produtos(nome,valor,soluvel,resticao,produtos_id) VALUES("Comum",58.00,false,true,4);
INSERT INTO tb_produtos(nome,valor,soluvel,resticao,produtos_id) VALUES("Premium",68.00,false,true,5);

SELECT id,nome,valor,soluvel,resticao FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.produtos_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.produtos_id WHERE tipo = "Analgésico";