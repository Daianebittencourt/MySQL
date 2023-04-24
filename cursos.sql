CREATE DATABASE db_curso_da_minha_vida;

DROP DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
  id_categoria BIGINT NOT NULL AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  descricao_categoria VARCHAR(100),
  PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_cursos (
  id_cursos BIGINT NOT NULL AUTO_INCREMENT,
  nome_cursos VARCHAR(50) NOT NULL,
  descricao_cursos VARCHAR(100),
  valor_cursos DECIMAL(10, 2) NOT NULL,
  carga_horaria BIGINT NOT NULL,
  id_categoria BIGINT NOT NULL,
  PRIMARY KEY (id_cursos),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES 
('Programação', 'tecnologia'),
('Design', 'arte'),
('Marketing', 'marketing'),
('Negócios', 'Administração'),
('Liderança', 'Gestão');

INSERT INTO tb_cursos (nome_cursos, descricao_cursos, valor_cursos, carga_horaria, id_categoria) VALUES
('Java', 'Do zero ao avançado', 102.99, 40, 1),
('Python ', 'Do zero ao avançado, 102.99, 60, 1),
(Design web, 'Curso de Web Design responsivo', 501.99, 50, 2),
('Marketing Digital', 'Curso de Marketing Digital para iniciantes', 100.99, 30, 3),
('Finanças', 'Curso de Finanças para Empreendedores', 99.99, 70, 4),
('Liderança', 'Curso de Liderança', 99.99, 90, 5),
('React ', 'Curso de React ', 89.99, 80, 1),
('Photoshop ', 'Curso de Photoshop Avançado', 1100.99, 50, 2);

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE valor_cursos > 500;

SELECT * FROM tb_cursos WHERE valor_cursos BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome_cursos LIKE '%J%';

SELECT tb_cursos.*, tb_categorias.nome_categoria 
FROM tb_cursos
INNER JOIN tb_categorias 
ON tb_cursos.id_categoria = tb_categorias.id_categoria; 

SELECT tb_cursos.*, tb_categorias.nome_categoria 
FROM tb_cursos 
INNER JOIN tb_categorias 
ON tb_cursos.id_categoria = tb_categorias.id_categoria 
WHERE tb_categorias.nome_categoria = 'Programação';