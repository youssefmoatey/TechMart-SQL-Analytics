-- Create Supplier Table

CREATE TABLE Supplier
(
	SupplierID INT IDENTITY(1,1),
	CompanyName NVARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(15) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	Address NVARCHAR(200) NOT NULL,


	CONSTRAINT PK_Supplier
		PRIMARY KEY (SupplierID),

	CONSTRAINT UQ_Supplier_Email
		UNIQUE (Email)
);