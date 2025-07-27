# DN 4.0 – Java FSE – Week 5 Hands-on Solutions

## 👩‍💻 Candidate Information:
- *Name*: Thanushree M
- *Super ID*: 6418309
- *College*: PES College of Engineering, Mandya

---
# Spring Boot Microservices System

This system consists of:
- **Eureka Discovery Server**
- **Account Service**
- **Loan Service** (to be created)
- **(Optional) Frontend - ReactJS** as a separate app

---

## ✅ Prerequisites

- Java 11+
- Maven
- Spring Boot 2.7+
- Eclipse or IntelliJ
- Port availability:
  - Eureka: `8761`
  - Account Service: `8081`
  - Loan Service: `8082`

---

## 🧩 Project Modules

### 1. Eureka Discovery Server
- Registers other microservices.
- Visit: `http://localhost:8761`

### 2. Account Service
- Sample REST controller
- Endpoints:
  - `GET /` → "✅ Account Service is running!"
  - `GET /accounts` → "Here are your accounts."
- Visit: `http://localhost:8081/`

### 3. Loan Service *(to be implemented)*

---

## 🏁 How to Run

1. **Eureka Server**
   - Right-click → Run `EurekaDiscoveryServerApplication.java`
   - Confirm it's running at `http://localhost:8761`

2. **Account Service**
   - Right-click → Run `AccountServiceApplication.java`
   - Visit `http://localhost:8081/`

3. **Loan Service** (create below if missing)
   - Right-click → Run `LoanServiceApplication.java`
   - Visit `http://localhost:8082/`

---

## ✅ Status:
- [x] Week 5 – Submitted
- [ ] Week 6 – In Progress


