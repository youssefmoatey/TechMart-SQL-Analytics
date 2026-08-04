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
--Nasr City Employees
VALUES
-- Branch Manager
('Mohamed','Nasser',
'Branch Manager',
21500.00,
'2022-03-12',
2,
NULL),

-- Sales Representatives
('Amr','Hassan',
'Sales Representative',
10300.00,
'2023-04-20',
2,
11),

('Nada','Ali',
'Sales Representative',
9800.00,
'2023-08-15',
2,
11),

('Hossam','Samir',
'Sales Representative',
9200.00,
'2024-01-18',
2,
11),

('Yasmine','Khaled',
'Sales Representative',
9600.00,
'2024-10-07',
2,
11),

-- Cashiers
('Ahmed','Fathy',
'Cashier',
8000.00,
'2024-06-12',
2,
11),

('Hana','Maher',
'Cashier',
7700.00,
'2025-02-09',
2,
11),

-- Storekeepers
('Tarek','Reda',
'Storekeeper',
8600.00,
'2023-12-01',
2,
11),

('Laila','Mostafa',
'Storekeeper',
8200.00,
'2024-11-21',
2,
11);


