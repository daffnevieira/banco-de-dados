CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(7,2) NOT NULL,
    quantidade INT NOT NULL,
    descricao TEXT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES 
('Ferramentas', 'Ferramentas manuais e elétricas para construção.'),
('Hidráulica', 'Produtos para sistemas hidráulicos e encanamentos.'),
('Elétrica', 'Materiais elétricos para instalação e manutenção.'),
('Tinta e Pintura', 'Tintas, pincéis e acessórios para pintura.'),
('Acabamento', 'Materiais de acabamento, como pisos e revestimentos.');

INSERT INTO tb_produtos (nome_produto, preco, quantidade, descricao, id_categoria)
VALUES
('Martelo', 35.00, 50, 'Martelo com cabo de madeira.', 1),
('Chave de Fenda', 15.00, 100, 'Chave de fenda de aço.', 1),
('Tubo PVC 50mm', 75.00, 200, 'Tubo de PVC para esgoto.', 2),
('Fita Isolante', 5.50, 300, 'Fita isolante de alta durabilidade.', 3),
('Lâmpada LED 9W', 12.00, 150, 'Lâmpada LED de 9 watts.', 3),
('Tinta Látex 18L', 120.00, 30, 'Tinta látex branca para paredes.', 4),
('Rejunte Cinza', 20.00, 80, 'Rejunte para cerâmica cor cinza.', 5),
('Piso Cerâmico 60x60', 140.00, 40, 'Piso cerâmico de alta resistência.', 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.preco, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome_produto, p.preco, c.nome_categoria 
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Hidráulica';
