CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,         
    descricao VARCHAR(500),             
    preco DECIMAL(10,2) NOT NULL,        
    estoque INT NOT NULL,                
    categoria VARCHAR(100) NOT NULL,     
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria)
VALUES
('Smartphone X', 'Tela 6.5 polegadas, 128GB', 1999.90, 50, 'Eletrônicos'),
('Notebook Y', 'Processador i7, 16GB RAM, SSD 512GB', 4599.00, 20, 'Informática'),
('Camiseta Básica', '100% algodão, cor preta', 49.90, 200, 'Moda'),
('Tênis Esportivo', 'Confortável para corrida e academia', 299.90, 80, 'Calçados'),
('Livro de SQL', 'Aprenda SQL do básico ao avançado', 89.90, 100, 'Livros'),
('Fone Bluetooth', 'Bateria de 20h, microfone embutido', 159.90, 150, 'Eletrônicos'),
('Relógio Digital', 'Resistente à água, pulseira de silicone', 249.90, 60, 'Acessórios'),
('Mochila Executiva', 'Compartimento para notebook até 15.6"', 199.90, 40, 'Moda');

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET preco = 2500.00 WHERE id = 1;