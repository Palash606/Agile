-- Task-1 -- 
-- CREATE DATABASE IF NOT EXISTS techshop;

-- use techshop;

-- CREATE TABLE IF NOT EXISTS Customers (
--     CustomerID INT PRIMARY KEY AUTO_INCREMENT,
--     FirstName VARCHAR(50) NOT NULL,
--     LastName VARCHAR(50) NOT NULL,
--     Email VARCHAR(100) NOT NULL UNIQUE,
--     Phone VARCHAR(20) UNIQUE NOT NULL,
--     Address VARCHAR(255)
-- );

-- CREATE TABLE IF NOT EXISTS Products (
--     ProductID INT PRIMARY KEY AUTO_INCREMENT,
--     ProductName VARCHAR(100) NOT NULL,
--     Description TEXT,
--     Price DECIMAL(10, 2) NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS Orders (
--     OrderID INT PRIMARY KEY AUTO_INCREMENT,
--     CustomerID INT NOT NULL,
--     OrderDate DATE NOT NULL,
--     TotalAmount DECIMAL(10, 2),
--     FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
-- );

-- CREATE TABLE IF NOT EXISTS OrderDetails (
--     OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
--     OrderID INT NOT NULL,
--     ProductID INT NOT NULL,
--     Quantity INT NOT NULL,
--     FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
--     FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
-- );

-- CREATE TABLE IF NOT EXISTS Inventory (
--     InventoryID INT PRIMARY KEY AUTO_INCREMENT,
--     ProductID INT NOT NULL,
--     QuantityInStock INT,
--     LastStockUpdate DATE,
--     FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
-- );

-- INSERT INTO Customers (FirstName, LastName, Email, Phone, Address) 
-- VALUES 
-- ('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St, City'),
-- ('Jane', 'Smith', 'jane.smith@example.com', '0987654321', '456 Oak Ave, Town'),
-- ('Bob', 'Johnson', 'bob.johnson@example.com', '1122334455', '789 Pine Rd, City'),
-- ('Alice', 'Williams', 'alice.williams@example.com', '2233445566', '321 Maple Dr, Village'),
-- ('David', 'Brown', 'david.brown@example.com', '3344556677', '654 Birch Blvd, City'),
-- ('Carol', 'Taylor', 'carol.taylor@example.com', '4455667788', '987 Cedar Ln, Town'),
-- ('Eve', 'Anderson', 'eve.anderson@example.com', '5566778899', '159 Spruce Ct, Village'),
-- ('Frank', 'Thomas', 'frank.thomas@example.com', '6677889900', '753 Elm St, Town'),
-- ('Grace', 'Lee', 'grace.lee@example.com', '7788990011', '951 Redwood Ave, City'),
-- ('Hank', 'Martin', 'hank.martin@example.com', '8899001122', '258 Palm Dr, Town');

-- INSERT INTO Products (ProductName, Description, Price) 
-- VALUES 
-- ('Laptop', 'High-performance laptop', 1200.00),
-- ('Smartphone', 'Latest smartphone with AI features', 899.99),
-- ('Tablet', 'Lightweight and portable tablet', 399.99),
-- ('Smartwatch', 'Wearable with fitness tracking', 199.99),
-- ('Headphones', 'Wireless noise-canceling headphones', 149.99),
-- ('Monitor', '4K ultra HD monitor', 299.99),
-- ('Keyboard', 'Mechanical keyboard with backlight', 89.99),
-- ('Mouse', 'Ergonomic wireless mouse', 49.99),
-- ('Printer', 'All-in-one color printer', 149.99),
-- ('Router', 'Dual-band Wi-Fi router', 99.99);

-- INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) 
-- VALUES 
-- (1, '2024-09-01', 1349.99),
-- (2, '2024-09-02', 899.99),
-- (3, '2024-09-03', 399.99),
-- (4, '2024-09-04', 199.99),
-- (5, '2024-09-05', 149.99),
-- (6, '2024-09-06', 299.99),
-- (7, '2024-09-07', 89.99),
-- (8, '2024-09-08', 49.99),
-- (9, '2024-09-09', 149.99),
-- (10, '2024-09-10', 99.99);

-- INSERT INTO OrderDetails (OrderID, ProductID, Quantity) 
-- VALUES 
-- (1, 1, 1),
-- (2, 2, 1),
-- (3, 3, 2),
-- (4, 4, 1),
-- (5, 5, 3),
-- (6, 6, 1),
-- (7, 7, 1),
-- (8, 8, 2),
-- (9, 9, 1),
-- (10, 10, 1);

-- INSERT INTO Inventory (ProductID, QuantityInStock, LastStockUpdate) VALUES
-- (1, 50, '2024-09-01'),
-- (2, 75, '2024-09-02'),
-- (3, 30, '2024-09-03'),
-- (4, 40, '2024-09-04'),
-- (5, 25, '2024-09-05'),
-- (6, 20, '2024-09-06'),
-- (7, 60, '2024-09-07'),
-- (8, 100, '2024-09-08'),
-- (9, 35, '2024-09-09'),
-- (10, 15, '2024-09-10');

-- Task-2 --
-- 1 --
-- select Firstname, Lastname, Email from customers;

-- 3 -- 
-- INSERT INTO Customers (FirstName, LastName, Email, Phone, Address)
-- VALUES ('Palash', 'Shah', 'p.shah@email.com', '9876543210', '123, ABC Colony');

-- 4 --
-- UPDATE Products
-- SET Price = Price * 1.1
-- WHERE Description LIKE '%electronic%';

-- 5 --
-- DELETE FROM OrderDetails
-- WHERE OrderID = 1;

-- DELETE FROM Orders
-- WHERE OrderID = 1;

-- 6 --
-- INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
-- VALUES (1, '2024-09-19', 150.00);

-- 7 -- 
-- UPDATE Customers
-- SET Email = 'palash@email.com', Address = 'Indore'
-- WHERE CustomerID = 1;

-- 8 -- 
-- UPDATE Orders o -- 
-- JOIN ( -- 
--   SELECT od.OrderID, SUM(od.Quantity * p.Price) AS TotalCost -- 
--    FROM OrderDetails od -- 
--    JOIN Products p ON od.ProductID = p.ProductID -- 
--    GROUP BY od.OrderID ) --
-- AS calculatedTotals --
-- ON o.OrderID = calculatedTotals.OrderID --
-- SET o.TotalAmount = calculatedTotals.TotalCost; --

-- 9 --
-- DELETE FROM OrderDetails
-- WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = 1);

-- DELETE FROM Orders
-- WHERE CustomerID = 1;

-- 10 --
-- INSERT INTO Products (ProductName, Description, Price) 
-- VALUES ('IPhone 16', 'Iphone', 2000);

-- 11 -- 
-- ALTER TABLE Orders ADD Status VARCHAR(50) DEFAULT 'Pending';
-- UPDATE Orders
-- SET Status = 'Pending'
-- WHERE OrderID = 1;

-- 12 --
-- ALTER TABLE Customers ADD NumberOfOrders INT DEFAULT 0;

-- UPDATE Customers c
-- SET c.NumberOfOrders = (
--     SELECT COUNT(*) 
--     FROM Orders o
--     WHERE o.CustomerID = c.CustomerID
-- );




