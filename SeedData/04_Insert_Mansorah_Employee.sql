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
--Mansoura Branch Employee
VALUES
-- Branch Manager
('Ibrahim','Mahmoud',
'Branch Manager',
20500.00,
'2022-04-15',
4,
NULL),

-- Sales Representatives
('Mohamed','Elsayed',
'Sales Representative',
10000.00,
'2023-06-12',
4,
29),

('Abdelrahman','Tarek',
'Sales Representative',
9400.00,
'2023-10-18',
4,
29),

('Nour','Ashraf',
'Sales Representative',
9100.00,
'2024-05-20',
4,
29),

-- Cashiers
('Esraa','Ahmed',
'Cashier',
7900.00,
'2024-07-14',
4,
29),

('Menna','Hossam',
'Cashier',
7600.00,
'2025-01-09',
4,
29),

-- Storekeeper
('Ahmed','Ramadan',
'Storekeeper',
8400.00,
'2023-12-11',
4,
29);

SELECT * FROM Employee
WHERE BranchID = 4
ORDER BY EmployeeID