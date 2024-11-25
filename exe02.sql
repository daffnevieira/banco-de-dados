CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(100) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    ingredientes TEXT NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
('Tradicional', 'Pizzas clássicas com ingredientes tradicionais.'),
('Especial', 'Pizzas com combinações de sabores especiais e ingredientes selecionados.'),
('Doce', 'Pizzas com sabores doces e coberturas açucaradas.'),
('Vegetariana', 'Pizzas com ingredientes vegetais e sem carne.'),
('Gourmet', 'Pizzas refinadas com ingredientes de alta qualidade.');

INSERT INTO tb_pizzas (nome_pizza, preco, ingredientes, tamanho, id_categoria)
VALUES
('Margherita', 40.00, 'Molho de tomate, muçarela, manjericão', 'Média', 1),
('Calabresa', 50.00, 'Muçarela, calabresa, cebola', 'Grande', 1),
('Frango com Catupiry', 55.00, 'Frango desfiado, catupiry, muçarela', 'Grande', 2),
('Quatro Queijos', 60.00, 'Muçarela, provolone, gorgonzola, parmesão', 'Grande', 2),
('Chocolate', 45.00, 'Chocolate ao leite, morangos', 'Média', 3),
('Brigadeiro', 42.00, 'Brigadeiro, granulado', 'Pequena', 3),
('Vegetariana', 52.00, 'Molho de tomate, abobrinha, berinjela, cogumelos', 'Grande', 4),
('Camarão Gourmet', 85.00, 'Muçarela, camarão, molho especial', 'Grande', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.nome_pizza, p.preco, c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome_pizza, p.preco, c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';


