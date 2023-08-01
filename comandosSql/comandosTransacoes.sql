-- CONTROLANDO TRANSAÇÕES DO BANCO DE DADOS

SET SERVEROUTPUT ON 
DECLARE
    vEmployee_id employees.employee_id%type := 150;
BEGIN 
    UPDATE employees
    SET SALARY = 15000
    WHERE employee_id = vEmployee_id;
    COMMIT;
END;


SET SERVEROUTPUT ON 
DECLARE
    vEmployee_id employees.employee_id%type := 150;
BEGIN 
    UPDATE employees
    SET SALARY = 20000
    WHERE employee_id = vEmployee_id;
    ROLLBACK;
END;


BEGIN
    INSERT INTO employees
    (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,
    commission_pct, manager_id, department_id)
    VALUES
    (employees_seq.nextval, 'Lucas', 'Estanislau', 'lucs', '5555-4444', SYSDATE, 'IT_PROG', 3500,
    0, 103, 60);
    
    SAVEPOINT INSERTOK;
    
    UPDATE employees
    SET salary = 3501
    WHERE job_id = 'IT_PROG' AND
    last_name = 'Estanislau';
    
    ROLLBACK TO INSERTOK;
    COMMIT;
END;
