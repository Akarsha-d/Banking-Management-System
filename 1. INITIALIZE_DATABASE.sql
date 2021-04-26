--Create DESIGNATION Table
SET SERVEROUTPUT ON;
DECLARE nCount NUMBER;

BEGIN
SELECT count(*) into nCount FROM user_tables where table_name = 'DESIGNATION';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE DESIGNATION ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE DESIGNATION(
     DESIGNATION_ID        NUMBER GENERATED BY DEFAULT AS IDENTITY,
     NAME                  VARCHAR(16) UNIQUE NOT NULL,
     PRIMARY KEY(DESIGNATION_ID))';
	execute immediate 'insert into DESIGNATION(name) values(''General Manager'')';
     	execute immediate 'insert into designation (name) values (''Assistant General Manager'')';
	execute immediate 'insert into designation (name) values (''Managing Director'')';
	execute immediate 'insert into designation (name) values (''Branch Manager'')';
	execute immediate 'insert into designation (name) values (''Clerk'')';
	execute immediate 'insert into designation (name) values (''Probationary Officer'')';
	execute immediate 'insert into designation (name) values (''Chairperson'')';
	execute immediate 'insert into designation (name) values (''Deputy Managing Director'')';
	execute immediate 'insert into designation (name) values (''Chief General Manager'')';
	execute immediate 'insert into designation (name) values (''Loan Officer'')';	    
END IF;

--Create LOAN Table
SELECT count(*) into nCount FROM user_tables where table_name = 'LOAN';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE LOAN ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE LOAN(
      LOAN_ID       NUMBER GENERATED BY DEFAULT AS IDENTITY,
      TYPE          VARCHAR(20) NOT NULL,
      AMOUNT        NUMBER(20)  NOT NULL,
      ROI           FLOAT(15)   NOT NULL,
      DURATION      FLOAT(15),    
      PRIMARY KEY(LOAN_ID))';  
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Car'',5000,9,1.5)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Home'',25000,10,3)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Marriage'',1000,11,5)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Education'',50000,6,10)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Personal'',40000,10,2)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Home Renovation'',75000,4.75,15)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Equity'',45000,6,12)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Payday'',35000,5,5.5)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Business'',19000,8.35,6)';
      execute immediate 'insert into LOAN(TYPE, AMOUNT, ROI, DURATION) VALUES (''Business'',31500,7.85,8)';
END IF;


--Create CARD_SERVICES Table
SELECT count(*) into nCount FROM user_tables where table_name = 'CARD_SERVICES';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('CARD_SERVICES ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CARD_SERVICES(
      CARD_SERVICES_ID        NUMBER GENERATED BY DEFAULT AS IDENTITY,
      TYPE                    VARCHAR(20) NOT NULL,
      CARD_NUMBER             NUMBER(20)  UNIQUE NOT NULL,
      VALID_THROUGH           VARCHAR(15) NOT NULL,
      CVV                     NUMBER(15)  NOT NULL,
      CHECK(REGEXP_LIKE(CARD_NUMBER,''^[0-9]{16}$'')),
      CHECK(REGEXP_LIKE(VALID_THROUGH,''^((0[1-9])|(1[0-2]))\/(\d{4})$'')),
      CHECK(REGEXP_LIKE(CVV,''^[0-9]{3}$'')),
      PRIMARY KEY(CARD_SERVICES_ID))';    
      
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Credit'',1675435567654534,''05/2025'',799)';
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Debit'',7654676567653343,''08/2021'',500)';
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Debit'',9835367637661235,''09/2021'',316)';
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Credit'',7654567654563423,''12/2024'',534)';
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Credit'',8856243527656209,''01/2023'',420)';
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Debit'',6756145245657867,''11/2024'',785)';
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Debit'',2676098788980025,''06/2021'',300)';
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Credit'',3878542276760112,''07/2025'',250)';
      execute immediate 'insert into CARD_SERVICES(TYPE, CARD_NUMBER, VALID_THROUGH, CVV) VALUES (''Debit'',4522527726518799,''03/2023'',199)';
END IF;

--Create ADDRESS Table
SELECT count(*) into nCount FROM user_tables where table_name = 'ADDRESS';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('ADDRESS ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE ADDRESS(
      ADDRESS_ID             NUMBER GENERATED BY DEFAULT AS IDENTITY,
      ADDRESSLINE            VARCHAR(20) NOT NULL,
      CITY                   VARCHAR(15) NOT NULL,
      STATE                  NUMBER(15)  NOT NULL,    
      COUNTRY                VARCHAR(20) NOT NULL,
      ZIP_CODE               NUMBER(6) NOT NULL,
      CHECK(REGEXP_LIKE(ZIP_CODE,''^[0-9]{5}$'')),
      PRIMARY KEY(ADDRESS_ID))';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''1620 Mission Hill'',''Boston'',''MA'',''USA'',21201)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''1376 Mission Main'',''Boston'',''MA'',''USA'',21202)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''1667 Calumet Street'',''Chicago'',''IL'',''USA'',21203)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''2679 Summer Street'',''Chicago'',''IL'',''USA'',21204)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''3336 Euclid Avenue'',''Cleveland'',''OH'',''USA'',41205)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''Broadway Avenue'',''Cleveland'',''OH'',''USA'',21206)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''2345 Ontorio Street'',''Cleveland'',''OH'',''USA'',21207)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''Aerojet Drive'',''Sacramento'',''CA'',''USA'',21208)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''Alta Mesa Road'',''Sacramento'',''CA'',''USA'',21209)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE) VALUES(''1575 Tremont Street'',''Boston'',''MA'',''USA'',21210)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE)VALUES(''43527 Ward Trace'',''Lake Kristina'',''MI'',''USA'',83400)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE)VALUES(''80353 Jarrod 	Route'',''New Daytonfurt'',''AK'',''USA'',89816)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE)VALUES(''1584 Von Knolls'',''Hegmannberg'',''CO'',''USA'',23207)';
	EXECUTE IMMEDIATE 'INSERT INTO ADDRESS(ADDRESSLINE,CITY,STATE,COUNTRY,ZIP_CODE)VALUES(''19086 Terrence Manor'',''North 	Cleora'',''NV'',''USA'',61908)';  
END IF;

--Create BRANCH table
SELECT count(*) into nCount FROM user_tables where table_name = 'BRANCH';
IF(nCount > 0)
THEN
    dbms_output.put_line('TABLE BRANCH ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE BRANCH(
  BRANCH_ID            NUMBER GENERATED BY DEFAULT AS IDENTITY,
  ADDRESS_ID           INTEGER NOT NULL,
  NAME        VARCHAR(255) NOT NULL,
  ROUTING_NUMBER INTEGER NOT NULL,
  SWIFT_CODE VARCHAR(20) NOT NULL,
  CHECK(REGEXP_LIKE(ROUTING_NUMBER,''^[0-9]{9}$'')),
  PRIMARY KEY(BRANCH_ID))';
	execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=21201),''Boston Republic Bank'',876543219,''BANKUS12345'')';
    execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=21202),''Boston Eastern Bank'',876543218,''BANKUS12346'')';
    execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=21203),''Boston Western Bank'',876543217,''BANKUS12347'')';
    execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=21204),''Boston Northearn Bank'',876543216,''BANKUS12348'')';
    execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=41205),''Boston Southern Bank'',876543215,''BANKUS12349'')';
    execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=21206),''Boston Public Bank'',876543214,''BANKUS12341'')';
    execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=21207),''Boston General Bank'',876543213,''BANKUS12342'')';
    execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=21208),''Boston Bank'',876543212,''BANKUS12343'')';
    execute immediate 'insert into BRANCH (ADDRESS_ID,NAME,ROUTING_NUMBER,SWIFT_CODE) values ((select address_id from address where zip_code=21209),''Boston America'',876543211,''BANKUS12344'')';
    
END IF;
--Create Savings_Account table
SELECT count(*) into nCount FROM user_tables where table_name = 'SAVINGS_ACCOUNT';
IF(nCount > 0)
THEN
    dbms_output.put_line('TABLE SAVINGS_ACCOUNT ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE SAVINGS_ACCOUNT(
      SAVINGS_ACCOUNT_ID       NUMBER GENERATED BY DEFAULT AS IDENTITY,
      ACCOUNT_NUMBER           INTEGER UNIQUE NOT NULL,
      ACCOUNT_BALANCE          NUMBER NOT NULL,
      BRANCH_ID                REFERENCES BRANCH(BRANCH_ID) ON DELETE CASCADE,
      PRIMARY KEY(SAVINGS_ACCOUNT_ID))'; 
	execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (9126653085,650000,(select branch_id from branch where address_id=40))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8880846973,500000,(select branch_id from branch where address_id=40))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (5030861076,450000,(select branch_id from branch where address_id=39))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8901512373,26699,(select branch_id from branch where address_id=39))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (5721915186,76540,(select branch_id from branch where address_id=38))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (9035770670,34890,(select branch_id from branch where address_id=38))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (7225991317,6500,(select branch_id from branch where address_id=37))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (9080114049,7896,(select branch_id from branch where address_id=37))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (3498976545,3500,(select branch_id from branch where address_id=36))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (7307271218,498750,(select branch_id from branch where address_id=36))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8155991489,500,(select branch_id from branch where address_id=41))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8160114490,1896,(select branch_id from branch where address_id=42))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8178976491,7500,(select branch_id from branch where address_id=43))';
 execute immediate 'insert into SAVINGS_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8187271492,8750,(select branch_id from branch where address_id=44))';
END IF;

--Create Checking _Account table
SELECT count(*) into nCount FROM user_tables where table_name = 'CHECKING_ACCOUNT';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE CHECKING_ACCOUNT ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CHECKING_ACCOUNT(
      CHECKING_ACCOUNT_ID      NUMBER GENERATED BY DEFAULT AS IDENTITY,
      ACCOUNT_NUMBER           INTEGER UNIQUE NOT NULL,
      ACCOUNT_BALANCE          NUMBER NOT NULL,
      BRANCH_ID                REFERENCES BRANCH(BRANCH_ID) ON DELETE CASCADE,
      PRIMARY KEY(CHECKING_ACCOUNT_ID))';
execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (9126653090,950000,(select branch_id from branch where address_id=38))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8880846991,600000,(select branch_id from branch where address_id=40))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (5030861092,950000,(select branch_id from branch where address_id=39))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8901512393,76699,(select branch_id from branch where address_id=39))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (5721915194,96540,(select branch_id from branch where address_id=38))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (9035770695,64890,(select branch_id from branch where address_id=37))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (7225991396,9500,(select branch_id from branch where address_id=37))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (9080114097,8896,(select branch_id from branch where address_id=36))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (3498976598,5500,(select branch_id from branch where address_id=36))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (7307271299,998750,(select branch_id from branch where address_id=40))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8155991396,2400,(select branch_id from branch where address_id=41))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8160114097,5896,(select branch_id from branch where address_id=42))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8178976598,3500,(select branch_id from branch where address_id=43))';
 execute immediate 'insert into CHECKING_ACCOUNT (ACCOUNT_NUMBER,ACCOUNT_BALANCE,BRANCH_ID) values (8187271299,2050,(select branch_id from branch where address_id=44))';

END IF;

--Create Transaction table
SELECT count(*) into nCount FROM user_tables where table_name = 'TRANSACTIONS';
IF(nCount > 0)
THEN
    dbms_output.put_line('TABLE TRANSACTIONS ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE TRANSACTIONS(
  TRANSACTION_ID            NUMBER GENERATED BY DEFAULT AS IDENTITY,
  TYPE                      VARCHAR(30) NOT NULL,
  AMOUNT                    NUMBER NOT NULL,
  CHECKING_ACCOUNT_ID       REFERENCES CHECKING_ACCOUNT(CHECKING_ACCOUNT_ID),
  SAVINGS_ACCOUNT_ID        REFERENCES SAVINGS_ACCOUNT(SAVINGS_ACCOUNT_ID),
  BENEFICIARY_ACC_NUM       INTEGER,
  FROM_ACC_NUM              INTEGER,
  TRANSACTION_TIMESTAMP     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CHECK(REGEXP_LIKE(BENEFICIARY_ACC_NUM,''^[0-9]{10}$'')),
  CHECK(REGEXP_LIKE(FROM_ACC_NUM,''^[0-9]{10}$'')),
  PRIMARY KEY(TRANSACTION_ID))';
    
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Credit'',50,(select checking_account_id from checking_account where account_number = 8160114097),NULL,NULL,7867656545)';
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Debit'',150,NULL,(select savings_account_id from savings_account where account_number = 8160114490),4567676545,NULL)';
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Debit'',25,NULL,(select savings_account_id from savings_account where account_number = 7225991317),7656763454,NULL)';
  execute immediate 'insert into TRANSACTION(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Credit'',1050,NULL,(select savings_account_id from savings_account where account_number = 7225991317),NULL,7867656545)';
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Debit'',80,NULL,(select savings_account_id from savings_account where account_number = 8880846973),2345765634,NULL)';
  execute immediate 'insert into TRANSACTION(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Credit'',50,NULL,(select savings_account_id from savings_account where account_number = 9035770670),NULL,7867656545)';
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Debit'',150,(select checking_account_id from checking_account where account_number = 5030861092),NULL,9856434311,NULL)';
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Credit'',50,(select checking_account_id from checking_account where account_number = 8160114097),NULL,NULL,2345617876)';
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Debit'',200,(select checking_account_id from checking_account where account_number = 9080114097),NULL,9823112354,NULL)';
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Credit'',750,NULL,(select savings_account_id from savings_account where account_number = 8901512373),NULL,4456567687)';
  execute immediate 'insert into TRANSACTIONS(TYPE, AMOUNT, CHECKING_ACCOUNT_ID, SAVINGS_ACCOUNT_ID,BENEFICIARY_ACC_NUM,FROM_ACC_NUM) VALUES (''Credit'',165,(select checking_account_id from checking_account where account_number = 8178976598),NULL,NULL,6754327645)';  
END IF;

--Create EMPLOYEE table

SELECT count(*) into nCount FROM user_tables where table_name = 'EMPLOYEE';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE EMPLOYEE ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE EMPLOYEE(
      EMP_ID              NUMBER GENERATED BY DEFAULT AS IDENTITY,
      USERNAME            VARCHAR(20) UNIQUE NOT NULL,
      PASSWORD            VARCHAR(20) NOT NULL,
      EMAIL               VARCHAR(30) UNIQUE NOT NULL,
      PHONE_NUMBER        NUMBER(10) NOT NULL,
      FIRST_NAME          VARCHAR(20) NOT NULL,
      LAST_NAME           VARCHAR(20) NOT NULL,
      DESIGNATION_ID      REFERENCES DESIGNATION(DESIGNATION_ID) ON DELETE CASCADE,
      SALARY              NUMBER(10) NOT NULL,
      DATE_JOINED         TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      ADDRESS_ID          REFERENCES ADDRESS(ADDRESS_ID) ON DELETE CASCADE,
      SAVINGS_ACCOUNT_ID  REFERENCES SAVINGS_ACCOUNT(SAVINGS_ACCOUNT_ID) ON DELETE CASCADE,
      CHECKING_ACCOUNT_ID REFERENCES CHECKING_ACCOUNT(CHECKING_ACCOUNT_ID) ON DELETE CASCADE,
      
      CHECK(REGEXP_LIKE(EMAIL,''^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'')),
      CHECK(REGEXP_LIKE(USERNAME,''^[A-Za-z0-9]{1,16}$'')),
      CHECK(REGEXP_LIKE(PHONE_NUMBER,''^[0-9]{10}$'')),    
      PRIMARY KEY(EMP_ID))';   
execute immediate 'insert into EMPLOYEE(USERNAME,PASSWORD,EMAIL,PHONE_NUMBER,FIRST_NAME,LAST_NAME,DESIGNATION_ID,SALARY,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Stella'',''yxbzfce32y47b0'',''Stella.Crooks@gmail.com'',9455945861,''Stella'',''Crooks'',((SELECT DESIGNATION_ID FROM DESIGNATION WHERE NAME = ''Chairperson'')),995000,(select address_id from address where zip_code = 21204),(select savings_account_id from savings_account where account_number = 7225991317),(select checking_account_id from checking_account where account_number = 8901512393))';
execute immediate 'insert into EMPLOYEE(USERNAME,PASSWORD,EMAIL,PHONE_NUMBER,FIRST_NAME,LAST_NAME,DESIGNATION_ID,SALARY,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Eulah'',''v6jt4z83ii'',''Eulah.Cormier@gmail.com'',6743900927,''Eulah'',''Cormier'',((SELECT DESIGNATION_ID FROM DESIGNATION WHERE NAME = ''Assistant General Manager'')),75000,(select address_id from address where zip_code = 21205),(select savings_account_id from savings_account where account_number = 9035770670),(select checking_account_id from checking_account where account_number = 5721915194))';
execute immediate 'insert into EMPLOYEE(USERNAME,PASSWORD,EMAIL,PHONE_NUMBER,FIRST_NAME,LAST_NAME,DESIGNATION_ID,SALARY,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Bette'',''7fiwijunbs8j'',''Bette.Denesik@gmail.com'',9021101055,''Bette'',''Denesik'',((SELECT DESIGNATION_ID FROM DESIGNATION WHERE NAME = ''Managing Director'')),905000,(select address_id from address where zip_code = 21206),(select savings_account_id from savings_account where account_number = 5721915186),(select checking_account_id from checking_account where account_number = 9035770695))';
execute immediate 'insert into EMPLOYEE(USERNAME,PASSWORD,EMAIL,PHONE_NUMBER,FIRST_NAME,LAST_NAME,DESIGNATION_ID,SALARY,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Adonis'',''jfhjw4gqe5qdkw'',''Adonis.Connelly@gmail.com'',5053665951,''Adonis'',''Connelly'',((SELECT DESIGNATION_ID FROM DESIGNATION WHERE NAME = ''Probationary Officer'')),55000,(select address_id from address where zip_code = 21207),(select savings_account_id from savings_account where account_number = 8901512372),(select checking_account_id from checking_account where account_number = 7225991396))';
execute immediate 'insert into EMPLOYEE(USERNAME,PASSWORD,EMAIL,PHONE_NUMBER,FIRST_NAME,LAST_NAME,DESIGNATION_ID,SALARY,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Talon'',''b0zrsjgr8p69ubp'',''Talon.Veum@gmail.com'',7033155914,''Talon'',''Veum'',((SELECT DESIGNATION_ID FROM DESIGNATION WHERE NAME = ''Deputy Managing Director'')),80000,(select address_id from address where zip_code = 21208),(select savings_account_id from savings_account where account_number = 5030861076),(select checking_account_id from checking_account where account_number = 9080114097))';
execute immediate 'insert into EMPLOYEE(USERNAME,PASSWORD,EMAIL,PHONE_NUMBER,FIRST_NAME,LAST_NAME,DESIGNATION_ID,SALARY,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Tomas'',''mda9vk1c'',''Tomas.Smith@gmail.com'',3233612731,''Tomas'',''Smith'',((SELECT DESIGNATION_ID FROM DESIGNATION WHERE NAME = ''Chief General Manager'')),69000,(select address_id from address where zip_code = 21209),(select savings_account_id from savings_account where account_number = 8880846973),(select checking_account_id from checking_account where account_number = 3498976598))';
execute immediate 'insert into EMPLOYEE(USERNAME,PASSWORD,EMAIL,PHONE_NUMBER,FIRST_NAME,LAST_NAME,DESIGNATION_ID,SALARY,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Minnie'',''9d5tcqwc2fpccp9'',''Minnie.Waters@gmail.com'',8473880913,''Minnie'',''Waters'',((SELECT DESIGNATION_ID FROM DESIGNATION WHERE NAME = ''Loan Officer'')),59000,(select address_id from address where zip_code = 21210),(select savings_account_id from savings_account where account_number = 9126653085),(select checking_account_id from checking_account where account_number = 7307271299))';

END IF;

--Create CUSTOMER table

SELECT count(*) into nCount FROM user_tables where table_name = 'CUSTOMER';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE CUSTOMER ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CUSTOMER(
      CUST_ID             NUMBER GENERATED BY DEFAULT AS IDENTITY,
      USERNAME            VARCHAR(20) UNIQUE NOT NULL,
      PASSWORD            VARCHAR(20) NOT NULL,
      FIRST_NAME          VARCHAR(20) NOT NULL,
      LAST_NAME           VARCHAR(20) NOT NULL,
      PHONE_NUMBER        NUMBER(10) NOT NULL,
      EMAIL               VARCHAR(30) UNIQUE NOT NULL,
      ADDRESS_ID          REFERENCES ADDRESS(ADDRESS_ID) ON DELETE CASCADE,
      SAVINGS_ACCOUNT_ID  REFERENCES SAVINGS_ACCOUNT(SAVINGS_ACCOUNT_ID) ON DELETE CASCADE,
      CHECKING_ACCOUNT_ID REFERENCES CHECKING_ACCOUNT(CHECKING_ACCOUNT_ID) ON DELETE CASCADE,
      
      CHECK(REGEXP_LIKE(EMAIL,''^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'')),
      CHECK(REGEXP_LIKE(USERNAME,''^[A-Za-z0-9]{1,16}$'')),
      CHECK(REGEXP_LIKE(PHONE_NUMBER,''^[0-9]{10}$'')),    
      PRIMARY KEY(CUST_ID))';    
     execute immediate 'insert into CUSTOMER(USERNAME,PASSWORD,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Amparo'',''1i1fgteribb'',''Amparo'',''Lindgren'',8532603579,''Amparo.Lindgren@gmail.com'',(select address_id from address where zip_code = 61908),(select savings_account_id from savings_account where account_number = 9080114049),(select checking_account_id from checking_account where account_number = 8155991396))';
execute immediate 'insert into CUSTOMER(USERNAME,PASSWORD,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Ricardo'',''abge0g7p'',''Ricardo'',''Dietrich'',8253482578,''Ricardo.Dietrich@gmail.com'',(select address_id from address where zip_code = 23207),(select savings_account_id from savings_account where account_number = 7307271218),(select checking_account_id from checking_account where account_number = 8160114097))';
execute immediate 'insert into CUSTOMER(USERNAME,PASSWORD,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Kianna'',''ot6wg4r0'',''Kianna'',''Balistreri'',2191967610,''Kianna.Balistreri@gmail.com'',(select address_id from address where zip_code = 89816),(select savings_account_id from savings_account where account_number = 3498976545),(select checking_account_id from checking_account where account_number = 8178976598))';
execute immediate 'insert into CUSTOMER(USERNAME,PASSWORD,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Barney'',''itywahd7r88'',''Barney'',''Rice'',7385396735,''Barney.Rice@gmail.com'',(select address_id from address where zip_code = 83400),(select savings_account_id from savings_account where account_number = 8187271218),(select checking_account_id from checking_account where account_number = 8187271299))';
execute immediate 'insert into CUSTOMER(USERNAME,PASSWORD,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Gaylord'',''npslih7parwke'',''Gaylord'',''Mraz'',2304503579,''Gaylord.Mraz@gmail.com'',(select address_id from address where zip_code = 21202),(select savings_account_id from savings_account where account_number = 8178976491),(select checking_account_id from checking_account where account_number = 9126653090))';
execute immediate 'insert into CUSTOMER(USERNAME,PASSWORD,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Hope'',''vxlehjapdwh2kjk'',''Hope'',''Gerhold'',5580315119,''Hope.Gerhold@gmail.com'',(select address_id from address where zip_code = 21203),(select savings_account_id from savings_account where account_number = 8160114490),(select checking_account_id from checking_account where account_number = 8880846991))';
execute immediate 'insert into CUSTOMER(USERNAME,PASSWORD,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,ADDRESS_ID,SAVINGS_ACCOUNT_ID,CHECKING_ACCOUNT_ID) values (''Nya'',''e3izixldj0bn'',''Nya'',''Borer'',2420091933,''Nya.Borer@gmail.com'',(select address_id from address where zip_code = 21201),(select savings_account_id from savings_account where account_number = 8155991489),(select checking_account_id from checking_account where account_number = 5030861092))';

END IF;

--Create CUSTOMER_INSURANCE table

SELECT count(*) into nCount FROM user_tables where table_name = 'CUSTOMER_INSURANCE';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE CUSTOMER_INSURANCE ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CUSTOMER_INSURANCE(
      INSURANCE_ID       NUMBER GENERATED BY DEFAULT AS IDENTITY,
      CUST_ID            REFERENCES CUSTOMER(CUST_ID) ON DELETE CASCADE,
      INSURANCE_NAME     VARCHAR(20) NOT NULL,
      COVERAGE           NUMBER(20) NOT NULL,    
      PRIMARY KEY(INSURANCE_ID))';   
	execute immediate 'insert into CUSTOMER_INSURANCE(CUST_ID,INSURANCE_NAME,COVERAGE) values ((SELECT CUST_ID FROM CUSTOMER WHERE USERNAME =''AMPARO''),''Car Insurance'',10000)';
     execute immediate 'insert into CUSTOMER_INSURANCE(CUST_ID,INSURANCE_NAME,COVERAGE) values ((SELECT CUST_ID FROM CUSTOMER WHERE USERNAME =''Ricardo''),''Medical Insurance'',20000)';
     execute immediate 'insert into CUSTOMER_INSURANCE(CUST_ID,INSURANCE_NAME,COVERAGE) values ((SELECT CUST_ID FROM CUSTOMER WHERE USERNAME =''Kianna''),''Home Insurance'',50000)';
     execute immediate 'insert into CUSTOMER_INSURANCE(CUST_ID,INSURANCE_NAME,COVERAGE) values ((SELECT CUST_ID FROM CUSTOMER WHERE USERNAME =''Barney''),''Renters Insurance'',8000)';
     execute immediate 'insert into CUSTOMER_INSURANCE(CUST_ID,INSURANCE_NAME,COVERAGE) values ((SELECT CUST_ID FROM CUSTOMER WHERE USERNAME =''Nya''),''Life Insurance'',25000)'; 

END IF;

--Create EMPLOYEE_INSURANCE table

SELECT count(*) into nCount FROM user_tables where table_name = 'EMPLOYEE_INSURANCE';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE EMPLOYEE_INSURANCE ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE EMPLOYEE_INSURANCE(
      INSURANCE_ID       NUMBER GENERATED BY DEFAULT AS IDENTITY,
      EMP_ID            REFERENCES EMPLOYEE(EMP_ID) ON DELETE CASCADE,
      INSURANCE_NAME     VARCHAR(20) NOT NULL,
      COVERAGE           NUMBER(20) NOT NULL,    
      PRIMARY KEY(INSURANCE_ID))';    
      
      execute immediate 'insert into EMPLOYEE_INSURANCE(EMP_ID, INSURANCE_NAME, COVERAGE) VALUES ((select emp_id from employee where first_name = ''Talon''),''Life Insurance'',45000)';
      execute immediate 'insert into EMPLOYEE_INSURANCE(EMP_ID, INSURANCE_NAME, COVERAGE) VALUES ((select emp_id from employee where first_name = ''Tomas''),''Car Insurance'',15000)';
      execute immediate 'insert into EMPLOYEE_INSURANCE(EMP_ID, INSURANCE_NAME, COVERAGE) VALUES ((select emp_id from employee where first_name = ''Stella''),''Renters Insurance'',45000)';
      execute immediate 'insert into EMPLOYEE_INSURANCE(EMP_ID, INSURANCE_NAME, COVERAGE) VALUES ((select emp_id from employee where first_name = ''Bette''),''Home Insurance'',20000)';
      execute immediate 'insert into EMPLOYEE_INSURANCE(EMP_ID, INSURANCE_NAME, COVERAGE) VALUES ((select emp_id from employee where first_name = ''Talon''),''Car Insurance'',2000)';
END IF;

--Create EMPLOYEE_CARD_SERVICES table

SELECT count(*) into nCount FROM user_tables where table_name = 'EMPLOYEE_CARD_SERVICES';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE EMPLOYEE_CARD_SERVICES ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE EMPLOYEE_CARD_SERVICES(
      CARD_SERVICE_ID   NUMBER GENERATED BY DEFAULT AS IDENTITY,
      EMP_ID            REFERENCES EMPLOYEE(EMP_ID) ON DELETE CASCADE,
       
      PRIMARY KEY(CARD_SERVICE_ID))';    
     execute immediate 'insert into EMPLOYEE_CARD_SERVICES(CARD_SERVICE_ID,EMP_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 799),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Stella''))';
     execute immediate 'insert into EMPLOYEE_CARD_SERVICES(CARD_SERVICE_ID,EMP_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 500),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Eulah''))';
     execute immediate 'insert into EMPLOYEE_CARD_SERVICES(CARD_SERVICE_ID,EMP_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 316),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Bette''))';
     execute immediate 'insert into EMPLOYEE_CARD_SERVICES(CARD_SERVICE_ID,EMP_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 534),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Adonis''))';
     execute immediate 'insert into EMPLOYEE_CARD_SERVICES(CARD_SERVICE_ID,EMP_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 420),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Talon''))';
     

END IF;

--Create CUSTOMER_CARD_SERVICES table

SELECT count(*) into nCount FROM user_tables where table_name = 'CUSTOMER_CARD_SERVICES';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE CUSTOMER_CARD_SERVICES ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE CUSTOMER_CARD_SERVICES(
      CARD_SERVICE_ID   NUMBER GENERATED BY DEFAULT AS IDENTITY,
      CUST_ID            REFERENCES CUSTOMER(CUST_ID) ON DELETE CASCADE,
       
      PRIMARY KEY(CARD_SERVICE_ID))';    
      
     execute immediate 'insert into CUSTOMER_CARD_SERVICES(CARD_SERVICE_ID,CUST_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 785),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Amparo''))';
     execute immediate 'insert into CUSTOMER_CARD_SERVICES(CARD_SERVICE_ID,CUST_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 300),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Ricardo''))';
     execute immediate 'insert into CUSTOMER_CARD_SERVICES(CARD_SERVICE_ID,CUST_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 250),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Kianna''))';
     execute immediate 'insert into CUSTOMER_CARD_SERVICES(CARD_SERVICE_ID,CUST_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 199),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Barney''))';    
execute immediate 'insert into CUSTOMER_CARD_SERVICES(CARD_SERVICE_ID,CUST_ID) values ((SELECT CARD_SERVICES_ID FROM CARD_SERVICES WHERE CVV = 123),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Gaylord''))';

END IF;

--Create CUSTOMER_LOAN table

SELECT count(*) into nCount FROM user_tables where table_name = 'CUSTOMER_LOAN';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE CUSTOMER_LOAN ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE CUSTOMER_LOAN CUSTOMER_LOAN(
      LOAN_ID            NUMBER GENERATED BY DEFAULT AS IDENTITY,
      CUST_ID            REFERENCES CUSTOMER(CUST_ID) ON DELETE CASCADE,
       
      PRIMARY KEY(LOAN_ID))';    
      
     execute immediate 'insert into CUSTOMER_LOAN(LOAN_ID,CUST_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Car''),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Amparo''))';
     execute immediate 'insert into CUSTOMER_LOAN(LOAN_ID,CUST_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Home''),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Ricardo''))';
     execute immediate 'insert into CUSTOMER_LOAN(LOAN_ID,CUST_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Marriage''),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Kianna''))';
     execute immediate 'insert into CUSTOMER_LOAN(LOAN_ID,CUST_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Education''),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Hope''))';
     execute immediate 'insert into CUSTOMER_LOAN(LOAN_ID,CUST_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Personal''),(SELECT CUST_ID FROM CUSTOMER WHERE USERNAME = ''Nya''))';

END IF;

--Create EMPLOYEE_LOAN table

SELECT count(*) into nCount FROM user_tables where table_name = 'EMPLOYEE_LOAN';
IF(nCount > 0)
THEN
    DBMS_OUTPUT.PUT_LINE('TABLE EMPLOYEE_LOAN ALREADY EXISTS');
ELSE
    EXECUTE IMMEDIATE 'CREATE TABLE EMPLOYEE_LOAN(
      LOAN_ID            NUMBER GENERATED BY DEFAULT AS IDENTITY,
      EMP_ID            REFERENCES EMPLOYEE(EMP_ID) ON DELETE CASCADE,
       
      PRIMARY KEY(LOAN_ID))';    
      
     execute immediate 'insert into EMPLOYEE_LOAN(LOAN_ID,EMP_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Home Renovation''),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Eulah''))';
     execute immediate 'insert into EMPLOYEE_LOAN(LOAN_ID,EMP_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Equity''),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Adonis''))';
     execute immediate 'insert into EMPLOYEE_LOAN(LOAN_ID,EMP_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Payday''),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Bette''))';
     execute immediate 'insert into EMPLOYEE_LOAN(LOAN_ID,EMP_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Business'' and duration=6),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Tomas''))';
     execute immediate 'insert into EMPLOYEE_LOAN(LOAN_ID,EMP_ID) values ((SELECT LOAN_ID FROM LOAN WHERE TYPE =''Business'' and duration=8),(SELECT EMP_ID FROM EMPLOYEE WHERE USERNAME = ''Minnie''))';

END IF;

END;




