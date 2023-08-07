-- loop basico

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '
DECLARE
    vNumero NUMBER(30) := 0;
    vLimite NUMBER(30) := &pLimite;
BEGIN
    --Imprimindo numero de 0 até o limite
    LOOP
    DBMS_OUTPUT.PUT_LINE('Numero: ' || to_char(vNumero));
    EXIT WHEN vNumero = vLimite;
    vNumero := vNumero + 1;
    END LOOP;
END;