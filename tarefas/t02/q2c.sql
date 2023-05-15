CREATE OR REPLACE FUNCTION exibir_funcionarios_acima_idade_media()
RETURNS TABLE (nome varchar(15), idade integer, depto varchar(25))
AS $$
BEGIN
    RETURN QUERY
    SELECT f.nome, EXTRACT(YEAR FROM AGE(CURRENT_DATE, f.dataNasc)) AS idade, d.descricao AS depto
    FROM funcionario f
    INNER JOIN departamento d ON f.depto = d.codigo
    WHERE EXTRACT(YEAR FROM AGE(CURRENT_DATE, f.dataNasc)) > (
        SELECT AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, dataNasc)))
        FROM funcionario
        WHERE depto = f.depto
    );

    RETURN;
END;
$$ LANGUAGE PLPGSQL;
SELECT * FROM exibir_funcionarios_acima_idade_media();
