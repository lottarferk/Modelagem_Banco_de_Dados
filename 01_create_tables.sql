CREATE TABLE Cliente (
    CPF VARCHAR(14) PRIMARY KEY,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50)
);

CREATE TABLE Funcionario (
    idFuncionario INT PRIMARY KEY,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50),
    Salario DECIMAL(10,2)
);

CREATE TABLE Fornecedor (
    CNPJ VARCHAR(18) PRIMARY KEY,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50)
);

CREATE TABLE Sorvete (
    idSorvete INT PRIMARY KEY,
    idFornecedor VARCHAR(18),
    Sabor VARCHAR(50),
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(CNPJ)
);

CREATE TABLE Telefone (
    idTelefone INT PRIMARY KEY,
    Numero VARCHAR(20),
    Cliente_CPF VARCHAR(14),
    Funcionario_id INT,
    Fornecedor_CNPJ VARCHAR(18),
    FOREIGN KEY (Cliente_CPF) REFERENCES Cliente(CPF),
    FOREIGN KEY (Funcionario_id) REFERENCES Funcionario(idFuncionario),
    FOREIGN KEY (Fornecedor_CNPJ) REFERENCES Fornecedor(CNPJ)
);

CREATE TABLE Endereco (
    idEndereco INT PRIMARY KEY,
    CEP VARCHAR(20),
    Cidade VARCHAR(50),
    Bairro VARCHAR(50),
    Rua VARCHAR(50),
    Cliente_CPF VARCHAR(14),
    Fornecedor_CNPJ VARCHAR(18),
    Funcionario_id INT,
    FOREIGN KEY (Cliente_CPF) REFERENCES Cliente(CPF),
    FOREIGN KEY (Fornecedor_CNPJ) REFERENCES Fornecedor(CNPJ),
    FOREIGN KEY (Funcionario_id) REFERENCES Funcionario(idFuncionario)
);

CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY,
    idFuncionario INT,
    idCliente VARCHAR(14),
    idSorvete INT,
    Quantidade INT,
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario),
    FOREIGN KEY (idCliente) REFERENCES Cliente(CPF),
    FOREIGN KEY (idSorvete) REFERENCES Sorvete(idSorvete)
);

CREATE TABLE Venda (
    Nota_fiscal INT PRIMARY KEY,
    idPedido INT,
    idSorvete INT,
    Data DATE,
    Valor_Total DECIMAL(10,2),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idSorvete) REFERENCES Sorvete(idSorvete)
);

CREATE TABLE Monta (
    Sabor VARCHAR(50),
    idFuncionario INT,
    PRIMARY KEY (Sabor, idFuncionario),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);
