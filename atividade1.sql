-- exercício 2
CREATE DATABASE db_estoque; -- criando banco de dados
CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
categoria VARCHAR(255),
preco DECIMAL(10,2),
tipoentrega VARCHAR(255),
quantidade INT,

PRIMARY KEY(id)
);
INSERT INTO tb_produtos(nome,categoria,preco,tipoentrega,quantidade) VALUES("Cama","Móveis", 1000.00,"Receba em 2 dias",999);
INSERT INTO tb_produtos(nome,categoria,preco,tipoentrega,quantidade) VALUES("Skate","Esporte", 200.00,"Retira Loja",100);
INSERT INTO tb_produtos(nome,categoria,preco,tipoentrega,quantidade) VALUES("Geladeira","Eletro", 4000.00,"Receba em 2 dias",500);
INSERT INTO tb_produtos(nome,categoria,preco,tipoentrega,quantidade) VALUES("Sofá","Móveis", 1000.00,"Receba em 2 dias",999);
INSERT INTO tb_produtos(nome,categoria,preco,tipoentrega,quantidade) VALUES("Armário","Cameba", 2000.00,"Receba em 2 dias",999);
INSERT INTO tb_produtos(nome,categoria,preco,tipoentrega,quantidade) VALUES("Celular","Eletrônicos", 3000.00,"Retira Loja",999);
INSERT INTO tb_produtos(nome,categoria,preco,tipoentrega,quantidade) VALUES("Secador","Beleza", 100.00,"Receba em 2 dias",999);
INSERT INTO tb_produtos(nome,categoria,preco,tipoentrega,quantidade) VALUES("Notebook","Eletrônicos", 3500.00,"Retira Loja",999);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco < 500;
SELECT * FROM tb_produtos WHERE preco > 500;

UPDATE tb_produtos
SET preco = 250.50
WHERE id=2;
-- exercício 3
CREATE DATABASE db_escola; -- criando banco de dados
CREATE TABLE tb_alunos(

id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
sala INT,
notaum DECIMAL(3,2),
nota2 DECIMAL(3,2),
nota3 DECIMAL(3,2),

PRIMARY KEY(id)
);
INSERT INTO tb_alunos(nome,sala,notaum,nota2,nota3) VALUES("Daiane",1, 9.0,8.0,7.5);
INSERT INTO tb_alunos(nome,sala,notaum,nota2,nota3) VALUES("Rebeca",1, 5.5,7.0,8.5);
INSERT INTO tb_alunos(nome,sala,notaum,nota2,nota3) VALUES("Maurilo",1, 8.5,9.5,9.9);
INSERT INTO tb_alunos(nome,sala,notaum,nota2,nota3) VALUES("João",1, 8.8,5.5,9.9);
INSERT INTO tb_alunos(nome,sala,notaum,nota2,nota3) VALUES("Beatriz",1, 6.5,7.5,8.9);
INSERT INTO tb_alunos(nome,sala,notaum,nota2,nota3) VALUES("Bianca",1, 8.5,6.5,6.9);
INSERT INTO tb_alunos(nome,sala,notaum,nota2,nota3) VALUES("Julia",1,9.5,8.5,9.9);
INSERT INTO tb_alunos(nome,sala,notaum,nota2,nota3) VALUES("Juliana",1,9.5,8.5,9.9);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota1 < 7.0;
SELECT * FROM tb_alunos WHERE nota1 > 7.0;

UPDATE tb_alunos
SET notaum = 9.0
WHERE id=8;