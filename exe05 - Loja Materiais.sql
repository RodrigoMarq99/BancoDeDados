CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT,
	tipo varchar(30) NOT NULL,
    disponibilidade boolean NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    valor decimal(5,2) NOT NULL,
    tipo varchar(255) NOT NULL,
    entrada date NOT NULL,
    produtos_id bigint NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (produtos_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Pronto",true);
INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Pronto",false);
INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Construção",true);
INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Construção",false);
INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Decoração",true);

INSERT INTO tb_produtos(nome,valor,tipo,entrada,produtos_id) VALUES("Cimento",100,"Comum",'2022-03-22',3);
INSERT INTO tb_produtos(nome,valor,tipo,entrada,produtos_id) VALUES("Cimento",130,"Premium",'2022-08-22',4);
INSERT INTO tb_produtos(nome,valor,tipo,entrada,produtos_id) VALUES("Massa",80,"Comum",'2022-01-12',3);
INSERT INTO tb_produtos(nome,valor,tipo,entrada,produtos_id) VALUES("Massa",100,"Premium",'2022-02-27',4);
INSERT INTO tb_produtos(nome,valor,tipo,entrada,produtos_id) VALUES("Vaso",77.65,"Comum",'2021-01-02',1);
INSERT INTO tb_produtos(nome,valor,tipo,entrada,produtos_id) VALUES("Vaso",140,"Elétrico",'2023-01-21',2);
INSERT INTO tb_produtos(nome,valor,tipo,entrada,produtos_id) VALUES("Quadro",25.99,"Comum",'2023-08-22',5);
INSERT INTO tb_produtos(nome,valor,tipo,entrada,produtos_id) VALUES("Quadro",45.55,"Dourado",'2023-09-22',5);

SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.produtos_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.produtos_id WHERE disponibilidade = false;