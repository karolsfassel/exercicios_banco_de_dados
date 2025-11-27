CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    admissao DATE,
    vinculo BOOLEAN NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, cargo, admissao, vinculo, salario)
VALUES
('Maria Silva', 'Analista de RH', '2023-05-10', TRUE, 4200.00),
('João Souza', 'Assistente Administrativo', '2022-03-15', FALSE, 2800.00),
('Ana Pereira', 'Desenvolvedora', '2024-01-20', TRUE, 6500.00),
('Carlos Mendes', 'Gerente de Projetos', '2021-09-01', TRUE, 8500.00),
('Fernanda Costa', 'Estagiária', '2025-02-12', FALSE, 1500.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET salario = 5000.00 WHERE id = 1;

SELECT * FROM tb_colaboradores;