USE TechMartDB;
GO

CREATE TABLE Customer
(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100) NOT NULL,
Phone VARCHAR(20),
City VARCHAR(50)
);

--ADD NEW COLUMN
ALTER TABLE Customer
ADD Email VARCHAR(100)
--Edit Column in Table
ALTER TABLE Customer 
ALTER COLUMN Phone VARCHAR(30)

--Insert Data To Customer Table
INSERT INTO Customer(CustomerID,CustomerName,Phone,City,Email)
VALUES
(1,'Youssef','01011111111','Mansoura','youssef@gmail.com'),
(2,'Ahmed','01022222222','Cairo','ahmed@gmail.com'),
(3,'Sara','01033333333','Alex','sara@gmail.com')

-- UPDATE City From Cairo to Giza
UPDATE Customer
SET City = 'Giza'
WHERE CustomerID = 2

--Delete Sara Customer
DELETE FROM Customer
WHERE CustomerID =3


