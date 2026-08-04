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
--Alexandria Branch Employee
VALUES
-- Branch Manager
('Mahmoud','Abdelrahman',
'Branch Manager',
21000.00,
'2022-02-10',
3,
NULL),

-- Sales Representatives
('Omar','Fouad',
'Sales Representative',
10400.00,
'2023-05-15',
3,
20),

('Mina','Nabil',
'Sales Representative',
9700.00,
'2023-11-08',
3,
20),

('Aya','Sherif',
'Sales Representative',
9300.00,
'2024-03-22',
3,
20),

('Youssef','Hesham',
'Sales Representative',
9500.00,
'2024-08-14',
3,
20),

-- Cashiers
('Salma','Gamal',
'Cashier',
7900.00,
'2024-06-01',
3,
20),

('Ahmed','Wael',
'Cashier',
7600.00,
'2025-01-17',
3,
20),

-- Storekeepers
('Khaled','Saad',
'Storekeeper',
8500.00,
'2023-10-03',
3,
20),

('Farah','Mostafa',
'Storekeeper',
8100.00,
'2024-12-05',
3,
20);

SELECT * FROM Employee
WHERE BranchID = 3 
ORDER BY EmployeeID