-- Escopo de identificadores e blocos aninhados
SET SERVEROUTPUT ON
DECLARE
    vBloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || vBloco1);
    -- se referenciar bloco2 aqui, ocorrerá erro
    DECLARE
        vBloco2 VARCHAR2(20) := 'Bloco 2';
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 1: ' || vBloco1);
        DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 2: ' || vBloco2);
        DECLARE
            vBloco3 VARCHAR2(20) := 'Bloco 3';
        BEGIN
            DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 1: ' || vBloco1);
            DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 2: ' || vBloco2);
            DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 3: ' || vBloco3);
        END;
        -- SE referenciar bloco3 aqui, ocorrerá erro
    END;
    DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 1: ' || vBloco1);
    -- se referenciar bloco2 aqui, ocorrerá erro
END;


-- TESTANDO ERROS

DECLARE
    vBloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Referenciando variável do Bloco 1: ' || vBloco1);
    DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 2: ' || vBloco2);  
    DECLARE
        vBloco2 VARCHAR2(20) := 'Bloco 2';
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 1: ' || vBloco1);
        DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 2: ' || vBloco2);
        DECLARE
            vBloco3 VARCHAR2(20) := 'Bloco 3';
        BEGIN
            DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 1: ' || vBloco1);
            DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 2: ' || vBloco2);
            DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 3: ' || vBloco3);
        END;
       DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 3: ' || vBloco3);
    END;
    DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 1: ' || vBloco1);
    DBMS_OUTPUT.PUT_LINE('Referenciando variavel do bloco 2: ' || vBloco2);
END;


