SET DATESTYLE TO PostgreSQL,European;

CREATE SCHEMA Relacional;

CREATE SEQUENCE Relacional.IDVendedor;
CREATE TABLE Relacional.Vendedores(
  IDVendedor int default nextval('Relacional.IDVendedor'::regclass) PRIMARY KEY,
  Nome Varchar(50)
);

CREATE SEQUENCE Relacional.IDProduto;
CREATE TABLE Relacional.Produtos(
  IDProduto int default nextval('Relacional.IDProduto'::regclass) PRIMARY KEY,
  Produto Varchar(100),
  Preco Numeric(10,2)
);

CREATE SEQUENCE Relacional.IDCliente;
CREATE TABLE Relacional.Clientes(
  IDCliente int default nextval('Relacional.IDCliente'::regclass) PRIMARY KEY,
  Cliente Varchar(50),
  Estado Varchar(2),
  Sexo Char(1),
  Status Varchar(50)
);

CREATE SEQUENCE Relacional.IDVenda;
CREATE TABLE Relacional.Vendas(
  IDVenda int default nextval('Relacional.IDVenda'::regclass) PRIMARY KEY,
  IDVendedor int references Relacional.Vendedores (IDVendedor),
  IDCliente int references Relacional.Clientes (IDCliente),
  Data Date,
  Total Numeric(10,2)
);

CREATE TABLE Relacional.ItensVenda (
    IDProduto int REFERENCES Relacional.Produtos ON DELETE RESTRICT,
    IDVenda int REFERENCES Relacional.Vendas ON DELETE CASCADE,
    Quantidade int,
    ValorUnitario decimal(10,2),
    ValorTotal decimal(10,2),
	Desconto decimal(10,2),
    PRIMARY KEY (IDProduto, IDVenda)
);