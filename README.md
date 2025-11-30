# Projeto Banco de Dados - Sorveteria Coração Gelado

Projeto de banco de dados de um sistema de controle para uma sorveteria fictícia, com a descrição do minimundo, modelo conceitual, modelo lógico e os scripts de criação.

## Descrição do Projeto

A sorveteria Coração Gelado tem como propósito oferecer sorvetes artesanais, preparados com ingredientes naturais e receitas exclusivas. Seu objetivo é proporcionar uma experiência saborosa e acolhedora aos clientes em um ambiente agradável. O minimundo busca representar os principais processos de vendas, produção e gestão de estoque da sorveteria.

## Estrutura do Repositório

```
/ (raiz)
├── README.md                   # Documento principal do projeto
├── 01_create_tables.sql        # Criação das tabelas do banco
├── 02_insert_data.sql          # População inicial das tabelas
├── 03_queries.sql              # Consultas com SELECT e JOIN
└── 04_updates_deletes.sql      # Comandos UPDATE e DELETE
```

---

## Tecnologias Utilizadas

* **MySQL 8+** ou **MariaDB 10+**
* SQL padrão ANSI
* Ferramentas opcionais:

  * *MySQL Workbench* (modelagem e execução de scripts)
  * *DBeaver* (administração universal)
  * *VSCode* com extensão SQL

---

## Como Executar o Projeto

Siga o passo a passo para rodar este projeto do zero:

### **1. Instalar dependências**

Você precisa ter instalado:

* MySQL Server
* MySQL Workbench (opcional, mas recomendado)

### **2. Criar o banco de dados**

Execute:

```sql
CREATE DATABASE sorveteria;
USE sorveteria;
```

### **3. Criar as tabelas**

Execute o script:

```
01_create_tables.sql
```

### **4. Inserir dados**

Execute:

```
02_insert_data.sql
```

### **5. Testar o banco com consultas**

Rode o arquivo:

```
03_queries.sql
```

### **6. Atualizar ou remover registros**

Executar:

```
04_updates_deletes.sql
```

## Modelo Conceitual (Esboço)

<img width="600" height="600" alt="Captura de tela 2025-11-16 120808" src="https://github.com/user-attachments/assets/f306ea5b-6f85-41be-ae34-4093122f6764" />

## Modelo Modelo Lógico (Final)

<img width="600" height="600" alt="Captura de tela 2025-11-24 183113" src="https://github.com/user-attachments/assets/ab58c30d-df28-4ca7-b5c7-47fb56e82fa5" />

# Modelo de Dados Detalhado (DER)

Abaixo está uma descrição detalhada das entidades e relações baseadas no Diagrama Entidade-Relacionamento.

## **1. Cliente**

Armazena informações dos clientes.

* **CPF (PK)**
* Nome
* Sobrenome

Relações:

* Possui *telefones*
* Possui *endereços*
* Realiza *pedidos*

---

## **2. Funcionário**

Responsáveis pela produção e registro de pedidos.

* **idFuncionario (PK)**
* Nome
* Sobrenome
* Salário

Relações:

* Atende *pedidos*
* Pode montar sabores (tabela *Monta*)
* Pode ter *telefone* e *endereço*

---

## **3. Fornecedor**

Fornece insumos e sabores de sorvete.

* **CNPJ (PK)**
* Nome
* Sobrenome

Relações:

* Fornece *sorvetes*
* Pode ter *telefone* e *endereço*

---

## **4. Sorvete**

Produtos oferecidos pela sorveteria.

* **idSorvete (PK)**
* idFornecedor (FK)
* Sabor

Relações:

* Participa de *pedidos*
* Participa de *vendas*

---

## **5. Telefone**

Armazena telefones de clientes, funcionários ou fornecedores.

* **idTelefone (PK)**
* Numero
* Cliente_CPF (FK)
* Funcionario_id (FK)
* Fornecedor_CNPJ (FK)

Relação do tipo **1:N** para cada entidade.

---

## **6. Endereço**

Endereços associados a qualquer uma das entidades principais.

* **idEndereco (PK)**
* CEP
* Cidade
* Bairro
* Rua
* Cliente_CPF (FK)
* Fornecedor_CNPJ (FK)
* Funcionario_id (FK)

---

## **7. Pedido**

Registra pedidos feitos por clientes.

* **idPedido (PK)**
* idFuncionario (FK)
* idCliente (FK)
* idSorvete (FK)
* Quantidade

Relações:

* Um pedido pode gerar várias *vendas*

---

## **8. Venda**

Finalização de um pedido.

* **Nota_fiscal (PK)**
* idPedido (FK)
* idSorvete (FK)
* Data
* Valor_Total

---

## **9. Monta**

Indica quais funcionários montam quais sabores.

* **Sabor (PK)**
* **idFuncionario (PK)**

Relação **N:N** implícita entre Funcionário e Sorvete.
