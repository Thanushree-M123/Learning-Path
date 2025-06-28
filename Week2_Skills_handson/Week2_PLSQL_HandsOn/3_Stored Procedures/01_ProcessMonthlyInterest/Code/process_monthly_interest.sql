-- Table setup
CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    AccountType VARCHAR2(20),
    Balance NUMBER
);

-- Sample data
INSERT INTO Accounts VALUES (101, 'SAVINGS', 1000);
INSERT INTO Accounts VALUES (102, 'CURRENT', 5000);
INSERT INTO Accounts VALUES (103, 'SAVINGS', 2000);
COMMIT;

-- Procedure
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest IS
BEGIN
    UPDATE Accounts
    SET Balance = Balance + (Balance * 0.01)
    WHERE AccountType = 'SAVINGS';

    DBMS_OUTPUT.PUT_LINE('Monthly interest applied to all savings accounts.');
END;
/
SET SERVEROUTPUT ON;
EXEC ProcessMonthlyInterest;

