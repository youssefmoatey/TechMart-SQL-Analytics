-- Insert Data to Employee Table

INSERT INTO  Employee(
	FirstName ,
	LastName ,
	JobTitel ,
	Salary ,
	HiringDate ,
	BranchID ,
	ManagerID
)
--Cairo Downtown Employees
VALUES 
-- Branch Manager
('Ahmed','Hassan',
'Branch Manager',
22000.00,
'2022-01-15',
1,
NULL),

-- Sales Representatives
('Omar','Khaled',
'Sales Representative',
10500.00,
'2023-03-10',
1,
1),

('Sara','Ibrahim',
'Sales Representative',
9800.00,
'2023-05-18',
1,
1),

('Karim','Adel',
'Sales Representative',
9200.00,
'2024-02-14',
1,
1),

('Mariam','Mahmoud',
'Sales Representative',
9500.00,
'2024-06-08',
1,
1),

('Emad','Hasan',
'Sales Representative',
11000.00,
'2025-01-20',
1,
1),

-- Cashiers
('Nour','Mohamed',
'Cashier',
8200.00,
'2024-07-01',
1,
1),

('Mostafa','Ali',
'Cashier',
7800.00,
'2025-03-15',
1,
1),

-- Storekeepers
('Mahmoud','Nasser',
'Storekeeper',
8500.00,
'2023-11-10',
1,
1),

('Salma','Ahmed',
'Storekeeper',
8100.00,
'2024-09-25',
1,
1);

SELECT * FROM Employee
 