SELECT nome 
FROM funcionario 
WHERE salario > (SELECT AVG(salario) FROM funcionario WHERE cod_depto = 2);