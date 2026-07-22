USE TechMartDB;
GO
------------------
SELECT *
FROM Product
-------------------
--1 Show all Products
SELECT ProductName
FROM Product
--2 Show ProductName & ProductPrice
SELECT ProductName, ProductPrice 
FROM Product
--3 Show products that cost more than 30,000 
SELECT ProductName
FROM Product
WHERE ProductPrice > 30000
--4 Show products that ProductStock < 20
SELECT ProductName , ProductStock
FROM Product
WHERE ProductStock < 20
--5 Show products from most expensive to cheapest
SELECT * 
FROM Product 
ORDER BY ProductPrice DESC
--6 Show products from most cheapest to expensive
SELECT *
FROM Product 
ORDER BY ProductPrice ASC
--7 Show First 2 product
SELECT TOP 2*
FROM Product
--8 Show products with prices between: 100 , 50000
SELECT *
FROM Product 
WHERE ProductPrice > 100
AND ProductPrice < 50000;
--OR 
SELECT *
FROM Product 
WHERE ProductPrice BETWEEN 500 AND  1000 
--9 Show Product Name that   Start with 'M' character
SELECT *
FROM Product
WHERE ProductName LIKE 'm%';
--10 Show products that category id = 1 or 3 by IN
SELECT * 
FROM Product
WHERE CategoryID IN(1,3)
-- BONUS CHALLENGE Show products that cost more than 1000 and have less than 20 in stock
SELECT *
FROM Product 
WHERE ProductPrice > 1000 AND ProductStock < 20;
-------------------------------
SELECT CategoryID , CategoryName
FROM Category
-------------------------------
SELECT * 
FROM Product 
WHERE CategoryID = 1 AND
ProductPrice BETWEEN 1000 AND 50000
---------------------------------
SELECT *
FROM Product
WHERE CategoryID IN (1,2)
AND ProductPrice > 30000
ORDER BY ProductPrice DESC
----------------------------
SELECT * 
FROM Product 
WHERE CategoryID <> 3
-----------------------------


