CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT,
	tipo varchar(30) NOT NULL,
    disponibilidade boolean NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    valor decimal(7,2) NOT NULL,
    professor varchar(255) NOT NULL,
    inicio date NOT NULL,
    cursos_id bigint NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (cursos_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Online",true);
INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Online",false);
INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Presencial",true);
INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Presencial",false);
INSERT INTO tb_categorias(tipo,disponibilidade) VALUES("Misto",true);

INSERT INTO tb_cursos(nome,valor,professor,inicio,cursos_id) VALUES("Java",1000,"Jorge",'2023-03-22',1);
INSERT INTO tb_cursos(nome,valor,professor,inicio,cursos_id) VALUES("Java",1000,"Ana",'2023-03-22',2);
INSERT INTO tb_cursos(nome,valor,professor,inicio,cursos_id) VALUES("Python",590,"Carlos",'2023-03-22',1);
INSERT INTO tb_cursos(nome,valor,professor,inicio,cursos_id) VALUES("Python",900,"José",'2023-03-22',3);
INSERT INTO tb_cursos(nome,valor,professor,inicio,cursos_id) VALUES("C++",1100,"Pereira",'2023-02-12',3);
INSERT INTO tb_cursos(nome,valor,professor,inicio,cursos_id) VALUES("C++",1000,"Ana",'2023-03-22',4);
INSERT INTO tb_cursos(nome,valor,professor,inicio,cursos_id) VALUES("HTML/CSS",800,"Sandro",'2023-03-22',5);
INSERT INTO tb_cursos(nome,valor,professor,inicio,cursos_id) VALUES("HTML/CSS",700,"Josefina",'2023-07-20',2);

SELECT * FROM tb_cursos WHERE valor > 500;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.cursos_id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.cursos_id WHERE disponibilidade = true;