use projetoclientes;
insert into  usuarios (Email,Senha) values('pedrobountyHunter@gmail.com','12345678');
insert into usuarios(Email,Senha) values('noob52@gmail.com','pao1234');
insert into classes(nome,Descricao)values('Mago','é um mago!!!!eee solta poderzinho pela mão!');
insert into classes(nome,Descricao)values('Barbaro','bate muito..muito mesmo');
insert into habilidades(Nome)values('convocação de papaguaio');
insert into habilidades(Nome)values('fortaliza');

insert into personagens(NomePersonagem,UsuarioId,classeId)values('pedrohunter123',1,1); 
--usuario da classe mago
insert into personagens(NomePersonagem,usuarioId,classeId)values('noob2026/2027',2,2);
--eee noob!sempre vão para as classses do estilo barbaros 
select nome,Descricao from classes;
select NomePersonagem from personagens where personagemId = 1;
