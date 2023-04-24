CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id_categoria BIGINT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100) NULL,
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos (
    id_produto BIGINT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto VARCHAR(100) NULL,
    preco_produto DECIMAL(8,2) NOT NULL,
    id_categoria BIGINT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Carnes', 'origem animal'),
    ('Aves', 'origem animal'),
    ('Peixes', 'origem animal'),
    ('Frutas', 'origem vegetal'),
    ('Verduras', 'origem vegetal');
    
    INSERT INTO tb_produtos (nome_produto, descricao_produto, preco_produto, id_categoria)
VALUES
    ('Picanha', 'bovino', 60.00, 1),
    ('Frango', 'Ave', 25.00, 2),
    ('Porquinho', 'Peixe', 80.00, 3),
    ('Banana', 'Fruta', 3.50, 4),
    ('Alface', 'Folha', 2.00, 5),
    ('Picanha suína', 'suíno', 45.00, 1),
    ('Linguado', 'Peixe', 70.00, 3),
    ('Morango', 'Fruta', 5.00, 4);
    
SELECT *
FROM tb_produtos
WHERE preco_produto > 60.00;

SELECT *
FROM tb_produtos
WHERE preco_produto BETWEEN 50.00 AND 150.00;

SELECT *
FROM tb_produtos
WHERE nome_produto LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome_categoria 
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria 
FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria 
WHERE tb_categorias.nome_categoria = 'Aves';