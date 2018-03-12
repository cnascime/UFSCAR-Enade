/* Preenchendo tabela fato */
CREATE TABLE Nota_v0 (
  ano INTEGER  NOT NULL  ,
  Curso_idCurso INTEGER  NOT NULL  ,
  Localizacao_idLocalizacao INTEGER  NOT NULL  ,
  Perfil_idPerfil INTEGER  NOT NULL  ,
  nota_geral FLOAT  NOT NULL  ,
  qtd_alunos INTEGER  NOT NULL
);

insert into Nota_v0 (ano, Curso_idCurso, Localizacao_idLocalizacao, Perfil_idPerfil, nota_geral, qtd_alunos) ( 
	select 
		enade.nu_ano,
		DePara_Curso.idCurso,
		to_number(enade.co_munic_habil,'9999999'),
		Perfil.id_perfil,
		avg(enade.nt_ger),
		count(enade.nt_ger)
	from	
		enade,
		DePara_Sexo,
		DePara_Etnia,
		DePara_Renda,
		DePara_Curso,
		Perfil
	where 
		enade.tp_sexo = DePara_Sexo.tp_sexo
		and enade.co_rs_s2 = DePara_Etnia.co_rs_s2
		and enade.co_rs_s5 = DePara_Renda.co_rs_s5
		and enade.co_grupo = DePara_Curso.co_grupo
		and Perfil.sexo = DePara_Sexo.sexo
		and Perfil.etnia = DePara_Etnia.etnia
		and Perfil.faixa_renda = DePara_Renda.faixa_renda
	group by
		enade.nu_ano,
		DePara_Curso.idCurso,
		enade.co_munic_habil,
		Perfil.id_perfil
);
