CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255),
ativo BOOLEAN,
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco INT,
qtProduto INT,
PRIMARY KEY (id),
categoria_id BIGiNT,
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

INSERT INTO tb_categoria(descricao,ativo) VALUE("fruta",false);
INSERT INTO tb_produtos(nome,preco,qtProduto,categoria_id) VALUE("brócolis",8,15,2);


SELECT * FROM tb_produtos;
SELECT * FROM tb_categoria;
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id WHERE preco >50;
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id WHERE nome LIKE "%a%";
UPDATE tb_produtos SET nome ="melancia" WHERE id= 1;

