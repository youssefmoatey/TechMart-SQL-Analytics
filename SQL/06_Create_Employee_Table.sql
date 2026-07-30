-- Create Employee Table

CREATE TABLE Employee
(
	EmployeeID INT IDENTITY(1,1),
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Salary DECIMAL(10,2) NOT NULL,
	HiringDate DATE NOT NULL,
	BranchID INT NOT NULL,
	ManagerID INT NULL,

	CONSTRAINT PK_Employee
		PRIMARY KEY(EmployeeID),

	CONSTRAINT FK_Employee_Branch
		FOREIGN KEY (BranchID)
		REFERENCES Branch(BranchID),

	CONSTRAINT FK_Employee_Manager
	FOREIGN KEY (ManagerID)
	REFERENCES Employee(EmployeeID)
);

SELECT * FROM Employee;




