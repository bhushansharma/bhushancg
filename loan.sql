

CREATE TABLE LoanProgramsOffered(PrgName VARCHAR2(5), desc1 VARCHAR2(20), type VARCHAR2(10), durInYear NUMBER(2), minLoanAmt NUMBER(5), maxLoanAmt NUMBER(5), ROI NUMBER(2), proofsReq VARCHAR2(20));





 CREATE TABLE User1(loginId VARCHAR2(5), password VARCHAR(10), role VARCHAR2(5));





CREATE TABLE LoanApplication(Application_Id NUMBER(5) CONSTRAINTS App_id_pk PRIMARY KEY, Application_date DATE, Loan_Program VARCHAR2(10),AmtofLoan NUMBER(5), AddOfProperty VARCHAR2(30), AnnualFamilyIncome NUMBER(5), DocProofsAvailable VARCHAR2(50), GuaranteeCover VARCHAR2(20), MarketValueofGC NUMBER(2), Status VARCHAR2(10), DateOfInterview DATE);



 CREATE SEQUENCE Application_id_seq START WITH 10001;





CREATE TABLE Customer_Details(Application_Id NUMBER(5) CONSTRAINTS App_id_fk REFERENCES LoanApplication(Application_Id), Applicant_name VARCHAR2(20), DOB DATE, marital_status VARCHAR2(10), phone_no NUMBER(11), Mobile_no NUMBER(10), CountOfDependents NUMBER(10), email_id VARCHAR2(20));






CREATE TABLE ApprovedLoans(Application_Id NUMBER(5) CONSTRAINTS App_id_fk1 REFERENCES LoanApplication(Application_Id), Customer_Name VARCHAR2(20), AmountOfLoanGranted NUMBER(5), yinstallment number(5), yearstimeperiod NUMBER(5), Downapayment NUMBER(5), ROI NUMBER(2), TotalAmountPayable NUMBER(5));

