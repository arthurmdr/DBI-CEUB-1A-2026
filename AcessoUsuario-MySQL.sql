create database AcessoUsuario;

create table setor(
	idSetor int primary key,
	setor varchar(30) not null unique
	);

create table usuario(
	idUsuario int primary key,
	nomeUsuario varchar(60) not null,
	email varchar(30) not null unique,
	senha char(8),
	idSetorUsuario int,

	foreign key (idSetorUsuario)
	references setor(idSetor)
);

insert into setor (idSetor, setor) values ('1', 'Contabilidade');
insert into setor (idSetor, setor) values ('2', 'Financeiro');
insert into setor (idSetor, setor) values ('3', 'Recursos Humanos');
insert into usuario (idUsuario, nomeUsuario, email, senha, idSetorUsuario) values ('1', 'João da Silva', 'joao@empresa.com', 'yk58927_', '1');
insert into usuario (idUsuario, nomeUsuario, email, senha, idSetorUsuario) values ('2', 'Tereza de Jesus Martins', 'tereza@empresa.com', 'uk7841@', '2');
insert into usuario (idUsuario, nomeUsuario, email, senha, idSetorUsuario) values ('3', 'Ana Maria Pereira', 'ana@empresa.com', '52687am', '1');
insert into usuario (idUsuario, nomeUsuario, email, senha, idSetorUsuario) values ('4', 'Fabiano Antares', 'fabiano@empresa.com', '985648##', '3');