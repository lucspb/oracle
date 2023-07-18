DECLARE
    vNum1 NUMBER(11,2) := 500;
    vNum2 NUMBER(11,2) := 400;
    vMedia NUMBER(11,2);
BEGIN
    vMedia := (vNum1 + vNum2) / 2;
    DBMS_OUTPUT.PUT_LINE('Media = ' || vMedia);
END;

DECLARE
    vTexto VARCHAR2(100) := 'Hello World';
BEGIN
    DBMS_OUTPUT.PUT_LINE(vTexto);
END;

DECLARE
    vNumero NUMBER(11,2) := 1200.50;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = ' || vNumero);
END;

DECLARE
    vTextoFixo CHAR(2) := 'PB';
    vTextoVariavel VARCHAR2(100) := 'Guarabira, PB';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Texto Fixo = ' || vTextoFixo);
    DBMS_OUTPUT.PUT_LINE('Texto Variavel = ' || vTextoVariavel);
END;

DECLARE
    vData1 DATE := '16/07/2023';
    vData2 DATE := '16/07/23';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1);
    DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2);
END;