CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
pedacos VARCHAR(255),
PRIMARY KEY(id)
);
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255),
valor INT,
brinde VARCHAR(255),
taxa INT,
PRIMARY KEY(id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias (categoria,pedacos) VALUE ("tradicional","8");
INSERT INTO tb_pizzas (sabor,valor,brinde,taxa,categoria_id) VALUE ("suiça",60,"refri 2L",8.00,2);
SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor > 50 AND valor < 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id WHERE categoria_id = 1;

