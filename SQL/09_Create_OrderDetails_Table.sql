-- Create OrderDetails Table

CREATE TABLE OrderDetails
(
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
	Quantity INT NOT NULL,
	UnitPrice DECIMAL(10,2) NOT NULL,
	Discount DECIMAL(5,2) NOT NULL,


	CONSTRAINT PK_OrderDetails
		PRIMARY KEY(OrderID ,ProductID),

	CONSTRAINT FK_Order_OrderDetails
		FOREIGN KEY (OrderID)
		REFERENCES [Order](OrderID),

	CONSTRAINT FK_Product_OrderDetails
		FOREIGN KEY (ProductID)
		REFERENCES Product(ProductID),

	CONSTRAINT CHK_OrderDetails_Quantity
		CHECK(Quantity > 0),

	CONSTRAINT CHK_OrderDetails_UnitPrice
		CHECK(UnitPrice > 0),

	CONSTRAINT CHK_OrderDetails_Discount
		CHECK(Discount BETWEEN 0 AND 100),

);