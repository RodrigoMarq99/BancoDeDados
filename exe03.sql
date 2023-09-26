CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int NOT NULL,
sexo varchar(10) NOT NULL,
mensalidade decimal(15,2) NOT NULL,
entrada date NOT NULL,
cidadeNasc varchar(50),
nota decimal(4,2),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome,idade,sexo,mensalidade,entrada,cidadeNasc,nota) VALUES("Ana",16,"Feminino",999.99,'2022-01-23',"Santos",8.75);
INSERT INTO tb_alunos(nome,idade,sexo,mensalidade,entrada,cidadeNasc,nota) VALUES("Paula",16,"Feminino",1099.99,'2022-01-23',"Praia Grande",9.75);
INSERT INTO tb_alunos(nome,idade,sexo,mensalidade,entrada,cidadeNasc,nota) VALUES("Maria",17,"Feminino",999.99,'2021-01-23',"Santos",9.95);
INSERT INTO tb_alunos(nome,idade,sexo,mensalidade,entrada,cidadeNasc,nota) VALUES("Ester",16,"Feminino",1099.99,'2022-01-23',"Santos",4.75);
INSERT INTO tb_alunos(nome,idade,sexo,mensalidade,entrada,cidadeNasc,nota) VALUES("Pedro",16,"Masculino",999.99,'2022-01-23',"Santos",7.75);
INSERT INTO tb_alunos(nome,idade,sexo,mensalidade,entrada,cidadeNasc,nota) VALUES("José",17,"Masculino",1099.99,'2021-01-23',"Praia Grande",6.55);
INSERT INTO tb_alunos(nome,idade,sexo,mensalidade,entrada,cidadeNasc,nota) VALUES("Rodrigo",16,"Masculino",999.99,'2022-01-23',"Santos",5.75);
INSERT INTO tb_alunos(nome,idade,sexo,mensalidade,entrada,cidadeNasc,nota) VALUES("Jorge",17,"Masculino",899.99,'2021-01-23',"São Paulo",9.85);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota <= 7;

UPDATE tb_alunos SET nota = 10 WHERE id = 3;