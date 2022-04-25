CREATE DATABASE db_RH;
USE db_RH;
CREATE TABLE Tb_colaboradores(
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255),
    idade INT,
    endereco VARCHAR(255),
    salario DOUBLE,
    
    PRIMARY KEY(id)
    );
   SELECT*FROM tb_colaboradores;
   INSERT INTO tb_colaboradores(nome, idade, endereco, salario)VALUE("gabriel",19,"vila feliz","1800.00");
    INSERT INTO tb_colaboradores(nome, idade, endereco, salario)VALUE("pedro",21,"jardim constante","2580.00");
     INSERT INTO tb_colaboradores(nome, idade, endereco, salario)VALUE("maria",23,"vila justa","1980.00");
      INSERT INTO tb_colaboradores(nome, idade, endereco, salario)VALUE("ana",25,"jardim flores","4600.00");
      
      SELECT * FROM tb_colaboradores WHERE salario >2000.00;
       SELECT * FROM tb_colaboradores WHERE salario < 2000.00;
	 UPDATE tb_colaboradores SET  nome ="laura" WHERE id=5;

CREATE DATABASE db_ecomerce;
USE db_ecomerce;
     CREATE TABLE tb_produtos(
     id BIGINT AUTO_INCREMENT,
     nome VARCHAR(255),
     marca VARCHAR(255),
     cor VARCHAR(255),
     modelo INT,
     PRIMARY KEY (id)
     );
     INSERT INTO tb_produtos(nome, marca, cor, modelo)
     VALUE("camisa","prada","azul",1);
     INSERT INTO tb_produtos(nome, marca, cor, modelo)
     VALUE("calça","gucci","cinza",28);
     INSERT INTO tb_produtos(nome, marca, cor, modelo)
     VALUE("regata","ralph lauren","amarelo",11);
     INSERT INTO tb_produtos(nome, marca, cor, modelo)
     VALUE("bermuda","calvin klein","roxo",8);
     INSERT INTO tb_produtos(nome, marca, cor, modelo)
     VALUE("moletom","louis vuitton","branca",9);
     INSERT INTO tb_produtos(nome, marca, cor, modelo)
     VALUE("meia","gap","verde",3);
     INSERT INTO tb_produtos(nome, marca, cor, modelo)
     VALUE("saia","zara","rosa",5);
     INSERT INTO tb_produtos(nome, marca, cor, modelo)
     VALUE("luva","under armour","vermelho",2);
     SELECT * FROM tb_produtos;
     SELECT * FROM tb_produtos WHERE modelo > 5;
      SELECT * FROM tb_produtos WHERE modelo < 5;
      UPDATE tb_produtos SET cor = "preto" WHERE id = 1;

CREATE DATABASE bd_escola;
USE bd_escola;
CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
telefone VARCHAR(255),
frequencia VARCHAR(255),
nota INT,
PRIMARY KEY(id)
);
INSERT INTO tb_alunos(nome,telefone,frequencia,nota) VALUES("alan","9444888","100%",8);
SELECT * FROM tb_alunos;
SELECT * FROM TB_alunos WHERE nota > 7;
SELECT * FROM TB_alunos WHERE nota < 7;
UPDATE tb_alunos SET nome = "gabriel" WHERE id = 7;
     
     
      
    
  
    
