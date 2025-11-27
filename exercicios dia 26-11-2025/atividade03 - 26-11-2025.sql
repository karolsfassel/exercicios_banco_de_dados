CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante (
    id BIGINT AUTO_INCREMENT,         
    nome VARCHAR(255) NOT NULL,      
    data_nascimento DATE NOT NULL,     
    serie VARCHAR(50) NOT NULL,        
    materia VARCHAR(100) NOT NULL,     
    nota DECIMAL(4,2) NOT NULL,        
    PRIMARY KEY (id)
);

INSERT INTO tb_estudante (nome, data_nascimento, serie, materia, nota)
VALUES
('Ana Souza', '2010-03-15', '5º ano', 'Matemática', 8.50),
('Bruno Lima', '2009-07-22', '5º ano', 'Matemática', 7.20),
('Carla Mendes', '2011-01-10', '5º ano', 'Matemática', 9.00),
('Diego Santos', '2010-11-05', '5º ano', 'Matemática', 6.80),
('Fernanda Costa', '2009-05-30', '5º ano', 'Matemática', 8.00),
('Gabriel Almeida', '2012-02-18', '5º ano', 'Matemática', 9.50),
('Helena Martins', '2011-09-09', '5º ano', 'Matemática', 7.80),
('Igor Ferreira', '2010-12-25', '5º ano', 'Matemática', 5.90);

SELECT * FROM tb_estudante;

SELECT * FROM tb_estudante WHERE nota > 7.0;
SELECT * FROM tb_estudante WHERE nota < 7.0;
UPDATE tb_estudante SET nota = 6.0 WHERE id = 8;

