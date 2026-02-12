# PL/SQL Payroll Management System

This is a PL/SQL project designed to calculate and store payroll information for employees using Oracle's HR schema. The project demonstrates table creation, salary configuration and payroll processing using PL/SQL procedures.

---

## Project Overview

This project automates the payroll calculation for employees. It calculates gross salary, tax amount, bonuses and net pay based on pre existing data in the Oracle HR schema. Payroll records are stored in a dedicated `payroll_history` table for tracking purposes.

Key features include:

- Automatic tax calculation based on salary ranges
- Bonus calculation for employees with commissions
- Payroll record insertion for each employee per pay period
- Simple, reusable PL/SQL procedure

---

## Technologies Used

- **Oracle Database** (HR schema)
- **TOAD for Oracle** (for coding and execution)
- **PL/SQL** (Procedures, loops, and conditional logic)

---

## Database Setup:
The following tables and procedures where created in this project

### payroll_history
Stores the payroll records for each employee.

### salary_config
Stores the salary ranges and corresponding tax rates.

### payroll_date(Stored Procedure)
Calculates payroll for all employees on a given pay period.

---

## Usage

- Make sure the HR schema is available and has employee data.
- Create the payroll_history and salary_config tables as shown above.
- Populate the salary_config table with tax rates for salary ranges.
- Compile the payroll_date procedure in your Oracle environment.
- Execute the procedure for a specific pay period:
`BEGIN
    payroll_date(SYSDATE);
END;`

- Verify the payroll entries:
`SELECT * FROM hr.payroll_history;`

---

## Sample Output

Here’s a screenshot of the payroll procedure running successfully and inserting data into `payroll_history`:

![Payroll Output](main/payroll_output.PNG
)

