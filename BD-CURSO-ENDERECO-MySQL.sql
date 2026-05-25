create database Curso3;

create table aluno (
	RA integer primary key,
	nomeAluno varchar(60) not null unique,
	dataNascimentoAluno date not null,
	sexoAluno char(1) not null
);

create table Endereco (
	idEndereco integer primary key,
	numeroEndereco char(4),
	logradouroEndereco varchar(30) not null,
	complementoEndereco varchar(30),
	cidadeEndereco varchar(40) not null,
	RAEndereco integer,
	
	foreign key (RAEndereco)
	references aluno(RA)
	on delete cascade
);

create table Telefone (
	idTelefone integer primary key,
	telefoneAluno char(15),
	RATelefone integer,
	
	foreign key(RATelefone)
	references aluno(RA)
	on delete cascade
);

create table ufEndereco (
	idUF integer primary key,
	UF char(2) not null,
	descricaoUF varchar(60),
	RAUF integer,
	
	foreign key(RAUF)
	references endereco(idEndereco)
	on delete cascade	
);