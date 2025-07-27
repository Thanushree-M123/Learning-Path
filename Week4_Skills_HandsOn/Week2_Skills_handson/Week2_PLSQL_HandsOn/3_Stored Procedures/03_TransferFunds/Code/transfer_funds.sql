-- Table setup
CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    AccountType VARCHAR2(20),
    Balance NUMBER
);

-- Sample data
INSERT INTO Accounts VALUES (101, 'SAVINGS', 1000);
INSERT INTO Accounts VALUES (102, 'SAVINGS', 500);
COMMIT;

-- Procedure with error handling
CREATE OR REPLACE PROCEDURE TransferFunds (
    p_FromAccount IN NUMBER,
    p_ToAccount IN NUMBER,
    p_Amount IN NUMBER
) IS
    v_FromBalance NUMBER;
    v_DestCheck NUMBER;
BEGIN
    -- Check source account
    BEGIN
        SELECT Balance INTO v_FromBalance
        FROM Accounts
        WHERE AccountID = p_FromAccount
        FOR UPDATE;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, 'Source account does not exist.');
    END;

    -- Check balance
    IF v_FromBalance < p_Amount THEN
        RAISE_APPLICATION_ERROR(-20002, 'Insufficient balance in source account.');
    END IF;

    -- Check destination account
    BEGIN
        SELECT 1 INTO v_DestCheck FROM Accounts WHERE AccountID = p_ToAccount FOR UPDATE;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20003, 'Destination account does not exist.');
    END;

    -- Transfer
    UPDATE Accounts SET Balance = Balance - p_Amount WHERE AccountID = p_FromAccount;
    UPDATE Accounts SET Balance = Balance + p_Amount WHERE AccountID = p_ToAccount;

    DBMS_OUTPUT.PUT_LINE('Transferred ' || p_Amount || ' from account ' || p_FromAccount || ' to ' || p_ToAccount);
END;
/
SET SERVEROUTPUT ON;
EXEC TransferFunds(101, 102, 500); -- Transfer 500 from account 101 to 102
