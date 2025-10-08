CREATE DATABASE Loja_TechMais;
USE Loja_TechMais;

CREATE TABLE Clientes (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Region VARCHAR(20),
    Email VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS Produtos (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(20),
    UnitPrice DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS Vendas (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Clientes(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Produtos(ProductID)
);

