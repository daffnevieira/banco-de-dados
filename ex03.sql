CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos (
    id_alunos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(10),
    nota DECIMAL(4,2)
);

INSERT INTO alunos (nome, idade, turma, nota)
VALUES 
('Ana Paula', 16, '3A', 10),
('Giulia Ferreira', 15, '2B', 6.0),
('Maria Eduarda Silva', 17, '3A', 9.0),
('Caetano Soares', 14, '1C', 3.5),
('João Costa', 16, '2B', 5.8),
('Beatriz Maria', 17, '3A', 7.2),
('Clara Melo', 14, '1C', 4.5),
('Felipe Alves', 15, '2B', 6.8);

SELECT * FROM alunos
WHERE nota > 7.0;

SELECT * FROM alunos
WHERE nota < 7.0;

UPDATE alunos
SET nota = 7.5
WHERE nome = 'Caetano Soares';

UPDATE alunos
SET nota = nota * 0.9
WHERE idade > 16;


