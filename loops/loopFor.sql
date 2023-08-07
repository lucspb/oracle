-- utilizando o FOR LOOP

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '
DECLARE
    vInicio INTEGER(3) := 1;
    vFim    NUMBER(30) := &pLimite;
BEGIN
    FOR i IN vInicio..vFim LOOP
        DBMS_OUTPUT.PUT_LINE('Numero: ' || to_char(i));
    END LOOP;
END;