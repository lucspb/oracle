SET SERVEROUTPUT ON
DECLARE
    vFirst_name     employees.first_name%type;
    vLast_name      employees.last_name%type;
    vSalary         employees.salary%type;
BEGIN
    INSERT INTO employees
    (employee_id, first_name, last_name, email, phone_number, hire_date,
    job_id, salary, commission_pct, manager_id, department_id)
    VALUES
    (employees_seq.nextVal, 'Kobe', 'Bryant', 'KBRYANT', '515.123.4567', SYSDATE,
    'IT_PROG', 100000, 0.4, 103, 60);
    COMMIT;
END;