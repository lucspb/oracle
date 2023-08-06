-- utilizando o comando CASE

SET SERVEROUTPUT ON
ACCEPT pDepartment_id PROMPT 'Digite o Id do departamento: '
DECLARE
    vPercentual     NUMBER(3);
    vDepartmend_id  employees.employee_id%type := &pDepartment_id;
BEGIN
    CASE vDepartmend_id WHEN 80 THEN
        vPercentual := 10;
    WHEN 20 THEN
        vPercentual := 15;
    WHEN 60 THEN
        vPercentual := 20;
    ELSE
        vPercentual := 5;
    END CASE;
    DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || &pDepartment_id);
    DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual);
    
    UPDATE employees 
    SET salary = salary * (1 + vPercentual / 100)
    WHERE department_id = &pDepartment_id;
    -- COMMIT;
END;

-- utilizando o comando CASE com a condicao após o WHEN

SET SERVEROUTPUT ON
ACCEPT pDepartment_id PROMPT 'Digite o Id do departamento: '
DECLARE
    vPercentual     NUMBER(3);
    vDepartmend_id  employees.employee_id%type := &pDepartment_id;
BEGIN
    CASE WHEN vDepartmend_id = 80 THEN
        vPercentual := 10;
    WHEN 20 THEN
        vPercentual := 15;
    WHEN 60 THEN
        vPercentual := 20;
    ELSE
        vPercentual := 5;
    END CASE;
    DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || &pDepartment_id);
    DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual);
    
    UPDATE employees 
    SET salary = salary * (1 + vPercentual / 100)
    WHERE department_id = &pDepartment_id;
    -- COMMIT;
END;
