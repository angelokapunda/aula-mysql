
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    habilidade VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, habilidade) VALUES
('Guerreiro', 'Força bruta'),
('Mago', 'Magia elemental'),
('Arqueiro', 'Precisão'),
('Ladino', 'Agilidade'),
('Clérigo', 'Cura');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id) VALUES
('Aragorn', 2500, 1800, 1),
('Gandalf', 3000, 1500, 2),
('Legolas', 2200, 1200, 3),
('Bilbo', 1500, 1000, 4),
('Arwen', 2000, 1700, 1),
('Frodo', 1800, 1100, 4),
('Gimli', 2300, 2000, 1),
('Galadriel', 2800, 1600, 2);

SELECT nome FROM tb_personagens WHERE poder_ataque > 2000;

SELECT nome FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT nome FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.nome, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';

