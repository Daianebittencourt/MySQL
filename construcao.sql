DROP DATABASE db_construindo_vidas;

CREATE DATABASE db_construindo_vidas;


USE db_construindo_vidas;


CREATE TABLE tb_categorias (
  id_categoria BIGINT AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  descricao_categoria VARCHAR(255),
  PRIMARY KEY (id_categoria)
);

-- Inserindo 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
  ('Hidráulica', 'encanamentos e sistemas hidráulicos'),
  ('Elétrica', 'instalações elétricas'),
  ('Ferramentas', 'Ferramentas para construção e reforma'),
  ('Acabamento', 'tintas e revestimentos'),
  ('Construção', 'construção');

-- Criando a tabela tb_produtos
CREATE TABLE tb_produtos (
  id_produto BIGINT AUTO_INCREMENT,
  nome_produto VARCHAR(100) NOT NULL,
  descricao_produto VARCHAR(255),
  valor_produto DECIMAL(10, 2) NOT NULL,
  estoque_produto INT NOT NULL,
  id_categoria BIGINT NOT NULL,
  PRIMARY KEY (id_produto),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_produtos (nome_produto, descricao_produto, valor_produto, estoque_produto, id_categoria) VALUES
  ('Chave de Fenda', 'Chave de fenda de tamanho médio', 6.50, 50, 3),
  ('Tinta Preta', 'Tinta para pintura de parede', 120.00, 20, 4),
  ('Prego 15x15', 'Prego para madeira 15x15', 0.25, 100, 5),
  ('Lâmpada LED', 'LED de 20W', 12.00, 30, 2),
  ('Fita Isolante', 'Fita isolante para instalações elétricas', 2.00, 80, 2),
  ('Torquês', 'corte de materiais de construção', 38.00, 15, 3),
  ('Torneira', 'pia de banheiro e cozinha ', 55.00, 10, 1),
  ('Tijolo', 'construção', 1.00, 500, 5);

-- SELECT que retorna todos os produtos cujo valor é maior do que R$ 100,00
SELECT * FROM tb_produtos WHERE valor_produto > 100.00;

-- SELECT que retorna todos os produtos cujo valor está entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE valor_produto BETWEEN 70.00 AND 150.00;

-- SELECT que utiliza o operador LIKE para buscar todos os produtos que possuem a letra "C" no atributo nome_produto
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome_categoria 
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria 
FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria 
WHERE tb_categorias.nome_categoria = 'Ferramentas';
