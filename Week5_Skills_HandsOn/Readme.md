# DN 4.0 – Java FSE – Week 5 Hands-on Solutions

## 👩‍💻 Candidate Information:
- *Name*: Thanushree M
- *Super ID*: 6418309
- *College*: PES College of Engineering, Mandya

---

# 📁 Week5_Skills_HandsOn

This folder contains additional exercises for **Week 5** of the Skills Hands-On series, focusing on **Microservices, Eureka Discovery Server, and Microservices communication**.

Each exercise includes:
- `pom.xml` — Project configuration
- `src/` — Source code
- `Output/` — Screenshots or logs of expected results

---

## 📦 Microservices with Spring Boot & Eureka

### ✅ Create Eureka Discovery Server and register
- `Code/pom.xml`
- `Code/src/`
- `Output/`

### ✅ Creating Microservices for account and loan
- `Code/pom.xml`
- `Code/src/`
- `Output/`


### ✅ Create Eureka Discovery Server and register
- **Purpose:**  
  Build a **Eureka Discovery Server** and register a microservice (`account-service`) with it.  
  This exercise demonstrates **service registration and discovery** in a Spring Cloud ecosystem.

- **Includes:**  
  - `Code/pom.xml` — Maven dependencies for Eureka Client setup  
  - `Code/src/` — Source code for `account-service` with Eureka client configuration  
  - `Output/` — Screenshots of Eureka dashboard showing `account-service` registration  

---

### ✅ Creating Microservices for account and loan
- **Purpose:**  
  Create two independent **Spring Boot microservices**:  
  - `account-service`  
  - `loan-service`  

  Register both services with **Eureka Discovery Server** and establish basic communication between them (via REST template or Feign client, depending on implementation).

- **Includes:**  
  - `Code/pom.xml` — Maven dependencies for both `account` and `loan` services  
  - `Code/src/` — Source code for services, REST controllers, and service registration  
  - `Output/` — Screenshots of API calls, Eureka registration, and service-to-service communication
 
    ## ✅ Status:
- [x] Week 5 – Submitted
- [ ] Week 6 – In Progress
