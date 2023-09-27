CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint AUTO_INCREMENT,
	tipo varchar(30) NOT NULL,
    peso varchar(20) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    ataque int NOT NULL,
    tribo varchar(255) NOT NULL,
    defesa int NOT NULL,
    personagens_id bigint NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (personagens_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(tipo,peso) VALUES("Guerreiro","Pesado");
INSERT INTO tb_classes(tipo,peso) VALUES("Guerreiro","Leve");
INSERT INTO tb_classes(tipo,peso) VALUES("Mago","Pesado");
INSERT INTO tb_classes(tipo,peso) VALUES("Mago","Leve");
INSERT INTO tb_classes(tipo,peso) VALUES("Versátil","Pesado");
INSERT INTO tb_classes(tipo,peso) VALUES("Versátil","Leve");

INSERT INTO tb_personagens(nome,ataque,tribo,defesa,personagens_id) VALUES("Breigo",8800,"Taij",9500,1);
INSERT INTO tb_personagens(nome,ataque,tribo,defesa,personagens_id) VALUES("Breiygh",7800,"Yersh",7700,6);
INSERT INTO tb_personagens(nome,ataque,tribo,defesa,personagens_id) VALUES("Creisht",6500,"Hyshin",8900,2);
INSERT INTO tb_personagens(nome,ataque,tribo,defesa,personagens_id) VALUES("Vreima",3700,"Hyshin",7090,2);
INSERT INTO tb_personagens(nome,ataque,tribo,defesa,personagens_id) VALUES("Sheig",9800,"Taij",1500,3);
INSERT INTO tb_personagens(nome,ataque,tribo,defesa,personagens_id) VALUES("Dreime",5040,"Yersh",1500,3);
INSERT INTO tb_personagens(nome,ataque,tribo,defesa,personagens_id) VALUES("Anamsh",4900,"Shin",2500,4);
INSERT INTO tb_personagens(nome,ataque,tribo,defesa,personagens_id) VALUES("Myigo",8000,"Taij",1500,5);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.personagens_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.personagens_id WHERE tipo = "Guerreiro";