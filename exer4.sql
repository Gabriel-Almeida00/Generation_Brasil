CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
estoque INT,
PRIMARY KEY(id)
);
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
valor DECIMAL,
material VARCHAR(255),
cor VARCHAR(255),
PRIMARY KEY(id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias(categoria,estoque) VALUE ("tintas",1000);
INSERT INTO tb_produtos(nome,valor,material,cor,categoria_id) VALUE ("tinta acrílica",36.00,"solventes e pigmentos","azul",4);
SELECT * FROM tb_produtos WHERE  valor < 100;
SELECT * FROM tb_produtos WHERE valor > 70 AND valor < 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE categoria_id = 2;



