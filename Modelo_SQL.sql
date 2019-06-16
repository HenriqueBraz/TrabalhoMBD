CREATE TABLE Auxilia (
);


CREATE TABLE Conferencia (
 Id_conferencia INT NOT NULL,
 nome CHAR(10)
);

ALTER TABLE Conferencia ADD CONSTRAINT PK_Conferencia PRIMARY KEY (Id_conferencia);


CREATE TABLE Divisao (
 id_divisao INT NOT NULL,
 Id_conferencia INT NOT NULL,
 regiao CHAR(10)
);

ALTER TABLE Divisao ADD CONSTRAINT PK_Divisao PRIMARY KEY (id_divisao,Id_conferencia);


CREATE TABLE Estadio (
 estadio_id INT NOT NULL,
 capacidade CHAR(10),
 nome CHAR(10)
);

ALTER TABLE Estadio ADD CONSTRAINT PK_Estadio PRIMARY KEY (estadio_id);


CREATE TABLE Franquia (
 id_franquia INT NOT NULL,
 nome CHAR(10),
 conquistas CHAR(10),
 cidade CHAR(10),
 apelido CHAR(10)
);

ALTER TABLE Franquia ADD CONSTRAINT PK_Franquia PRIMARY KEY (id_franquia);


CREATE TABLE Funcionario (
 id_funcionario INT NOT NULL
);

ALTER TABLE Funcionario ADD CONSTRAINT PK_Funcionario PRIMARY KEY (id_funcionario);


CREATE TABLE Jogador (
 id_jogador INT NOT NULL,
 id_funcionario INT NOT NULL,
 peso CHAR(10),
 altura CHAR(10),
 posicao INT,
 idade INT
);

ALTER TABLE Jogador ADD CONSTRAINT PK_Jogador PRIMARY KEY (id_jogador,id_funcionario);


CREATE TABLE Partida (
 id_partida INT NOT NULL,
 horario INT,
 placar INT
);

ALTER TABLE Partida ADD CONSTRAINT PK_Partida PRIMARY KEY (id_partida);


CREATE TABLE Tecnico (
 id_tecnico INT NOT NULL,
 id_funcionario INT NOT NULL
);

ALTER TABLE Tecnico ADD CONSTRAINT PK_Tecnico PRIMARY KEY (id_tecnico,id_funcionario);


CREATE TABLE telefone (
 id_funcionario INT NOT NULL
);

ALTER TABLE telefone ADD CONSTRAINT PK_telefone PRIMARY KEY (id_funcionario);


CREATE TABLE Arbitro (
 id_arbitro INT NOT NULL,
 nome CHAR(10)
);

ALTER TABLE Arbitro ADD CONSTRAINT PK_Arbitro PRIMARY KEY (id_arbitro);


CREATE TABLE Endereco (
 estado CHAR(10),
 rua CHAR(10),
 complemento CHAR(10),
 cidade CHAR(10)
);


CREATE TABLE Joga_Partida (
 id_jogador INT NOT NULL,
 id_partida INT NOT NULL,
 id_funcionario INT NOT NULL,
 faltas INT,
 assistencias INT,
 cestas INT
);

ALTER TABLE Joga_Partida ADD CONSTRAINT PK_Joga_Partida PRIMARY KEY (id_jogador,id_partida,id_funcionario);


ALTER TABLE Divisao ADD CONSTRAINT FK_Divisao_0 FOREIGN KEY (Id_conferencia) REFERENCES Conferencia (Id_conferencia);


ALTER TABLE Jogador ADD CONSTRAINT FK_Jogador_0 FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario);


ALTER TABLE Tecnico ADD CONSTRAINT FK_Tecnico_0 FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario);


ALTER TABLE telefone ADD CONSTRAINT FK_telefone_0 FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario);


ALTER TABLE Joga_Partida ADD CONSTRAINT FK_Joga_Partida_0 FOREIGN KEY (id_jogador,id_funcionario) REFERENCES Jogador (id_jogador,id_funcionario);
ALTER TABLE Joga_Partida ADD CONSTRAINT FK_Joga_Partida_1 FOREIGN KEY (id_partida) REFERENCES Partida (id_partida);


