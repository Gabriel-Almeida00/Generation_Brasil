CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
ativo BOOLEAN,
PRIMARY KEY(id)
);
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
valor DECIMAL,
origem VARCHAR(255),
PRIMARY KEY (id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias(tipo,ativo) VALUE ("carne de peixe",true);
INSERT INTO tb_produtos(nome,valor,origem,categoria_id) VALUE ("tilápia",75,"peixes",4);
SELECT * FROM tb_produtos WHERE valor < 50;
SELECT * FROM tb_produtos WHERE valor > 50 AND valor < 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE categoria_id = 3;


