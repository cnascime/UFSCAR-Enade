/* TRATAMENTOS TABELA FATO*/
-- Tratando linhas com nota zerada
delete 
from enade
where nt_ger = 0
=Resultado============
104,501 Row(s) Deleted


-- Tratando renda com valores nulos 
select distinct nu_ano
from enade
where co_rs_s5 is null
=Resultado============
2011
2012

update enade
set co_rs_s5='E'
where co_rs_s5 is null
=Resultado============
10,093 Row(s) Updated


-- Tratando etnia com valores nulos, compostos ou não declarados
select distinct nu_ano
from enade
where co_rs_s2 is null
=Resultado============
2011
2012

select distinct nu_ano
from enade
where co_rs_s2 like '*'
=Resultado============
2008

update enade
set co_rs_s2='.'
where 
co_rs_s2 is null
or co_rs_s2 like '*'
or co_rs_s2 like 'N'
=Resultado============
11,709 Row(s) Updated