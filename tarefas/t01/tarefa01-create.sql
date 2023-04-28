funcionario(codigo, nome, sexo, dt_nasc, salario, cod_depto)
departamento(codigo, descricao, cod_gerente)
projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim)
atividade_projeto(cod_projeto, cod_atividade)

Chaves estrangeiras:

funcionario(cod_depto) ⇒ departamento(codigo)
departamento(cod_gerente) ⇒ funcionário(codigo)
	projeto(cod_depto) ⇒ departamento(codigo)
projeto(cod_responsavel) ⇒ funcionário(codigo)
	atividade_projeto(cod_projeto) ⇒ projeto(codigo)
	atividade_projeto(cod_atividade) ⇒ atividade(codigo)
atividade_projeto(cod_responsavel) ⇒ funcionário(codigo)
