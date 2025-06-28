
# Week 2 Skills Hands-On – Cognizant Digital Nurture

This repository contains hands-on solutions for Week 2 of the Cognizant Digital Nurture program, covering:

- ✅ PL/SQL Control Structures & Stored Procedures
- ✅ Logging using SLF4J & Logback
- ✅ Test-Driven Development (TDD) using JUnit 5 & Mockito

---

## 📁 Folder Structure

```
Week2_Skills_handson/
├── Week2_PLSQL_HandsOn/
│   ├── 1_ControlStructures/
│   │   ├── 01_InterestDiscountAbove60/
│   │   ├── 02_VIPPromotionAbove10000/
│   │   └── 03_LoanReminderWithin30Days/
│   └── 3_Stored Procedures/
│       ├── 01_ProcessMonthlyInterest/
│       ├── 02_UpdateEmployeeBonus/
│       └── 03_TransferFunds/
│
├── Week2_SLF4JLoggingExample/
│   ├── Code/
│   └── Output/
│
└── Week2_TDD using JUnit5 and Mockito/
    └── JUnit_Basic Testing_HandsOn/
        └── 1_JUnitSetupExample/
            ├── Code/
            └── Output/
```

---

## 🔧 How to Run

### PL/SQL
Run the `.sql` files using Oracle APEX SQL Workshop or Oracle SQL Developer.

### SLF4J Java Project
```bash
cd Week2_SLF4JLoggingExample/Code
mvn clean install
mvn exec:java -Dexec.mainClass="com.example.LoggingExample"
```

### JUnit/Mockito
```bash
cd Week2_TDD*/JUnit_Basic*/1_JUnitSetupExample/Code
mvn clean install
mvn test
```

---

## 📸 Output

Each folder contains a screenshot (`output_scenarioX.png`) showing execution result or terminal log.

---

## 🙌 Author

**Thanzy M.** – Computer Science Engineer | Java & PL/SQL Enthusiast 💻

---

## 🔗 Notes

- Ensure JDK 17 and Maven are installed to run Java projects.
- SQL scripts are tested in Oracle APEX cloud environment.
