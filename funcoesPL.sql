DECLARE
    vNumero1 NUMBER(13,2); -- declaração de variavel para o num1
    vNumero2 NUMBER(13,2); -- declaração de variavel para o num2
    vMedia NUMBER(13,2); -- declaração de variavel para a media calculada
BEGIN
    /* Calculo do valor da media ,
    entre dois numeros 
    17/07/23
    */
    vNumero1 := 11120.374;
    vNumero2 := 35250.285;
    vMedia := ROUND((vNumero1 + vNumero2) / 2, 2);    -- calculo da media
    DBMS_OUTPUT.PUT_LINE('Valor de Numero 1 ' || vNumero1); -- valor de numero 1
    DBMS_OUTPUT.PUT_LINE('Valor de Numero 2 ' || vNumero2); -- valor de numero 2
    DBMS_OUTPUT.PUT_LINE('Media ' || TO_CHAR(vMedia, '99G999G999D99')); -- valor de Media
END;