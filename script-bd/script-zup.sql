create database zup;

use zup;

create table Usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar(50),
email varchar(50),
cpf varchar(11) default null,
cnpj varchar(14) default null,
username varchar(15),
senha varchar(50),
isInfluence boolean
);

create table Publicacao (
idPublicacao int primary key auto_increment,
titulo varchar(50),
dataPostagem  datetime default current_timestamp,
descricao varchar(1250),
autor varchar(50),
isTop boolean
);

create table Comentario (
idComentario int primary key auto_increment,
descricao varchar(45),
dataComentario datetime default current_timestamp,
fkUsuario int,
fkPublicacao int,
foreign key (fkUsuario) references Usuario(idUsuario),
foreign key (fkPublicacao) references Publicacao(idPublicacao)
);

create table Chat (
idChat int primary key auto_increment,
nomeChat varchar(45),
descricao varchar(45),
dataGrupo datetime default current_timestamp
);

create table Mensagem (
idMensagem int auto_increment,
fkChat int,
fkUsuario int,
dataMensagem datetime default current_timestamp,
descricao varchar(255),
primary key(idMensagem, fkChat, fkUsuario),
foreign key (fkChat) references Chat(idChat),
foreign key (fkUsuario) references Usuario(idUsuario)
);



