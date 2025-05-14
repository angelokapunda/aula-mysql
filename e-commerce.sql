create database ecommerce;

use ecommerce;

create table produtos (
    id bigint auto_increment,
    nome varchar(255) not null, 
    marca varchar(255) ,
    descricao text,                         
    preco decimal(10,2) not null,       
    estoque int not null default 0,
    primary key(id)
);

insert into produtos (nome, marca, descricao, preco, estoque) values
('Smartphone X200', 'TechBrand', 'Smartphone com 128GB e câmera dupla.', 950.00, 15),
('Notebook Ultra', 'NoteMaster', 'Notebook 15" com SSD de 512GB.', 980.00, 10),
('Fone Bluetooth Pro', 'SoundBeat', 'Fones de ouvido com cancelamento de ruído.', 320.00, 40),
('Monitor LED 27"', 'ViewMax', 'Monitor Full HD com borda infinita.', 750.00, 20),
('Smartwatch Fit 2', 'PulseTech', 'Relógio inteligente com monitor cardíaco.', 410.00, 30),
('Tablet 10.1"', 'TabWorld', 'Tablet Android com 64GB de memória.', 660.00, 18),
('Cadeira Gamer ZX', 'ConfortZone', 'Cadeira ergonômica para jogos.', 870.00, 12),
('Impressora Wi-Fi', 'PrintNow', 'Impressora multifuncional com conexão sem fio.', 340.00, 25),
('Teclado Mecânico RGB', 'KeyPro', 'Teclado com switches mecânicos e iluminação.', 350.00, 35),
('Aspirador Smart Clean', 'HomeClean', 'Aspirador de pó inteligente com sensores.', 499.90, 8);

select * from produtos where preco > 500;

select * from produtos where preco < 500;

update produtos set nome = "Notebook Ultra 21" where id = 2;




