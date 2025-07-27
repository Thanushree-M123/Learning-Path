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
        SELECT CustomerID
        FROM Customers
        WHERE Balance > 10000
    ) LOOP
        UPDATE Customers
        SET IsVIP = 'TRUE'
        WHERE CustomerID = cust.CustomerID;

        DBMS_OUTPUT.PUT_LINE('Promoted to VIP: Customer ID ' || cust.CustomerID);
    END LOOP;
END;
/
