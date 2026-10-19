use projetoclientes;
CREATE TABLE usuarios (
    UsuarioId INT IDENTITY(1,1) PRIMARY KEY,
    Email VARCHAR(150) not null,
    Senha VARCHAR(150) not null
);

CREATE TABLE classes(
    ClasseId INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100) not null,
    Descricao VARCHAR(255)
);

CREATE TABLE habilidades (
    HabilidadeId INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100)not null
);

CREATE TABLE personagens(
    PersonagemId INT IDENTITY(1,1) PRIMARY KEY,
    NomePersonagem VARCHAR(100)not null,
    UsuarioId INT not null,
    ClasseId INT not null,
    FOREIGN KEY (UsuarioId) REFERENCES usuarios(UsuarioId),
    FOREIGN KEY (ClasseId) REFERENCES classes(ClasseId)
);

CREATE TABLE classe_habilidade(
    ClasseId INT not null,
    HabilidadeId INT not null,
    PRIMARY KEY (ClasseId, HabilidadeId),
    FOREIGN KEY (ClasseId) REFERENCES classes(ClasseId),
    FOREIGN KEY (HabilidadeId) REFERENCES habilidade(HabilidadeId)
);
go
