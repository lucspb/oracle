-- utilizando o comando IF

SET SERVEROUTPUT ON
ACCEPT pDepartment_id PROMPT 'Digite o id do departamento: '
DECLARE
    vPercentual NUMBER(3);
    vDepartment_id employees.employee_id%type := &pDepartment_id;
BEGIN
    IF vDepartment_id = 80 THEN
        vPercentual := 10;
    ELSE 
        IF &pDepartment_id = 20 THEN
            vPercentual := 15;
        ELSE
            IF  &pDepartment_id = 60 THEN
                vPercentual := 20;
            ELSE
                vPercentual := 5;
            END IF;
        END IF;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);
    DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual);
    
    UPDATE employees
    SET salary = salary * (1 + vPercentual / 100)
    WHERE DEPARTMENT_ID = &pDepartment_id;
    COMMIT;
END;

-- utilizando ELSIF

SET SERVEROUTPUT ON
ACCEPT pDepartment_id PROMPT 'Digite o id do departamento: '
DECLARE
    vPercentual NUMBER(3);
    vDepartment_id employees.employee_id%type := &pDepartment_id;
BEGIN
    IF vDepartment_id = 80 THEN
        vPercentual := 10;
    ELSIF &pDepartment_id = 20 THEN
        vPercentual := 15;
    ELSIF &pDepartment_id = 60 THEN
        vPercentual := 20;
    ELSE
        vPercentual := 5;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);
    DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual);
    
    UPDATE employees
    SET salary = salary * (1 + vPercentual / 100)
    WHERE DEPARTMENT_ID = &pDepartment_id;
    COMMIT;
END;