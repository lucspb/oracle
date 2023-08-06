-- utilizando cursor implicito

-- aparece o numero de linhas afetadas pelo bloco

SET SERVEROUTPUT ON
DECLARE
    vDepartment_id employees.department_id%type := 20;
    vPercentual NUMBER(3) := 10;
BEGIN
    UPDATE employees
    SET salary = salary * (1 + vPercentual / 100)
    WHERE department_id = vDepartment_id;
    DBMS_OUTPUT.PUT_LINE('Numero de empregados atualizados: ' || SQL%ROWCOUNT);
    -- COMMIT;
END;

ROLLBACK;