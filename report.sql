-- creating reporting categories using the Cartesian product
SELECT 
	'employee.id' as emp_id,
	'employee.last_name' as emp_last_name,
    'employee.first_name' as emp_first_name,
    'loan.type' as loan_type,
    'loan.amount' as amount,
    'loan.roi' as ROI,
    'loan.duration' as duration
FROM employee, loan;

-- creating reporting categories using the Cartesian product
SELECT 
	'customer.id' as emp_id,
	'customer.last_name' as emp_last_name,
    'customer.first_name' as emp_first_name,
    'loan.type' as loan_type,
    'loan.amount' as amount,
    'loan.roi' as ROI,
    'loan.duration' as duration
FROM customer, loan;
    