CREATE OR REPLACE FUNCTION calcular_idade_media_departamento()
RETURNS TABLE (departamento varchar(15), media_idade numeric) AS
$$
BEGIN
    RETURN QUERY
    SELECT d.descricao, AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, f.dataNasc))) AS media_idade
    FROM departamento d
    LEFT JOIN funcionario f ON d.codigo = f.depto
    GROUP BY d.descricao;
END;
$$
LANGUAGE plpgsql;
SELECT * FROM calcular_idade_media_departamento();
