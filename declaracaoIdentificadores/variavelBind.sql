-- utilizando variavel Bind

VARIABLE gmedia NUMBER;
DECLARE
    vnumero1 NUMBER(11,2) := 5000;
    vnumero2 NUMBER(11,2) := 4000;
BEGIN
    :gmedia := (vnumero1 + vnumero2) / 2;
    DBMS_OUTPUT.PUT_LINE('Media = ' || TO_CHAR(:gmedia));
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro Oracle: ' || SQLCODE || SQLERRM);
END;
