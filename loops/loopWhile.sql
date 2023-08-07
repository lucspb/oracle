--utilizando WHILE LOOP

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o numero do limite: '
DECLARE
    vNumero NUMBER(30) := 0;
    vLimite NUMBER(30) := &pLimite;
BEGIN
    WHILE vNumero <= vLimite LOOP
        DBMS_OUTPUT.PUT_LINE('Numero = ' || to_char(vNumero));
        vNumero := vNumero + 1;
    END LOOP;
END;