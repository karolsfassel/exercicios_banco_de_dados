CREATE DATABASE  db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios'),
('Cosméticos', 'beleza e cuidados pessoais'),
('Higiene', 'higiene pessoal e limpeza'),
('Vitaminas', 'Suplementos '),
('Infantil', 'crianças e bebês');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES
('Paracetamol ', 'Analgésico e antitérmico', 12.50, 100, 1),
('Amoxicilina', 'Antibiótico cápsulas', 65.00, 50, 1),
('Creme Hidratante Facial', 'Hidratação profunda para pele', 55.90, 30, 2),
('Shampoo', 'Controle da oleosidade e caspa', 28.00, 40, 2),
('Sabonete', 'Sabonete suave para uso diário', 8.90, 200, 3),
('Desodorante', 'Proteção contra odores', 15.00, 150, 3),
('Vitamina C', 'Suplemento antioxidante', 49.90, 80, 4),
('Pomada Infantil', 'Pomada para assaduras de bebê', 22.00, 60, 5);


SELECT *  FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT *  FROM tb_produtos WHERE nome LIKE '%C%';
SELECT id_produto,  nome , descricao, preco, estoque, id_categoria 
FROM tb_produtos WHERE nome LIKE '%C%';


SELECT 
    tb_produtos.id_produto,
    tb_produtos.nome,
    tb_produtos.descricao,
    tb_produtos.preco,
    tb_produtos.estoque,
    tb_categorias.nome,
    tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;


SELECT 
    tb_produtos.id_produto,
    tb_produtos.nome,
    tb_produtos.descricao,
    tb_produtos.preco,
    tb_produtos.estoque,
    tb_categorias.nome,
    tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Cosméticos';