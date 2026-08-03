-- Insert Data To Branch Table


INSERT INTO Branch(
	BranchName ,
	Phone ,
	Address ,
	City
)
VALUES 
(
    'Cairo Downtown Branch',
    '0225751001',
    'Talaat Harb St., Downtown',
    'Cairo'
),
(
    'Nasr City Branch',
    '0225751002',
    'Abbas El Akkad St.',
    'Cairo'
),
(
    'Alexandria Branch',
    '034851003',
    'Fouad St.',
    'Alexandria'
),
(
    'Mansoura Branch',
    '0502311004',
    'El Gomhoria St.',
    'Dakahlia'
),
(
    'New Capital Branch',
    '0225751005',
    'Financial District',
    'New Administrative Capital'
);

SELECT * FROM Branch