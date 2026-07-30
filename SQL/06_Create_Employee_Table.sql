-- Create Employee Table

CREATE TABLE Employee
(
	EmployeeID INT IDENTITY(1,1),
	EmployeeName NVARCHAR(100) NOT NULL,
	Salary DECIMAL(10,2) NOT NULL,
	HiringDate DATE NOT NULL,
	BranchID INT NOT NULL,

	CONSTRAINT PK_Employee
		PRIMARY KEY(EmployeeID),

	CONSTRAINT FK_Employee_Branch
		FOREIGN KEY (BranchID)
		REFERENCES Branch(BranchID)
);
