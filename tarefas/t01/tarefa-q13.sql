SELECT 
  p.nome AS projeto, 
  p.data_inicio AS inicio_projeto, 
  p.data_fim AS fim_projeto, 
  a.nome AS atividade, 
  a.data_inicio AS inicio_atividade, 
  a.data_fim AS fim_atividade
FROM projeto p
JOIN atividade_projeto ap ON ap.cod_projeto = p.codigo
JOIN atividade a ON a.codigo = ap.cod_atividade
WHERE a.data_inicio < p.data_inicio OR a.data_fim > p.data_fim;
