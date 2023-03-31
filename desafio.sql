create table public.tb_empresa(
codigo int primary key generated always as identity,
razao_social varchar(50),
numero_cnpj varchar(28)
);

create table public.tb_guardar(
codigo int primary key generated always as identity,
operacao varchar(20),
id_empresa int,
constraint fk_empresa
	foreign key(id_empresa)
	references tb_empresa(codigo)
);

create table public.tb_cargo(
cbo int primary key generated always as identity,
nome varchar(50),
id_empresa int,
constraint fk_empresa
	foreign key (id_empresa)
	references tb_empresa(codigo)
);

create table public.tb_faixa_salario(
id_faixa int primary key generated always as identity,
valor_faixa numeric,
id_cargo int,
constraint fk_cargo
	foreign key(id_cargo)
	references tb_cargo(cbo)
);

create table public.tb_funcionario(
cpf varchar(20) primary key,
titulo int,
endereco varchar(100),
rg varchar(20),
data_nascimento date,
id_salario int,
id_cargo int,
id_empresa int,
constraint fk_salario
	foreign key(id_salario)
	references tb_faixa_salario(id_faixa),
constraint fk_cargo
	foreign key(id_cargo)
	references tb_cargo(cbo),
constraint fk_empresa
	foreign key(id_empresa)
	references tb_empresa(codigo)
);

create table public.tb_dependente(
cpf varchar(20) primary key,
nome_mãe varchar(50),
data_de_nascimento date,
nome varchar(50),
id_funcionario varchar(20),
constraint fk_funcionario
	foreign key(id_funcionario)
	references tb_funcionario(cpf)
);




