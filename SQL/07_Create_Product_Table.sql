USE TechMartDB;
GO

-- Create Product Table

CREATE TABLE Product
(
    ProductID INT IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    ProductDescription NVARCHAR(500) NOT NULL,
    ProductPrice DECIMAL(10,2) NOT NULL,
    ProductStock INT NOT NULL,
    CategoryID INT NOT NULL,
    SupplierID INT NOT NULL,

    CONSTRAINT PK_Product
        PRIMARY KEY (ProductID),

    CONSTRAINT CHK_Product_Price
        CHECK (ProductPrice >= 0),

    CONSTRAINT CHK_Product_Stock
        CHECK (ProductStock >= 0),

    CONSTRAINT FK_Product_Category
        FOREIGN KEY (CategoryID)
        REFERENCES Category(CategoryID),

    CONSTRAINT FK_Product_Supplier
        FOREIGN KEY (SupplierID)
        REFERENCES Supplier(SupplierID)
);

ALTER TABLE Product
ADD CostPrice DECIMAL(10,2) NOT NULL

SELECT * FROM Product