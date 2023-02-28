CREATE DATABASE TesteSegurançaER1SA3;

USE TesteSegurançaER1SA3;

CREATE TABLE Usuarios
(
	ID INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
);

--inserir dados no banco de dados 
INSERT INTO Usuarios VALUES ('email@email.com', 1234);

-- consultar os usuarios existentes no banco de dados 
SELECT * FROM Usuarios;

SELECT Email, Senha FROM Usuarios;
SELECT Email, HASHBYTES('MD2',Senha) FROM Usuarios;
SELECT ID, Email, HASHBYTES ('MD2',Senha) AS 'Senha Hash' FROM Usuarios WHERE ID = 1;
SELECT ID, Email, HASHBYTES ('MD4',Senha) AS 'Senha Hash' FROM Usuarios WHERE ID = 1;
SELECT ID, Email, HASHBYTES ('MD5',Senha) AS 'Senha Hash' FROM Usuarios WHERE ID = 1;
SELECT ID, Email, HASHBYTES ('SHA',Senha) AS 'Senha Hash' FROM Usuarios WHERE ID = 1;
SELECT ID, Email, HASHBYTES ('SHA1',Senha) AS 'Senha Hash' FROM Usuarios WHERE ID = 1;
SELECT ID, Email, HASHBYTES ('SHA2_256',Senha) AS 'Senha Hash' FROM Usuarios WHERE ID = 1;
SELECT ID, Email, HASHBYTES ('SHA2_512',Senha) AS 'Senha Hash' FROM Usuarios WHERE ID = 1;