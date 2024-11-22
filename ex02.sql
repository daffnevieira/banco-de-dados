CREATE DATABASE ecommerce_eletronicos;

USE ecommerce_eletronicos;

CREATE TABLE produtos_eletronicos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    quantidade_estoque INT
);

INSERT INTO produtos_eletronicos (nome_produto, categoria, preco, quantidade_estoque)
VALUES 
('Smartphone Galaxy S21', 'Eletrônicos', 3500.00, 50),
('Notebook Dell XPS 13', 'Eletrônicos', 7200.00, 30),
('Smartwatch Apple Watch', 'Eletrônicos', 2600.00, 60),
('TV LG OLED 55"', 'Eletrônicos', 4800.00, 20),
('Fone de Ouvido JBL', 'Eletrônicos', 300.00, 150),
('Teclado Mecânico Gamer', 'Eletrônicos', 600.00, 100),
('Monitor Samsung Curved', 'Eletrônicos', 1500.00, 40),
('Caixa de Som Bluetooth JBL', 'Eletrônicos', 450.00, 90);


SELECT * FROM produtos_eletronicos
WHERE preco > 500;

SELECT * FROM produtos_eletronicos
WHERE preco < 500;

UPDATE produtos_eletronicos
SET preco = 3000.00
WHERE nome_produto = 'Smartphone Galaxy S21';

UPDATE produtos_eletronicos
SET preco = 1300.00
WHERE nome_produto = 'Monitor Samsung Curved';

UPDATE produtos_eletronicos
SET preco = 200.00
WHERE nome_produto = 'Fone de Ouvido JBL';