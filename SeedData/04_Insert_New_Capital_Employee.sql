-- Insert Data to Employee Table
INSERT INTO Employee
(
    FirstName,
    LastName,
    JobTitel,
    Salary,
    HiringDate,
    BranchID,
    ManagerID
)
--New Capital Branch Employee
VALUES
-- Branch Manager
('Sherif','Mohamed',
'Branch Manager',
20000.00,
'2022-08-01',
5,
NULL),

-- Sales Representatives
('Yahia','Ahmed',
'Sales Representative',
10200.00,
'2023-07-18',
5,
36),

('Malak','Mahmoud',
'Sales Representative',
9600.00,
'2024-02-25',
5,
36),

('Mazen','Khaled',
'Sales Representative',
9100.00,
'2024-09-12',
5,
36),

-- Cashier
('Reem','Ali',
'Cashier',
7800.00,
'2024-11-05',
5,
36),

-- Storekeeper
('Adel','Samy',
'Storekeeper',
8500.00,
'2023-12-20',
5,
36);

SELECT * FROM Employee
WHERE BranchID = 5
ORDER BY EmployeeID