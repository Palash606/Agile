-- 1 --
-- SELECT o.OrderID, o.OrderDate, o.TotalAmount, c.FirstName, c.LastName, c.Email
-- FROM Orders o
-- JOIN Customers c ON o.CustomerID = c.CustomerID;

-- 2 --
-- SELECT p.ProductName, SUM(od.Quantity * p.Price) AS TotalRevenue
-- FROM OrderDetails od
-- JOIN Products p ON od.ProductID = p.ProductID
-- GROUP BY p.ProductName;

-- 3 --
-- SELECT c.FirstName, c.LastName, c.Email, c.Phone, c.Address
-- FROM Customers c
-- JOIN Orders o ON c.CustomerID = o.CustomerID
-- GROUP BY c.CustomerID
-- HAVING COUNT(*) >= 1;

-- 4 --
-- SELECT p.ProductName, SUM(od.Quantity) AS TotalQuantityOrdered
-- FROM OrderDetails od
-- JOIN Products p ON od.ProductID = p.ProductID
-- GROUP BY p.ProductName
-- ORDER BY TotalQuantityOrdered DESC
-- LIMIT 1;

-- 5 --
-- ALTER TABLE Products ADD Category VARCHAR(100);
-- SELECT ProductName, Category
-- FROM Products;

-- 6 --
-- SELECT c.FirstName, c.LastName, AVG(o.TotalAmount) AS AverageOrderValue
-- FROM Customers c
-- JOIN Orders o ON c.CustomerID = o.CustomerID
-- GROUP BY c.CustomerID;

-- 7 -- 
-- SELECT o.OrderID, c.FirstName, c.LastName, o.TotalAmount AS TotalRevenue
-- FROM Orders o
-- JOIN Customers c ON o.CustomerID = c.CustomerID
-- ORDER BY o.TotalAmount DESC
-- LIMIT 1;

-- 8 -- 
-- SELECT p.ProductName, COUNT(od.OrderDetailID) AS TimesOrdered
-- FROM Products p
-- JOIN OrderDetails od ON p.ProductID = od.ProductID
-- GROUP BY p.ProductID, p.ProductName;

-- 9 --
-- SELECT DISTINCT c.FirstName, c.LastName, c.Email, c.Phone
-- FROM Customers c
-- JOIN Orders o ON c.CustomerID = o.CustomerID
-- JOIN OrderDetails od ON o.OrderID = od.OrderID
-- JOIN Products p ON od.ProductID = p.ProductID
-- WHERE p.ProductName = 'Tablet';

-- 10 --
-- SELECT SUM(TotalAmount) AS TotalRevenue
-- FROM Orders
-- WHERE OrderDate BETWEEN '2024-09-02' AND '2024-09-08'; 
 





