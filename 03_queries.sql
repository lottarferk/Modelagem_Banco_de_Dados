-- 1. Lista de clientes ordenados alfabeticamente
SELECT Nome, Sobrenome FROM Cliente ORDER BY Nome;

-- 2. Pedidos com nome do funcionário e sabor do sorvete
SELECT p.idPedido, f.Nome AS Funcionario, s.Sabor
FROM Pedido p
JOIN Funcionario f ON p.idFuncionario = f.idFuncionario
JOIN Sorvete s ON p.idSorvete = s.idSorvete;

-- 3. Vendas acima de R$ 15
SELECT * FROM Venda WHERE Valor_Total > 15;

-- 4. Lista de funcionários e seus salários
SELECT Nome, Salario FROM Funcionario ORDER BY Salario DESC LIMIT 5;

-- 5. Endereços com clientes associados
SELECT e.*, c.Nome
FROM Endereco e
LEFT JOIN Cliente c ON e.Cliente_CPF = c.CPF;
