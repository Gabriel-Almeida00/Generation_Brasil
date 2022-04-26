CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nivel VARCHAR(255),
duracao VARCHAR(255),
PRIMARY KEY(id)
);
CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
valor DECIMAL,
modalidade VARCHAR(255),
PRIMARY KEY(id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias(nivel,duracao) VALUE ("bootcamp","3 meses");
INSERT INTO tb_cursos(nome,valor,modalidade,categoria_id) VALUE ("Desenvolvimento web",27.00,"EAD",4);
SELECT * FROM tb_cursos WHERE  valor > 500;
SELECT * FROM tb_cursos WHERE valor > 600 AND valor < 1000;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id WHERE categoria_id = 2;



