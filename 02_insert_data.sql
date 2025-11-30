INSERT INTO Cliente VALUES
('111.111.111-11', 'Carlos', 'Souza'),
('222.222.222-22', 'Maria', 'Lima');

INSERT INTO Funcionario VALUES
(1, 'João', 'Silva', 2500.00),
(2, 'Ana', 'Costa', 2700.00);

INSERT INTO Fornecedor VALUES
('00.000.000/0001-00', 'Gelatto', 'Brasil');

INSERT INTO Sorvete VALUES
(1, '00.000.000/0001-00', 'Chocolate'),
(2, '00.000.000/0001-00', 'Morango');

INSERT INTO Telefone VALUES
(1, '9999-1111', '111.111.111-11', NULL, NULL),
(2, '8888-2222', NULL, 1, NULL);

INSERT INTO Endereco VALUES
(1, '12345-000', 'São Paulo', 'Centro', 'Rua A', '111.111.111-11', NULL, NULL),
(2, '54321-000', 'São Paulo', 'Bela Vista', 'Rua B', NULL, NULL, 1);

INSERT INTO Pedido VALUES
(10, 1, '111.111.111-11', 1, 2),
(11, 2, '222.222.222-22', 2, 1);

INSERT INTO Venda VALUES
(1001, 10, 1, '2025-11-30', 20.00),
(1002, 11, 2, '2025-11-30', 12.00);

INSERT INTO Monta VALUES
('Chocolate', 1),
('Morango', 2);
