DECLARE
    vNumero                 NUMBER(11,2) := 1234.56;
    vTextoFixo              CHAR(100) := 'Texto de tamanho fixo de até 32767 bytes';
    vTextoVariavel          VARCHAR2(100) := 'Texto de tamanho variavel de até 32767 bytes';
    vBooleano               BOOLEAN := TRUE;
    vData                   DATE := sysdate;
    vLong                   LONG := 'Texto de tamanho variavel de até 32760 bytes';
    vRowid                  ROWID;
    vTimestamp              TIMESTAMP := systimestamp;
    vTimestamptz            TIMESTAMP WITH TIME ZONE := systimestamp;
    vTextoFixoUniversal     NCHAR(100) := 'Texto de tamanho fixo universal de até 32767 bytes';
    vTextoVariavelUniversal NVARCHAR2(100) := 'Texto de tamanho variavel universal de até 32767 bytes';
    vNumeroInteiro          BINARY_INTEGER := 1200;
    vNumeroFloat            BINARY_FLOAT := 15000000;
    vNumeroDouble           BINARY_DOUBLE := 15000000;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = ' || vNumero);
    DBMS_OUTPUT.PUT_LINE('String de Tamanho Fixo: ' || vTextoFixo);
    DBMS_OUTPUT.PUT_LINE('String de Tamanho Variavel: ' || vTextoVariavel);
    IF vBooleano = TRUE THEN
        DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'FALSE OR NULL');
    END IF;
    DBMS_OUTPUT.PUT_LINE('Data = ' || vData);
    DBMS_OUTPUT.PUT_LINE('Long = ' || vLong);
    SELECT rowid
    INTO vRowid
    FROM employees
    WHERE first_name = 'Steven' AND last_name = 'King';
    DBMS_OUTPUT.PUT_LINE('Rowid = ' || vRowid);
    DBMS_OUTPUT.PUT_LINE('Timestamp = ' || vTimestamp);
    DBMS_OUTPUT.PUT_LINE('Timestamp with time zone = ' || vTimestamptz);
    DBMS_OUTPUT.PUT_LINE('String Tamanho Fixo Universal = ' || vTextoFixoUniversal);
    DBMS_OUTPUT.PUT_LINE('String Tamanho Variavel Universal = ' || vTextoVariavelUniversal);
    DBMS_OUTPUT.PUT_LINE('Numero Inteiro = ' || vNumeroInteiro);
    DBMS_OUTPUT.PUT_LINE('Numero Float = ' || vNumeroFloat);
    DBMS_OUTPUT.PUT_LINE('Numero Double = ' || vNumeroDouble);
END;
    
    