SET SERVEROUTPUT ON;

BEGIN
bank_help.print_help();
END;



BEGIN
CREATE_CUSTOMER('Deepti','Akarsha12','Deepti','Akarsha',1234567890,'d.akarsha@gmail.com','Tremont','Boston','MA','USA',12345);
END;

begin
Customer_perform_action();
end;

Begin
Customer_login('Hope','vxlehjapdwh2kjk');
end;

begin
get_customer_details('Hope','Gerhold');
--add address
end;


Update Customer
set phone_number= '1234567890'
where first_name='Hope';


Update Customer
set email= 'h.gerhold@gmail.com'
where first_name='Hope';

begin
employee_pkg.employee_perform_action();
end;

begin
employee_pkg.employee_login('Talon','b0zrsjgr8p69ubp');
end;

begin
get_employee_details('Talon','Veum');
end;

--Query from updating address

Update Customer
set email= 'a.lindgren@gmail.com'
where first_name='Amparo';

Update Customer
set phone_number= '1111111111'
where first_name='Amparo';

select * from employee;

--Get loan_details,insurance_details


update loan set ROI = ROI+1 where loan_id = (select loan_id from customer_loan where cust_id = (select cust_id from customer where first_name = 'Hope' and last_name = 'Gerhold'));
update customer_insurance set coverage = coverage + 1000 where cust_id = (select cust_id from customer where first_name = 'Nya' and last_name = 'Borer');
commit;
--Query from updating address

Update Employee
set email= 's.crooks@gmail.com'
where first_name='Stella';

Update Employee
set phone_number= '2222222222'
where first_name='Stella';

--Views

Select * from  customer_address_details;
Select * from customer_card_details;
Select * from customer_loan_details;
Select * from customer_insurance_details;

Select * from  employee_address_details;
Select * from employee_card_details;
Select * from employee_loan_details;
Select * from employee_insurance_details;

--Indexes
SELECT * FROM CUSTOMER WHERE LAST_NAME='Borer';
select * from customer where first_name='Nya';










