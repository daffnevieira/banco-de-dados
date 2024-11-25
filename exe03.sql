CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    quantidade INT NOT NULL,
    descricao TEXT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
('Medicamentos', 'Produtos farmacêuticos e medicamentos em geral.'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais.'),
('Suplementos', 'Vitaminas, minerais e suplementos alimentares.'),
('Higiene', 'Produtos para higiene pessoal e cuidados diários.'),
('Infantil', 'Produtos destinados ao público infantil.');

INSERT INTO tb_produtos (nome_produto, preco, quantidade, descricao, id_categoria)
VALUES
('Dipirona Sódica', 8.50, 100, 'Analgésico e antitérmico.', 1),
('Vitamina C', 55.00, 50, 'Suplemento alimentar de vitamina C.', 3),
('Shampoo Anticaspa', 32.00, 20, 'Shampoo para controle de caspa.', 2),
('Sabonete Líquido', 18.00, 40, 'Sabonete líquido com fragrância suave.', 4),
('Pomada para Assaduras', 12.00, 30, 'Pomada para prevenção de assaduras.', 5),
('Colágeno Hidrolisado', 60.00, 25, 'Suplemento de colágeno para pele e articulações.', 3),
('Protetor Solar FPS 50', 70.00, 15, 'Protetor solar de alta proteção.', 2),
('Ibuprofeno 600mg', 25.00, 80, 'Analgésico e anti-inflamatório.', 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.preco, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome_produto, p.preco, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';
