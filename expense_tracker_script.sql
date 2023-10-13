USE master;

CREATE DATABASE TransactionDB;
USE master;

CREATE DATABASE TransactionDB;
USE TransactionDB;

-- Створення таблиці Categories
DROP TABLE Categories;
CREATE TABLE Categories
(
    CategoryId INT PRIMARY KEY,
    Title NVARCHAR(50) NOT NULL,
    Icon NVARCHAR(50),
    Type NVARCHAR(50) DEFAULT 'Expence'
);

-- Створення таблиці Operations
CREATE TABLE Operations
(
    OperationId INT PRIMARY KEY,
    CategoryId INT,
    Amount INT NOT NULL,
    Note NVARCHAR(75),
    Date DATETIME DEFAULT GETDATE(),
    
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
);