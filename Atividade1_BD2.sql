CREATE TABLE Funcionario (
    ID INT PRIMARY KEY,
    nome VARCHAR(255),
    tipo VARCHAR(255)
);

CREATE TABLE Cliente (
    CPF VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(255),
    telefone1 VARCHAR(255),
    telefone2 VARCHAR(255),
    telefone3 VARCHAR(255)
);

CREATE TABLE Carro (
    Codigo INT PRIMARY KEY,
    modelo VARCHAR(255),
    cor VARCHAR(255),
    ano INT
);

CREATE TABLE Financiamento (
    ID INT PRIMARY KEY,
    descricao VARCHAR(255),
    numero_parcelas INT
);

CREATE TABLE Compra (
    ID_compra INT PRIMARY KEY,
    data_compra DATE,
    valor_venda DECIMAL(10,2),
    data_pagamento DATE,
);


ALTER TABLE Compra ADD COLUMN Codigo_carro INT;
ALTER TABLE Compra ADD FOREIGN KEY (Codigo_carro) REFERENCES Carro(Codigo);

ALTER TABLE Compra ADD COLUMN ID_financiamento INT;
ALTER TABLE Compra ADD FOREIGN KEY (ID_financiamento) REFERENCES Financiamento(ID);

ALTER TABLE Financiamento ADD COLUMN ID_funcionario INT;
ALTER TABLE Financiamento ADD FOREIGN KEY (ID_funcionario) REFERENCES Funcionario(ID);
