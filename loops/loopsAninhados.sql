-- controlando LOOP's aninhados

SET SERVEROUTPUT ON
DECLARE
    vTotal NUMBER(30) := 1;
BEGIN
    -- colocando uma label para o loop
    <<LOOP1>>
    FOR i IN 0..8 LOOP
        DBMS_OUTPUT.PUT_LINE('I: ' || to_char(i));
        <<LOOP2>>
        FOR j IN 0..8 LOOP
            DBMS_OUTPUT.PUT_LINE('J: ' || to_char(J));
            DBMS_OUTPUT.PUT_LINE('Valor Total: ' || to_char(vTotal));
            vTotal := vTotal * 2;            
            --EXIT LOOP1 WHEN vTotal > 10000; --se quiser colocar uma condição de saída
        END LOOP;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Valor Finalizado: ' || to_char(vTotal));
END;