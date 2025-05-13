create database gestao_colaboradores;

use gestao_colaboradores;

create table colaboradores(
        id bigint auto_increment,
        nome varchar(255) not null,
        data_nascimento date not null,
        email varchar(255),
        cargo varchar(255),
        salario decimal(10,2) not null,
        primary key(id)
);

insert into colaboradores (nome, data_nascimento, email, cargo, salario) values 
("Angelo", "2000-07-05", "angelo@gmail.com", "Programador Jr", 2100),("Carlos", "2000-02-05", "carlos@gmail.com", "Gerente de Projectos", 1500),
("Kapunda", "2005-11-05", "kapunda@gmail.com", "Programador pl", 1990),
("Santos", "1990-07-05", " ", "Senior", 18800),
("Giovanni Lima", "1985-07-28", "giovanni@gmail.com", "Senior", 29000);

select nome, salario from colaboradores where salario > 2000;

select nome, salario from colaboradores where salario < 2000;

update colaboradores set nome = "Rafael" where id = 2;



