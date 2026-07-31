--Create Order Table

CREATE TABLE [Order]
(
	OrderID INT IDENTITY(1,1),
	OrderStatus NVARCHAR(20) NOT NULL,
	OrderDate DATE NOT NULL,
	EmployeeID INT NOT NULL,
	CustomerID INT NOT NULL,

	CONSTRAINT PK_Order
		PRIMARY KEY (OrderID),

	CONSTRAINT FK_Order_Employee
		FOREIGN KEY (EmployeeID)
		REFERENCES Employee(EmployeeID),

	CONSTRAINT FK_Order_Customer
		FOREIGN KEY (CustomerID)
		REFERENCES Customer(CustomerID),

	CONSTRAINT CHK_Order_Status
		CHECK(OrderStatus IN
		(
		'Pending',
        'Processing',
        'Shipped',
        'Delivered',
        'Cancelled'
		))
);
