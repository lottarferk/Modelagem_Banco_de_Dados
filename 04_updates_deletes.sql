-- UPDATES
UPDATE Funcionario SET Salario = Salario + 200 WHERE idFuncionario = 1;
UPDATE Cliente SET Nome = 'Carla' WHERE CPF = '111.111.111-11';
UPDATE Sorvete SET Sabor = 'Chocolate Amargo' WHERE idSorvete = 1;

-- DELETES
DELETE FROM Telefone WHERE idTelefone = 2;
DELETE FROM Pedido WHERE idPedido = 11;
DELETE FROM Venda WHERE Nota_fiscal = 1002;
