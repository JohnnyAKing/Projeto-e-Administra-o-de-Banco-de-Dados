CREATE OR REPLACE FUNCTION calcular_aniversario(data_nascimento date)
RETURNS date AS
$$
BEGIN

    RETURN (DATE_TRUNC('year', CURRENT_DATE) + 
           (DATE_PART('year', CURRENT_DATE) - DATE_PART('year', data_nascimento)) * INTERVAL '1 year' +
           (DATE_PART('month', data_nascimento) - 1) * INTERVAL '1 month' +
           DATE_PART('day', data_nascimento) * INTERVAL '1 day');
END;
$$
LANGUAGE plpgsql;

SELECT calcular_aniversario(dataNasc) AS aniversario FROM funcionario;

