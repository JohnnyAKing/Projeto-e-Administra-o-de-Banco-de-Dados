CREATE OR REPLACE FUNCTION calcular_atividades_membros(cod_membro INT)
RETURNS INT AS $$
DECLARE
   total_atividades INT;
BEGIN
   SELECT COUNT(*)
   INTO total_atividades
   FROM atividade_membro
   WHERE cod_membro = codMembro;
   
   RETURN total_atividades;
END;
$$ LANGUAGE plpgsql;
SELECT calcular_atividades_membrosmbros(1);
