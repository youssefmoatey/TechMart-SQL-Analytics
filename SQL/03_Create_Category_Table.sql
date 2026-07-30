--Create Category Table

CREATE TABLE Category
(
	CategoryID INT IDENTITY(1,1) ,
	CategoryName NVARCHAR(100) NOT NULL,

	 CONSTRAINT PK_Category
        PRIMARY KEY (CategoryID),

    CONSTRAINT UQ_Category_CategoryName
        UNIQUE (CategoryName)
);