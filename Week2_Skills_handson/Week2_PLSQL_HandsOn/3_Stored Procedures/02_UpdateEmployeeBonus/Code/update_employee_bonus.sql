-- Table setup
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    DepartmentID NUMBER,
    Salary NUMBER
);

-- Sample data
INSERT INTO Employees VALUES (1, 'Alice', 10, 50000);
INSERT INTO Employees VALUES (2, 'Bob', 20, 45000);
INSERT INTO Employees VALUES (3, 'Charlie', 10, 60000);
COMMIT;

-- Procedure
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    p_DeptID IN NUMBER,
    p_BonusPercent IN NUMBER
) IS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * (p_BonusPercent / 100))
    WHERE DepartmentID = p_DeptID;

    DBMS_OUTPUT.PUT_LINE('Bonus updated for department ID: ' || p_DeptID);
END;
/
SET SERVEROUTPUT ON;
EXEC UpdateEmployeeBonus(10, 5); 
