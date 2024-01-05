/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     04/01/2024 01:38:39                          */
/*==============================================================*/

/*criar base de dados*/
DROP DATABASE IF EXISTS trabalho;
CREATE DATABASE trabalho;
USE trabalho;

drop table if exists Apontamentos;

drop table if exists Autor;

drop table if exists Docente;

drop table if exists Editora;

drop table if exists Encomendas;

drop table if exists Entregas;

drop table if exists Estudantes;

drop table if exists Fornecedores;

drop table if exists Funcionarios;

drop table if exists Livro;

drop table if exists Materiais;

drop table if exists UC;

drop table if exists Vendas;

drop table if exists verificaçao_venda;

/*==============================================================*/
/* Table: Apontamentos                                          */
/*==============================================================*/
create table Apontamentos
(
   ID_codigo            int not null,
   ID_UC                int not null,
   Tipo_apontamentos    varchar(25) not null,
   A_Titulo             varchar(30) not null,
   primary key (ID_codigo)
);

/*==============================================================*/
/* Table: Autor                                                 */
/*==============================================================*/
create table Autor
(
   ID_Autor             int not null,
   ID_Editora           int,
   A_Nome               varchar(30) not null,
   A_Nascimento         date not null,
   A_email_P            varchar(60) not null,
   A_resumo_biblio      text not null,
   A_observações        text,
   A_foto               varchar(50) not null,
   primary key (ID_Autor)
);

/*==============================================================*/
/* Table: Docente                                               */
/*==============================================================*/
create table Docente
(
   ID_Docente         int not null,
   D_Nome               varchar(30) not null,
   D_Morada             varchar(60),
   D_Telefone           numeric(9,0) not null,
   D_Email              varchar(60) not null,
   D_Grau               varchar(20) not null,
   D_Categoria          varchar(20) not null,
   primary key (ID_Docente)
);

/*==============================================================*/
/* Table: Editora                                               */
/*==============================================================*/
create table Editora
(
   ID_Editora           int not null,
   Edit_Contrato_Fim    date not null,
   Edit_Contrato_Inicio date not null,
   Edit_inf_Intituicional text not null,
   Edit_pag_Web         varchar(60) not null,
   Edit_email           varchar(60) not null,
   Edit_Morada          varchar(60) not null,
   primary key (ID_Editora)
);

/*==============================================================*/
/* Table: Encomendas                                            */
/*==============================================================*/
create table Encomendas
(
   ID_funcionario       int not null,
   ID_Fornecedor        int not null,
   Enc_ID               int not null,
   Enc_Recepcao         bool not null,
   Enc_Data             date not null,
   Enc_Produto          char(30),
   primary key (ID_funcionario, ID_Fornecedor, Enc_ID)
);

/*==============================================================*/
/* Table: Entregas                                              */
/*==============================================================*/
create table Entregas
(
   ID_codigo            int not null,
   ID_Estudantes        int not null,
   Data                 date,
   interesse            bool,
   primary key (ID_codigo, ID_Estudantes)
);

/*==============================================================*/
/* Table: Estudantes                                            */
/*==============================================================*/
create table Estudantes
(
   ID_Estudantes        int not null,
   E_Nome               varchar(30) not null,
   E_Morada             varchar(60) not null,
   E_Telefone           numeric(9,0) not null,
   E_Email              varchar(60) not null,
   primary key (ID_Estudantes)
);

/*==============================================================*/
/* Table: Fornecedores                                          */
/*==============================================================*/
create table Fornecedores
(
   ID_Fornecedor        int not null,
   For_Designacao       varchar(20) not null,
   For_Morada           varchar(60) not null,
   For_Telefone         numeric(9,0) not null,
   For_Nif              numeric(9,0) not null,
   For_Categoria        varchar(20) not null,
   primary key (ID_Fornecedor)
);

/*==============================================================*/
/* Table: Funcionarios                                          */
/*==============================================================*/
create table Funcionarios
(
   ID_funcionario       int not null,
   F_Nome               varchar(30) not null,
   F_Morada             varchar(60) not null,
   F_Telefone           numeric(9,0) not null,
   F_Email              varchar(60) not null,
   F_Graus              varchar(20) not null,
   F_Categoria          varchar(20) not null,
   F_ordenado           numeric(6,2) not null,
   F_data_contrato      date not null,
   F_escalao            int not null,
   primary key (ID_funcionario)
);

/*==============================================================*/
/* Table: Livro                                                 */
/*==============================================================*/
create table Livro
(
   ID_Editora           int not null,
   ID_Livros            int not null,
   ID_M_codigo          int not null,
   ID_UC                int not null,
   L_Titulo             varchar(30) not null,
   L_Area               varchar(50) not null,
   L_ano_edicao         numeric(4,0) not null,
   L_num_edicao         int not null,
   L_ISBN               numeric(13,0) not null,
   L_Custo_Compra       numeric(5,2) not null,
   L_Preco_Venda        numeric(5,2) not null,
   L_Resumos            text not null,
   L_num_paginas        int not null,
   L_Formatos           varchar(50) not null,
   primary key (ID_Editora, ID_Livros)
);

/*==============================================================*/
/* Table: Materiais                                             */
/*==============================================================*/
create table Materiais
(
   ID_M_codigo          int not null,
   M_Codigo_fabricante  int not null,
   M_Stock              int not null,
   M_Custo_compra       numeric(6,2) not null,
   M_Custo_Venda        numeric(6,2) not null,
   M_Fabricante         varchar(50) not null,
   M_categoria          varchar(30) not null,
   M_Localizacao        varchar(60) not null,
   primary key (ID_M_codigo)
);

/*==============================================================*/
/* Table: UC                                                    */
/*==============================================================*/
create table UC
(
   ID_UC                int not null,
   ID_Docente         int,
   U_Nome               varchar(30) not null,
   Sigla                varchar(4),
   Curso                varchar(40) not null,
   Ano_curso            numeric(4,0),
   Semestre             numeric(1,0),
   ECTS                 int not null,
   primary key (ID_UC)
);

/*==============================================================*/
/* Table: Vendas                                                */
/*==============================================================*/
create table Vendas
(
   ID_Vendas            int not null,
   ID_funcionario       int not null,
   V_custo_total        numeric(6,2) not null,
   primary key (ID_Vendas)
);

/*==============================================================*/
/* Table: verificaçao_venda                                     */
/*==============================================================*/
create table verificaçao_venda
(
   ID_Vendas            int not null,
   ID_M_codigo          int not null,
   veri_Produto         varchar(20) not null,
   veri_data_venda      datetime not null,
   primary key (ID_Vendas, ID_M_codigo)
);

alter table Apontamentos add constraint FK_Apontamentos_UC foreign key (ID_UC)
      references UC (ID_UC) on delete restrict on update restrict;

alter table Autor add constraint FK_Autor_Editora foreign key (ID_Editora)
      references Editora (ID_Editora) on delete restrict on update restrict;

alter table Encomendas add constraint FK_Encomendas_Fornecedores foreign key (ID_Fornecedor)
      references Fornecedores (ID_Fornecedor) on delete restrict on update restrict;

alter table Encomendas add constraint FK_Encomendas_Funcionarios foreign key (ID_funcionario)
      references Funcionarios (ID_funcionario) on delete restrict on update restrict;

alter table Entregas add constraint FK_Entrega_Estudantes foreign key (ID_Estudantes)
      references Estudantes (ID_Estudantes) on delete restrict on update restrict;

alter table Entregas add constraint FK_Entregas_Apontamentos foreign key (ID_codigo)
      references Apontamentos (ID_codigo) on delete restrict on update restrict;

alter table Livro add constraint FK_Livro_Editora foreign key (ID_Editora)
      references Editora (ID_Editora) on delete restrict on update restrict;

alter table Livro add constraint FK_Livro_Materiais foreign key (ID_M_codigo)
      references Materiais (ID_M_codigo) on delete restrict on update restrict;

alter table Livro add constraint FK_Relationship_13 foreign key (ID_UC)
      references UC (ID_UC) on delete restrict on update restrict;

alter table UC add constraint FK_UC_Docente foreign key (ID_Docente)
      references Docente (ID_Docente) on delete restrict on update restrict;

alter table Vendas add constraint FK_Vendas_Funcionarios foreign key (ID_funcionario)
      references Funcionarios (ID_funcionario) on delete restrict on update restrict;

alter table verificaçao_venda add constraint FK_Vereficacao_Vendas foreign key (ID_Vendas)
      references Vendas (ID_Vendas) on delete restrict on update restrict;

alter table verificaçao_venda add constraint FK_Verificacao_Materiais foreign key (ID_M_codigo)
      references Materiais (ID_M_codigo) on delete restrict on update restrict;

