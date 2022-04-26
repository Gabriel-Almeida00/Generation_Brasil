CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(255),
especial VARCHAR(255),
PRIMARY KEY(id)
);
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
ataque INT,
defesa INT,
vida INT,
PRIMARY KEY (id),
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
INSERT INTO tb_classes(classe,especial)VALUE("paladino","barreira de luz");
INSERT INTO tb_personagens(nome,ataque,defesa,vida,classe_id) VALUE ("jervis",2900,1800,4200,3);
SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id ;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tb_personagens.classe_id = 2;

