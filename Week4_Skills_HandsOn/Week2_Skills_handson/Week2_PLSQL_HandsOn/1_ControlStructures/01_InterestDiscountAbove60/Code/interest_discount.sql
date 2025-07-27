CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Age NUMBER,
    Balance NUMBER,
    IsVIP VARCHAR2(5)
);

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    InterestRate NUMBER(5,2),
    DueDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Sample data
INSERT INTO Customers VALUES (1, 'Alice', 65, 15000, 'FALSE');
INSERT INTO Customers VALUES (2, 'Bob', 45, 8000, 'FALSE');
INSERT INTO Customers VALUES (3, 'Charlie', 70, 11000, 'FALSE');

INSERT INTO Loans VALUES (101, 1, 7.5, SYSDATE + 15); -- due soon
INSERT INTO Loans VALUES (102, 2, 8.0, SYSDATE + 40); -- due later
INSERT INTO Loans VALUES (103, 3, 9.0, SYSDATE + 10); -- due soon

COMMIT;

BEGIN
    FOR cust IN (
        SELECT c.CustomerID, l.LoanID
        FROM Customers c
        JOIN Loans l ON c.CustomerID = l.CustomerID
        WHERE c.Age > 60
    ) LOOP
        UPDATE Loans
        SET InterestRate = InterestRate - 1
        WHERE LoanID = cust.LoanID;

        DBMS_OUTPUT.PUT_LINE('Applied 1% discount to Customer ID: ' || cust.CustomerID);
    END LOOP;
END;
/
