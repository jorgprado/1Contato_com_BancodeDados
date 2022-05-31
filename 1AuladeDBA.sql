CREATE DATABASE bd_biblioteca;

USE bd_biblioteca;

CREATE TABLE tb_genero
	(
		cd_genero int unsigned  null auto_increment,
        PRIMARY KEY (cd_genero),
        nm_genero varchar (45) not null, 
        cd_class_genero int  unsigned null
	);
    
CREATE TABLE tb_livro
    (
		cd_livro int unsigned  null auto_increment,
        PRIMARY KEY (cd_livro),
        nm_livro varchar (80) not null, 
        dt_lancamento date,
        nr_pagina int ,
        ilustracoes boolean,
        lg_idioma varchar (30)
    );

CREATE TABLE tb_livro_genero
	(
	id_livro_genero int unsigned not null auto_increment,
    primary key (id_livro_genero),
    cd_livro int unsigned default null, 
    cd_genero int unsigned default null, 
	constraint fk_livro foreign key (cd_livro) references tb_livro (cd_livro), 
    constraint fk_genero foreign key (cd_genero) references tb_genero (cd_genero)
	);

CREATE TABLE tb_autor
	(
	cd_autor int unsigned  not null auto_increment,
    primary key (cd_autor),
    nm_autor varchar (125) not null,
    nm_nacionlidade varchar(25) not null
	);
    
    CREATE TABLE tb_livro_autor
    (
    id_livro_autor int unsigned not null auto_increment,
    primary key (id_livro_autor),
    cd_livro int unsigned default null,
    cd_autor int unsigned default null,
	foreign key (cd_livro) references tb_livro (cd_livro),
    constraint fk_autor foreign key (cd_autor) references tb_autor (cd_autor)
    );

	CREATE TABLE tb_aluno
    (
    cd_aluno int unsigned not null auto_increment,
    primary key (cd_aluno),
    nm_aluno varchar(145) not null,
    dt_nascimento date,
    tm_sala varchar(45),
    hr_turno datetime
    );
    
    CREATE TABLE tb_locacao
    (
    id_locacao int unsigned not null auto_increment,
    primary key (id_locacao),
    cd_aluno int unsigned default null,
    cd_livro int unsigned default null,
    constraint fk_aluno foreign key (cd_aluno) references tb_aluno (cd_aluno),
    foreign key (cd_livro) references tb_livro (cd_livro),
    dt_locacao datetime,
    dt_devolucao datetime,
    nm_anot_livros varchar (500)
    );
    
    CREATE TABLE tb_curso
    (
    cd_curso int unsigned not null auto_increment,
    primary key (cd_curso),
    nr_semeestre varchar (45),
    nr_periodo varchar(45)
    );
    
    CREATE TABLE tb_aluno_curso
    (
    id_aluno_curso int unsigned not null auto_increment,
    primary key (id_aluno_curso),
    cd_aluno int unsigned default null,
    cd_curso int unsigned default null,
    foreign key (cd_aluno) references tb_aluno (cd_aluno),
    constraint fk_curso foreign key (cd_curso) references tb_curso (cd_curso)
    );
    
    /*jorge henrique de lima/*