CREATE OR REPLACE PROCEDURE payroll_date(
p_date IN DATE
)
is
v_tax_rate NUMBER;
v_bonus NUMBER;
v_pay NUMBER;
v_tax NUMBER;

BEGIN

For emp in(
Select *
From hr.employees
)
LOOP
--Calculate tax rate
Select tax_rate 
Into v_tax_rate
From HR.salary_config
Where emp.salary BETWEEN min_salary and max_salary;

--Calculate Bonus
IF emp.commission_pct IS NOT NULL AND emp.commission_pct > 0 THEN
v_bonus:= emp.salary * emp.commission_pct;
ELSE
v_bonus:= 0;
END IF;

--Calculate Total Salary()
v_tax := emp.salary * v_tax_rate;

--Calculate Payed Salary
v_pay:= (emp.salary + v_bonus) - v_tax;

INSERT INTO hr.payroll_history (employee_id, pay_period, gross_salary, tax_amount, bonus_amount, net_pay)
        VALUES (emp.employee_id, p_date, emp.salary, v_tax, v_bonus, v_pay);
END LOOP;
 COMMIT;
    DBMS_OUTPUT.PUT_LINE('Payroll processed successfully for period: ' || p_date);

END;
/


