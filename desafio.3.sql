select 	
	tf.id_empresa, AVG(tfs.valor_faixa)
from
	tb_faixa_salario tfs 
join 
	tb_funcionario tf 
on
	(tf.id_salario = tfs.id_faixa)
group by 
	tf.id_empresa;

select 
	tf.id_empresa, MAX(tfs.valor_faixa)
from
	tb_faixa_salario tfs 
join
	tb_funcionario tf 
on
	(tf.id_salario = tfs.id_faixa)
group by 
	tf.id_empresa;
	
select 
	tf.id_empresa, MIN(tfs.valor_faixa)
from
	tb_faixa_salario tfs 
join
	tb_funcionario tf 
on
	(tf.id_salario = tfs.id_faixa)
group by
	tf.id_empresa;