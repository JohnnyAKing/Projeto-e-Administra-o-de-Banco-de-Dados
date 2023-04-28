SELECT f.nome AS responsavel_projeto
FROM funcionario f
JOIN projeto p ON f.codigo = p.cod_responsavel
WHERE f.salario > (
    SELECT salario
    FROM funcionario f2
    JOIN departamento d ON f2.codigo = d.cod_gerente
    WHERE d.codigo = p.cod_depto
) OR f.codigo IN (
    SELECT d.cod_gerente
    FROM departamento d
)
