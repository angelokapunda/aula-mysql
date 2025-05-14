
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas com sabores tradicionais e especiais.'),
('Doce', 'Pizzas com sabores doces e sobremesas.'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal.'),
('Vegana', 'Pizzas sem ingredientes de origem animal e derivados.'),
('Especial', 'Pizzas com ingredientes diferenciados e preparo especial.');

INSERT INTO tb_pizzas (nome, valor, tamanho, categoria_id) VALUES
('Mussarela', 40.00, 'Grande', 1),
('Calabresa', 42.00, 'Grande', 1),
('Chocolate', 45.00, 'Média', 2),
('Romeu e Julieta', 50.00, 'Média', 2),
('Palmito', 48.00, 'Grande', 3),
('Cogumelos Trufados', 60.00, 'Grande', 4),
('Frango com Catupiry', 55.00, 'Grande', 1),
('Banana com Canela', 48.00, 'Média', 2);

SELECT nome FROM tb_pizzas WHERE valor > 45.00;

SELECT nome FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT nome FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome, tb_categorias.nome AS categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.nome, tb_categorias.nome AS categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Doce';

