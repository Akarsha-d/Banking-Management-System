SET SERVEROUTPUT ON;

BEGIN
bank_help.print_help();
END;



BEGIN
CREATE_CUSTOMER('Shreya','svb123456789','Shreya','Bhosale',6567654567,'s.bhosale@gmail.com','Tremont','Boston','MA','USA',45676);
END;

begin
Customer_perform_action();
end;

Begin
Customer_login('Hope','vxlehjapdwh2kjk');
end;

begin
get_customer_details('Hope','Gerhold');
end;


Update Customer
set phone_number= '1234567890'
where first_name='Hope';


Update Customer
set email= 'h.gerhold@gmail.com'
where first_name='Hope';

begin
get_customer_details('Hope','Gerhold');
end;

begin
employee_pkg.employee_perform_action();
end;

begin
employee_pkg.employee_login('Tomas','mda9vk1c');
end;

begin
get_employee_details('Tomas','Smith');
end;


Update employee
set email= 't.smith@gmail.com'
where first_name='Tomas';

Update employee
set phone_number= '7656535980'
where first_name='Tomas';

select * from employee;

Begin
get_customer_details('Nya','Borer');
end;


update loan set ROI = ROI+1 where loan_id = (select loan_id from customer_loan where cust_id = (select cust_id from customer where first_name = 'Nya' and last_name = 'Borer'));
update customer_insurance set coverage = coverage + 1000 where cust_id = (select cust_id from customer where first_name = 'Nya' and last_name = 'Borer');
commit;


Begin
get_customer_details('Nya','Borer');
end;


Update Employee
set email= 's.crooks@gmail.com'
where first_name='Stella';

Update Employee
set phone_number= '2222222222'
where first_name='Stella';

select * from employee;

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

--------------------------------trigger-----------------------------------------------
select * from checking_account where checking_account_id=3;
insert into transactions(type, amount, checking_account_id, savings_account_id, BENEFICIARY_ACC_NUM, FROM_ACC_NUM) values('Credit', 200, 3, null, 9823112354, 4456567687);
select * from checking_account where checking_account_id=3;