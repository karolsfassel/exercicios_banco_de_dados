CREATE DATABASE db_generation_game_online;
 
USE db_generation_game_online;


CREATE TABLE tb_classes (
    id_classe INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo_arma VARCHAR(50) NOT NULL
);

CREATE TABLE tb_personagens (
    id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

SELECT * FROM  tb_personagens;
SELECT * FROM  tb_classes;

INSERT INTO tb_classes (nome, tipo_arma) VALUES
('Arqueiro', 'Arco e Flecha'),
('Mago', 'Cajado'),
('Guerreiro', 'Espada'),
('Assassino', 'Adaga'),
('Paladino', 'Martelo');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Lara', 2500, 1200, 15, 1),   
('MestreKill', 1800, 2200, 20, 3),    
('Merlin', 3000, 800, 25, 2),       
('Shadow', 2100, 1500, 18, 4),     
('Arthur', 1900, 1700, 22, 5),     
('Clara', 2300, 1100, 16, 1),       
('Draco', 2800, 900, 24, 2),        
('NokiaTijolo', 1500, 1300, 12, 3);  

SELECT * FROM  tb_personagens WHERE poder_ataque > 2000;  

SELECT * FROM  tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT id_personagem, nome, poder_ataque, poder_defesa, nivel, id_classe 
FROM tb_personagens WHERE nome LIKE '%C%';

SELECT 
    tb_personagens.id_personagem,
    tb_personagens.nome,
    tb_personagens.poder_ataque,
    tb_personagens.poder_defesa,
    tb_personagens.nivel,
    tb_classes.id_classe,
    tb_classes.nome,
    tb_classes.tipo_arma
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id_classe;


SELECT 
    tb_personagens.id_personagem,
    tb_personagens.nome,
    tb_personagens.poder_ataque,
    tb_personagens.poder_defesa,
    tb_personagens.nivel,
    tb_classes.nome,
    tb_classes.tipo_arma
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome = 'Arqueiro';