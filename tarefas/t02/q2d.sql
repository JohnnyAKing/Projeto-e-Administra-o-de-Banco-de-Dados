CREATE OR REPLACE FUNCTION calcular_dias_atrasados(cod_atividade INT)
RETURNS INT AS $$
DECLARE
  atraso INT;
BEGIN
  SELECT DATEDIFF('day', data_fim, CURRENT_DATE) INTO atraso
  FROM atividade
  WHERE codigo = cod_atividade;

  RETURN atraso;
END;
$$ LANGUAGE plpgsql;
SELECT calcular_dias_de_atrasados(1);
