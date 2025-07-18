create database sapataria;
\c sapataria
set datestyle to 'ISO,DMY';

create table if not exists cliente (
   cpf bigint not null,
   nome varchar(50) not null,
   telefone bigint not null,
   constraint pk_cpf primary key (cpf));
--
create table if not exists usuario (
   email varchar(50) not null,
   cpf bigint not null,
   nome varchar(50),
   senha varchar(50),
   cargo varchar(50),
   constraint pk_email primary key (email));
--
create table if not exists ordem_servico (
   id bigint not null,
   descricao text not null,
   data_entrega date not null,
   valor decimal(10,2) not null,
   cliente_cpf bigint not null,
   usuario_email varchar(50) not null,
   status varchar(50) not null,
   tipo_servico varchar(50),
   constraint pk_id_ordem primary key (id),
   constraint fk_cliente foreign key (cliente_cpf) references cliente(cpf),
   constraint fk_usuario foreign key (usuario_email) references usuario(email));
--
create table if not exists marca (
   id bigint not null,
   nome varchar(50) not null,
   constraint pk_id_marca primary key (id));
--
create table if not exists tipo (
   id bigint not null,
   nome varchar(50) not null,
   constraint pk_id_tipo primary key (id));
--
create table if not exists produto (
   id bigint not null,
   cor varchar(50) not null,
   descricao text not null,
   marca_id bigint not null,
   tipo_id bigint not null,
   constraint pk_id_produto primary key (id),
   constraint fk_marca foreign key (marca_id) references marca(id),
   constraint fk_tipo foreign key (tipo_id) references tipo(id));
--
create table if not exists ordem_produto (
   ordem_id bigint not null,
   produto_id bigint not null,
   constraint pk_ordem_produto primary key (ordem_id, produto_id),
   constraint fk_ordem_servico foreign key (ordem_id) references ordem_servico(id),
   constraint fk_produto foreign key (produto_id) references produto(id));
--
