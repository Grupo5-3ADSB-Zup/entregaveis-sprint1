create table Usuario (
idUsuario  int IDENTITY(1,1) PRIMARY KEY,
nomeUsuario varchar(50),
email varchar(50),
cpf varchar(11) default null,
cnpj varchar(14) default null,
username varchar(15),
senha varchar(50),
isInfluence bit
);

create table Publicacao (
idPublicacao int IDENTITY(1,1) PRIMARY KEY,
titulo varchar(50),
dataPostagem  datetime default current_timestamp,
descricao varchar(1250),
autor varchar(50),
isTop bit
);

create table Comentario (
idComentario int IDENTITY(1,1) PRIMARY KEY,
descricao varchar(45),
dataComentario datetime default current_timestamp,
fkUsuario int,
fkPublicacao int,
foreign key (fkUsuario) references Usuario(idUsuario),
foreign key (fkPublicacao) references Publicacao(idPublicacao)
);

create table Chat (
idChat int IDENTITY(1,1) PRIMARY KEY,
nomeChat varchar(45),
descricao varchar(45),
dataGrupo datetime default current_timestamp
);

create table Mensagem (
idMensagem int IDENTITY(1,1),
fkChat int,
fkUsuario int,
dataMensagem datetime default current_timestamp,
descricao varchar(255),
primary key(idMensagem, fkChat, fkUsuario),
foreign key (fkChat) references Chat(idChat),
foreign key (fkUsuario) references Usuario(idUsuario)
);