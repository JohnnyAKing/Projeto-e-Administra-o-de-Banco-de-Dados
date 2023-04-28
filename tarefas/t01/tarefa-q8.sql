CREATE VIEW contagem_projetos AS
SELECT cod_depto, COUNT(*) AS num_projetos
FROM projeto
GROUP BY cod_depto;

CREATE VIEW nome_gerente AS
SELECT d.codigo, f.nome AS gerente
FROM departamento d
LEFT JOIN funcionario f ON d.cod_gerente = f.codigo;

SELECT d.descricao AS departamento, ng.gerente, COALESCE(cp.num_projetos, 0) AS num_projetos
FROM departamento d
LEFT JOIN nome_gerente ng ON d.codigo = ng.codigo
LEFT JOIN contagem_projetos cp ON d.codigo = cp.cod_depto
ORDER BY d.codigo;