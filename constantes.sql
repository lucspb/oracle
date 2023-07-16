DECLARE
    vPi CONSTANT NUMBER(38, 15) := 3.141592653589793;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Pi = ' || vPi);
END;

-- testando o erro mudando o valor de vPi
DECLARE
    vPi CONSTANT NUMBER(38, 15) := 3.141592653589793;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Pi = ' || vPi);
    vPi := 3.14159265;
    DBMS_OUTPUT.PUT_LINE('Pi = ' || vPi);
END;


DECLARE
    vTextoFixo CONSTANT CHAR(2) := 'PB';
    vTextoVariavel CONSTANT VARCHAR2(100) := 'Guarabira, PB';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Texto Fixo: ' || vTextoFixo);
    DBMS_OUTPUT.PUT_LINE('Texto Variavel: ' || vTextoVariavel);
END;
