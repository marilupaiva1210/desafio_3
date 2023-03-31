insert into tb_empresa 
	(razao_social, numero_cnpj)
values 
	('padaria seu joão', '12.133.162/0001-34'),
	('salão da paula', '92.191.112/0002-81'),
	('barbearia', '63.232.242/0001-12'),
	('peixearia', '28.337.183/0001-29'),
	('pet venter', '32.123.102/0002-52');

insert into tb_guardar 
	(operacao, id_empresa)
values 
	('adiantamento', 1),
	('mensal', 2),
	('mensal', 3),
	('adiantamento', 4),
 	('férias', 5);

insert into tb_cargo 
	(nome, id_empresa)
values 
	('atendente', 1),
	('cabeleleira', 2),
	('barbeiro', 3),
	('limpador de peixa', 4),
	('banho e tosa', 5);

insert into tb_faixa_salario 
	(valor_faixa, id_cargo)
values 
	(2200, 6),
	(8350, 7),
	(1415, 8),
	(2100, 9),
	(1915, 10);

insert into tb_funcionario 
	(cpf, titulo, endereco, rg, data_nascimento, id_salario, id_cargo, id_empresa)
values 
	('102.627.261-11', 1001, 'são paulo', '12.627.283-9', '1990-02-18', 1, , 1),
	('152.372.819-32', 2002, 'rio de janeiro', '11.162.162-6', '2000-12-11', 2, 7, 2),
	('162.271.829-82', 3003, 'curitiba', '36.362.272-5', '2002-09-15', 3, 8, 3),
	('121.152.122-21', 4004, 'recife', '92.362.267-4', '1987-12-06', 4, 9, 4),
	('182.819.627-90', 5005, 'amapá', '12.263.382-8', '1995-04-07', 5, 10, 5);

insert into tb_dependente 
	(cpf, nome_mãe, data_de_nascimento, nome, id_funcionario)
values 
	('182.263.372-35', 'Michelle Ribeiro', '2007-09-29', 'Eduardo', '102.627.261-11'),
	('128.328.182-14', 'Natalia Paz', '2020-10-19', 'Leticia', '152.372.819-32'),
	('153.162.892-02', 'Amelia Jesus', '2021-05-06', 'Giovanne', '162.271.829-82'),
	('148.829.162-36', 'Roberta Cruz', '2003-11-06', 'Larissa', '121.152.122-21'),
	('173.173.382-18', 'Amanda Souza', '2013-04-07', 'Joaquim', '182.819.627-90');
	
