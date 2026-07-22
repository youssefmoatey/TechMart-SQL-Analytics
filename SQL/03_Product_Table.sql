USE TechMartDB;
GO

CREATE TABLE Product
(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
ProductPrice DECIMAL(10,2) NOT NULL,
ProductStock INT NOT NULL,
-- to create Foreign Key
--CategoryID INT REFERENCES Category(CategoryID), OR
CategoryID INT,
FOREIGN KEY (CategoryID)
REFERENCES Category(CategoryID)
);

-- Insert Data to Product Table
INSERT INTO Product(ProductID,ProductName,ProductPrice,ProductStock,CategoryID)
VALUES
(1,'iPhone 16',50000 ,15 ,1),
(2,'Galaxy S25',42000 ,20 ,1),
(3,'MacBook Air',65000 ,10 ,2),
(4,'Mouse',500 ,100 ,3)

-- UPDATE Mouse Price From 500 to 650
UPDATE Product
SET ProductPrice = 650
WHERE ProductID = 4

-- UPDATE ProductStock of MacBook Air from 10 to 7
UPDATE Product
SET ProductStock = 7
WHERE ProductID =3 

--INSERT NEW Product (AirPods)
INSERT INTO Product(ProductID,ProductName,ProductPrice,ProductStock,CategoryID)
VALUES(5,'AirPods', 500, 13, 3)

SELECT * 
FROM Product
