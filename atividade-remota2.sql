--Criação do banco de dados e das tabelas
--DDL

CREATE DATABASE RPG
GO

--Alterna para a referência atual do banco (RPG)

USE RPG
GO

-- Criação das tabelas 

CREATE TABLE Usuario 
(
  UsuarioId INT PRIMARY KEY IDENTITY,
  Email VARCHAR(100) UNIQUE NOT NULL,
  Senha VARCHAR(50) NOT NULL
)
GO

CREATE TABLE Classe 
(
  ClasseId INT PRIMARY KEY IDENTITY,
  Nome VARCHAR(50) UNIQUE NOT NULL,
  Descricao VARCHAR(255)
)
GO

CREATE TABLE Personagem
(
  PersonagemId INT PRIMARY KEY IDENTITY,
  Nome VARCHAR(50) UNIQUE NOT NULL,
  UsuarioId INT UNIQUE FOREIGN KEY REFERENCES Usuario(UsuarioId),
  ClasseId INT FOREIGN KEY REFERENCES Classe(ClasseId)
)
GO

CREATE TABLE Habilidade
(
  HabilidadeId INT PRIMARY KEY IDENTITY,
  Nome VARCHAR(50) UNIQUE NOT NULL
)
GO

CREATE TABLE ClasseHabilidade
(
  ClasseId INT FOREIGN KEY REFERENCES Classe(ClasseId),
  HabilidadeId INT FOREIGN KEY REFERENCES Habilidade(HabilidadeId)
)



