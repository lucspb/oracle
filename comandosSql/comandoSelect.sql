--utilizando o comando SELECT no PL/SQL

SET SERVEROUTPUT ON
DECLARE
    vFirst_name     employees.first_name%type;
    vLast_name      employees.last_name%type;
    vSalary         employees.salary%type;
    vEmployee_id    employees.employee_id%type := 121;
BEGIN
    SELECT first_name, last_name, salary
    INTO vFirst_name, vLast_name, vSalary
    FROM employees
    WHERE employee_id = vEmployee_id;
    DBMS_OUTPUT.PUT_LINE('Employee Id: ' || vEmployee_id);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || vFirst_name);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || vLast_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
END;

-- exemplo de ORA-01403 - NO DATA FOUND

SET SERVEROUTPUT ON
DECLARE
    vFirst_name     employees.first_name%type;
    vLast_name      employees.last_name%type;
    vSalary         employees.salary%type;
    vEmployee_id    employees.employee_id%type := 50;
BEGIN
    SELECT first_name, last_name, salary
    INTO vFirst_name, vLast_name, vSalary
    FROM employees
    WHERE employee_id = vEmployee_id;
    DBMS_OUTPUT.PUT_LINE('Employee Id: ' || vEmployee_id);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || vFirst_name);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || vLast_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
END;

SET SERVEROUTPUT ON
DECLARE
    vJob_id         employees.job_id%type := 'IT_PROG';
    vAvg_salary     employees.salary%type;
    vSum_salary     employees.salary%type;
BEGIN
    SELECT ROUND(AVG(salary),2), ROUND(SUM(salary),2)
    INTO vAvg_salary, vSum_salary
    FROM employees
    WHERE job_id = vJob_id;
    DBMS_OUTPUT.PUT_LINE('Cargo: ' || vJob_id);
    DBMS_OUTPUT.PUT_LINE('Média de salários: ' || vAvg_salary);
    DBMS_OUTPUT.PUT_LINE('Somatório de salários: ' || vSum_salary);
END;

-- exemplo de ORA-01422 - TOO MANY ROWS

SET SERVEROUTPUT ON
DECLARE
    vJob_id         employees.job_id%type;
    vAvg_salary     employees.salary%type;
    vSum_salary     employees.salary%type;
BEGIN
    SELECT job_id, ROUND(AVG(salary),2), ROUND(SUM(salary),2)
    INTO vJob_id, vAvg_salary, vSum_salary
    FROM employees
    GROUP BY job_id;
    DBMS_OUTPUT.PUT_LINE('Cargo: ' || vJob_id);
    DBMS_OUTPUT.PUT_LINE('Média de salários: ' || vAvg_salary);
    DBMS_OUTPUT.PUT_LINE('Somatório de salários: ' || vSum_salary);
END;
