--Create Payment Table 

CREATE TABLE Payment
(
	PaymentID INT IDENTITY(1,1),
	OrderID INT NOT NULL,
	PaymentAmount DECIMAL(10,2) NOT NULL,
	PaymentDate DATETIME NOT NULL,
	PaymentMethod NVARCHAR(30) NOT NULL,
	PaymentStatus NVARCHAR(30) NOT NULL,
	

	CONSTRAINT PK_Payment
		PRIMARY KEY(PaymentID),

	CONSTRAINT CHK_PaymentAmount
		CHECK(PaymentAmount > 0),

	CONSTRAINT FK_Order_Payment
		FOREIGN KEY (OrderID)
		REFERENCES [Order](OrderID),

	CONSTRAINT UQ_Payment_OrderID
		UNIQUE(OrderID),

	CONSTRAINT CHK_PaymentMethod
		CHECK(PaymentMethod IN(
			'Cash',
			'Credit Card',
			'Wallet',
			'Bank Transfer'
		)),


	CONSTRAINT CHK_PaymentStatus
		CHECK(PaymentStatus IN(
			'Pending',
			'Paid',
			'Failed',
			'Refunded'
		))

);