CREATE DATABASE TechMartDB;
USE TechMartDB;
GO

CREATE TABLE Category
(
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(50) NOT NULL,
);

-- Insert Data To Category Table
INSERT INTO Category(CategoryID,CategoryName) 
VALUES (1,'Phones'),
(2, 'Laptops'),
(3, 'Accessories')

SELECT * 
FROM Category
