
-- -----------------------------------------------------
-- Data for table `bank`.`card_services`
-- -----------------------------------------------------
START TRANSACTION;
USE `bank`;
INSERT INTO `bank`.`card_services` (`card_services_id`, `type`) VALUES (1, 'DEPOSIT');
INSERT INTO `bank`.`card_services` (`card_services_id`, `type`) VALUES (2, 'WITHDRAW');

COMMIT;


-- -----------------------------------------------------
-- Data for table `bank`.`customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `bank`;
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (1, 'customer 1', '123', 'customer', 'one',  , '254', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (2, 'customer 2', '321', 'cust', 'two',  , '542', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 3', 'ABC', 'cust', 'three',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 4', 'abc', 'cust', 'four',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 5', 'cba', 'cust', 'five',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 6', 'CBA', 'cust', 'six',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 7', 'one', 'cust', 'seven',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 8', 'two', 'cust', 'eight',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 9', 'three', 'cust', 'nine',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 10', '4', 'cust', 'ten',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 11', '5', 'cust', 'eleven',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 12', '6', 'cust', 'twelve',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 13', '7', 'cust', 'thirteen',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 14', '8', 'cust', 'fourteen',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 15', '9', 'cust', 'fifteen',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 16', '', 'cust', 'sixteen',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 17', ' ', 'cust', 'seventeen',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 18', '', 'cust', 'eighteen',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 19', '', 'cust', 'nineteen',  , ' ', NULL, NULL);
INSERT INTO `bank`.`customer` (`cust_id`, `username`, `password`, `first_name`, `last_name`, `phone_number`, `email`, `address_id`, `account_id`) VALUES (DEFAULT, 'customer 20', '', 'cust', 'twenty',  , ' ', NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `bank`.`customer_card_service`
-- -----------------------------------------------------
START TRANSACTION;
USE `bank`;
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 1);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 2);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 3);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 4);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 5);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 6);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 7);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 8);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 9);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (1, 10);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 11);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 12);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 14);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 13);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 15);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 16);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 17);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 18);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 19);
INSERT INTO `bank`.`customer_card_service` (`card_service_id`, `cust_id`) VALUES (2, 20);

COMMIT;


-- -----------------------------------------------------
-- Data for table `bank`.`customer_loan_details`
-- -----------------------------------------------------
START TRANSACTION;
USE `bank`;
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (1, 1);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (2, 2);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (3, 3);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (4, 4);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (5, 5);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (6, 6);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (7, 7);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (8, 8);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (9, 9);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (10, 10);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (11, 11);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (12, 12);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (13, 13);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (15, 14);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (15, 15);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (16, 16);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (17, 17);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (18, 18);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (19, 19);
INSERT INTO `bank`.`customer_loan_details` (`loan_id`, `cust_id`) VALUES (20, 20);

COMMIT;


-- -----------------------------------------------------
-- Data for table `bank`.`employee`
-- -----------------------------------------------------
START TRANSACTION;
USE `bank`;
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (1, 'emp 1', ' ', 'test1@domain.com', DEFAULT, 'emp', 'one', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (2, 'emp 2', ' ', 'test2@domain.com', DEFAULT, 'emp', 'two', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (3, 'emp3', ' ', 'test3@domain.com', DEFAULT, 'emp', 'three', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (4, 'emp4', ' ', 'test4@domain.com', DEFAULT, 'emp', 'four', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (5, 'emp5', ' ', 'test5@domain.com', DEFAULT, 'emp', 'five', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (6, 'emp6', ' ', 'test6@domain.com', DEFAULT, 'emp', 'six', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (7, 'emp7', ' ', 'test7@domain.com', DEFAULT, 'emp', 'seven', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (8, 'emp8', ' ', 'test8@domain.com', DEFAULT, 'emp', 'eight', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (9, 'emp9', ' ', 'test9@domain.com', DEFAULT, 'emp', 'nine', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (10, 'emp10', ' ', 'test10@domain.com', DEFAULT, 'emp', 'ten', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (11, 'emp11', ' ', 'test11@domain.com', DEFAULT, 'emp', 'eleven', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (12, 'emp12', ' ', 'test12@domain.com', DEFAULT, 'emp', 'twelve', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (13, 'emp13', ' ', 'test13@domain.com', DEFAULT, 'emp', 'thirteen', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (14, 'emp14', ' ', 'test14@domain.com', DEFAULT, 'emp', 'fourteen', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (15, 'emp15', ' ', 'test15@domain.com', DEFAULT, 'emp', 'fifteen', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (16, 'emp16', ' ', 'test16@domain.com', DEFAULT, 'emp', 'sixteen', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (17, 'emp17', ' ', 'test17@domain.com', DEFAULT, 'emp', 'seventeen', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (18, 'emp18', ' ', 'test18@domain.com', DEFAULT, 'emp', 'eighteen', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (19, 'emp19', ' ', 'test19@domain.com', DEFAULT, 'emp', 'nineteen', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
INSERT INTO `bank`.`employee` (`emp_id`, `username`, `password`, `email`, `phone_number`, `first_name`, `last_name`, `designation_id`, `salary`, `date_joined`, `address_id`, `account_id`, `branch_id`) VALUES (20, 'emp20', ' ', 'test20@domain.com', DEFAULT, 'emp', 'twenty', DEFAULT, 10000, DEFAULT, DEFAULT, DEFAULT, DEFAULT);

COMMIT;


-- -----------------------------------------------------
-- Data for table `bank`.`employee_card_services`
-- -----------------------------------------------------
START TRANSACTION;
USE `bank`;
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 1);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 2);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 3);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 4);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 5);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 6);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 7);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 8);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 9);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (1, 10);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 11);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 12);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 13);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 14);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 15);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 16);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 17);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 18);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 19);
INSERT INTO `bank`.`employee_card_services` (`card_service_id`, `emp_id`) VALUES (2, 20);

COMMIT;


-- -----------------------------------------------------
-- Data for table `bank`.`employee_loan_detail`
-- -----------------------------------------------------
START TRANSACTION;
USE `bank`;
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (1, 1);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (2, 2);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (3, 3);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (4, 4);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (5, 5);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (6, 6);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (7, 7);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (8, 8);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (9, 9);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (10, 10);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (11, 11);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (12, 12);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (13, 14);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (14, 13);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (15, 15);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (16, 16);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (17, 17);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (18, 18);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (19, 19);
INSERT INTO `bank`.`employee_loan_detail` (`loan_id`, `emp_id`) VALUES (20, 20);

COMMIT;


-- -----------------------------------------------------
-- Data for table `bank`.`loan`
-- -----------------------------------------------------
START TRANSACTION;
USE `bank`;
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (1, 'Credit card cash advances', 1000, 0, 1);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (2, 'Home equity', 2000, 0, 2);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (3, 'Payday alternative', 3000, 0, 3);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (4, 'Pawn shop', 4000, 0, 4);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (5, 'Title ', 5000, 0, 5);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (6, 'Payday', 6000, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (7, 'Secured personal', 7000, 0, 7);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (8, 'Unsecured personal', 8000, 0, 8);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (9, 'Credit card cash advances', 9000, 0, 9);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (10, 'Home equity', 1000, 0, 10);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (11, 'Payday alternative', 1100, 0, 11);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (12, 'Payday', 1200, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (13, 'Payday', 1300, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (14, 'Payday', 1400, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (15, 'Payday', 1500, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (16, 'Payday', 1600, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (17, 'Payday', 1700, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (18, 'Payday', 1800, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (19, 'Payday', 1900, 0, 6);
INSERT INTO `bank`.`loan` (`loan_id`, `type`, `amount`, `roi`, `duration`) VALUES (20, 'Payday', 2000, 0, 6);

COMMIT;

