CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE colaboradores (
    id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    data_admissao DATE,
    salario DECIMAL(10, 2)
    
);

INSERT INTO colaboradores (nome, cargo, data_admissao, salario)
VALUES 
('João Almeida', 'Desenvolvedor Back-end', '2021-07-15', 3200.00),
('Mariana Costa', 'Desenvolvedora Front-end', '2021-09-01', 2000.00),
('Rafael Santos', 'Administrador de Redes', '2017-11-25', 3800.00),
('Carla Nunes', 'Analista de Segurança da Informação', '2019-08-10', 4200.00),
('Thiago Moreira', 'Auxiliar de TI', '2022-01-20', 1900.00);

SELECT * FROM colaboradores
WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2000.00
WHERE nome = 'Thiago Moreira';



