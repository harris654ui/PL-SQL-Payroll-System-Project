# PL/SQL Payroll Management System

This is a PL/SQL project designed to calculate and store payroll information for employees using Oracle's HR schema.

---

## Project Overview

This project automates the payroll calculation for employees. It calculates gross salary, tax amount, bonuses and net pay based on pre exsisting data in the Oracle HR schema. Payroll records are all stored in a dedicated `payroll_history` table.

Key features include:

- Automatic tax calculation based on salary ranges
- Bonus calculation for employees with commissions
- Payroll record insertion for each employee per pay period

---

## Technologies Used

Project was made using using PL/SQL in TOAD for Oracle, utilizing the HR schema in Oracle Database.

---

## Database Setup:
The following tables and procedures where created in this project

### payroll_history(Table)
Stores the payroll records for each employee.

### salary_config(Table)
Stores the salary ranges and corresponding tax rates.

## Code for both tables is available in the `Tables.sql` file in the repo.

### payroll_date(Stored Procedure)
Calculates payroll for all employees on a given pay period.

## Code for the procedure is available in the `Procedure.sql` file in the repo.
---

## Usage

- Make sure the HR schema is available and has employee data.
- Create the payroll_history and salary_config tables using code given in repo.
- Populate the salary_config table with tax rates for salary ranges.
- Compile the payroll_date procedure in a Oracle environment.
- Execute the procedure for a specific pay period:
`BEGIN
    payroll_date(SYSDATE);
END;`

- Verify the payroll entries:
`SELECT * FROM hr.payroll_history;`

---

