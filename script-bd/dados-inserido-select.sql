insert into Usuario(nomeUsuario, email, cpf, username, senha, isInfluence) values
("João", "joao.sobral@sptech.school", "47548284885", "joaosobral", "123mudar", false),
("Cabral", "cabral@sptech.school", "48439403974", "cabral", "124mudar", true);

insert into Usuario(nomeUsuario, email, cnpj, username, senha, isInfluence) values
("Americanas", "americanas@sptech.school", "57894678485656", "americanas", "125mudar", false);

insert into chat(nomeChat, descricao) values ("Chat Americanas", "Para falar da americanas");

insert into  mensagem (fkChat, fkUsuario, descricao) values
(1, 1, "Oi");
insert into  mensagem (fkChat, fkUsuario, descricao) values
(1, 2, "Oi");
insert into  mensagem (fkChat, fkUsuario, descricao) values
(1, 1, "Tudo bem?");
insert into  mensagem (fkChat, fkUsuario, descricao) values
(1, 2, "Sim, e você?");
insert into  mensagem (fkChat, fkUsuario, descricao) values
(1, 2, "Muito bem");

select username, dataMensagem, mensagem.descricao from mensagem
	join chat on fkChat = idChat
		join usuario on fkUsuario = idUsuario
			where idChat = 1
            order by dataMensagem asc;
