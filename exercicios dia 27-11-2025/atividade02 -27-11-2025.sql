CREATE DATABASE  db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
tipo VARCHAR(50) NOT NULL
);

CREATE TABLE tb_pizzas(
id_pizza INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(50) NOT NULL,
tamanho VARCHAR(50) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome, tipo) VALUES
('Clássicas da Casa', 'Tradicional'),
('Doces Tentação', 'Doce'),
('Verde & Saudável', 'Fitness'),
('Sabores Nobres', 'Premium'),
('Picantes & Exóticas', 'Especial');

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (nome, descricao, tamanho, preco, id_categoria) VALUES
('Calabresa da Casa', 'Calabresa com cebola e azeitonas', 'Grande', 55.00, 1),
('Margherita Especial', 'Tomate, mussarela e manjericão fresco', 'Média', 48.90, 1),
('Chocolate Supremo', 'Pizza doce com muito chocolate', 'Grande', 49.90, 2),
('Banana Caramelada', 'Banana com caramelo e canela', 'Média', 42.50, 2),
('Vegana Mix', 'Legumes frescos e massa integral', 'Média', 52.00, 3),
('Tofu Supreme', 'Tofu grelhado com rúcula e tomate seco', 'Grande', 65.00, 3),
('Camarão Gourmet', 'Camarão com molho especial e queijo gorgonzola', 'Grande', 78.00, 4),
('Mexicana Picante', 'Carne temperada, jalapeño e molho apimentado', 'Média', 59.90, 5);


SELECT * FROM  tb_pizzas WHERE preco > 45.00;

SELECT * FROM  tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT id_pizza,  nome , descricao, tamanho, preco, id_categoria 
FROM tb_pizzas WHERE nome LIKE '%M%';


SELECT 
    tb_pizzas.id_pizza,
    tb_pizzas.nome,
    tb_pizzas.descricao,
    tb_pizzas.tamanho,
    tb_pizzas.preco,
    tb_categorias.id_categoria,
    tb_categorias.nome,
    tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias
    ON tb_pizzas.id_categoria = tb_categorias.id_categoria;
    
    
    SELECT 
    tb_pizzas.id_pizza,
    tb_pizzas.nome,
    tb_pizzas.descricao,
    tb_pizzas.tamanho,
    tb_pizzas.preco,
    tb_categorias.id_categoria,
    tb_categorias.nome,
    tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias
    ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Doces Tentação';