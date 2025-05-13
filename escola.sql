create database escola;

use escola;

create table estudantes (
    id bigint auto_increment,
    nome varchar(255) not null,
    data_nascimento date not null,
    email varchar(255) not null ,
    nota decimal(10,2) not null,
    curso varchar(100),
    primary key(id)
);

insert into estudantes (nome, data_nascimento, email, nota, curso) values
('Ana Beatriz Silva', '2002-03-15', 'ana.silva@email.com', 8.75, 'Engenharia de Software'),
('Bruno Marques Costa', '2001-08-21', 'bruno.costa@email.com', 7.90, 'Administração'),
('Carla Menezes Rocha', '2000-11-02', 'carla.rocha@email.com', 9.10, 'Psicologia'),
('Diego Lima Soares', '1999-04-30', 'diego.soares@email.com', 6.85, 'Sistemas de Informação'),
('Eduarda Souza Ramos', '2003-01-18', 'eduarda.ramos@email.com', 8.20, 'Ciência da Computação'),
('Felipe Andrade Nunes', '2002-12-10', 'felipe.nunes@email.com', 7.30, 'Engenharia Civil'),
('Gabriela Freitas Luz', '2001-06-27', 'gabriela.luz@email.com', 9.50, 'Arquitetura e Urbanismo'),
('Henrique Oliveira Pires', '2000-09-14', 'henrique.pires@email.com', 5.90, 'Direito'),
('Isabela Tavares Martins', '2002-10-05', 'isabela.martins@email.com', 8.00, 'Medicina Veterinária'),
('João Pedro Cardoso', '2003-05-09', 'joao.cardoso@email.com', 6.40, 'Biomedicina');

select * from estudantes where nota > 7.0;

select * from estudantes where nota < 7.0;

update estudantes set nome = "Rafael Queiroz" where id = 1;


