CREATE DATABASE db_rh; -- criando banco de dados
CREATE TABLE tb_colaboradores(

id BIGINT AUTO_INCREMENT, -- criação da coluna de id, indicando que ela só vai aceitar dados do tipo bigint
-- (numeros inteiros até 20 caracteres) passando a propriedade auto-increment, para que o mysql faça 
-- o gerenciamento dos ids
nome VARCHAR(255),
idade INT,
salario DECIMAL(10,2),
cargo VARCHAR(200),

PRIMARY KEY(id)
);
INSERT INTO tb_colaboradores(nome,idade,salario,cargo) VALUES("Jose",20, 5000.00,"Desenvolvedor");

SELECT * FROM tb_colaboradores;

-- comando que trás todos os colaboradores que tiverem o salario menor que dois mil
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- BONUS -  Comando que altera uma coluna da tabela
-- ALTER TABLE tb_colaboradores
-- MODIFY COLUMN salario DECIMAL(10,2);

-- Comando que atualiza um dado da tabela tb_colaboradores de acordo com o id indicado
-- UPDATE tb_colaboradores
-- SET salario = 5001.99
-- WHERE id=2;
