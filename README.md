# ASE Dormitory Management System (Oracle SQL)

This repository contains the final project developed for the **Databases** course (Year 2, Semester 1). The project consists of a complex relational database designed to manage the dormitory network of the Bucharest University of Economic Studies (ASE).

> **Note:** While the dormitory structure reflects public data, **all personal data (students, staff, IDs) are 100% fictional**, randomly generated strictly for educational purposes.

## Technologies & Concepts
* **Platform:** Oracle Database (PL/SQL)
* **Features:** DDL, DML, Views, Triggers, Sequences, System Functions, Complex Joins, Correlated Subqueries.

## Project Description

The goal of this project was to simulate real-world workflows within a university campus, covering:

### 1. Administration & Logistics
* **Structure:** Normalized tables for `Dormitories`, `Rooms`, and `Staff`.
* **Business Logic:** Smart room coding implementation (e.g., Room 104 -> Floor 1, Room 4) and capacity management.

### 2. Financial Workflows
* **Billing:** Automatic generation of accommodation costs based on student status (Budget/Tuition fee).
* **Payroll:** Net salary calculation for staff, including various bonuses (seniority, leadership, toxicity).

### 3. SQL Automation
* **Triggers:** `trg_securitate_salariu` - a data protection mechanism that prevents accidental or malicious reductions of the base salary.
* **Views:** `v_lista_publica_studenti` - exposes only public student data, protecting sensitive information (GDPR-ready).

### 4. Advanced Reporting
The script includes complex queries to answer business questions, such as:
* What is the occupancy rate per dormitory and how many spots remain free?
* How much revenue did each dormitory generate in the current month?
* Automatic room assignment algorithms based on gender and preferences.
* Employee salary rankings and student generation analysis using analytical functions (`DENSE_RANK`, `PARTITION BY`).


*Project created by Sandu Matei, Group 1059*
