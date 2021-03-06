USE [AdmLoja]
GO
/****** Object:  Table [dbo].[CensoPessoal]    Script Date: 09/07/2010 14:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CensoPessoal](
	[IDCensoPessoal] [int] IDENTITY(1,1) NOT NULL,
	[IDCenso] [int] NULL,
	[IDPessoa] [int] NULL,
	[Endereco] [varchar](100) NULL,
	[EnderecoBairro] [varchar](100) NULL,
	[EnderecoIDCidade] [int] NULL,
	[CidadeNome] [varchar](100) NULL,
	[IDPessoaProfissao] [int] NULL,
	[ProfissaoNome] [varchar](100) NULL,
	[TrabalhoEndereco] [varchar](100) NULL,
	[TrabalhoBairro] [varchar](100) NULL,
	[TrabalhoIDCidade] [varchar](100) NULL,
	[TrabalhoCidadeNome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[DataInclusao] [datetime] NULL,
	[DataDesativacao] [datetime] NULL,
 CONSTRAINT [PK_CensoPessoal] PRIMARY KEY CLUSTERED 
(
	[IDCensoPessoal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaGrauTipo]    Script Date: 09/07/2010 14:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaGrauTipo](
	[IDPessoaGrauTipo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[TipoDeGrauDeObreiroAtivo] [varchar](1) NULL,
 CONSTRAINT [PK_PessoaGrauTipo] PRIMARY KEY CLUSTERED 
(
	[IDPessoaGrauTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [PessoaGrauNome] ON [dbo].[PessoaGrauTipo] 
(
	[Nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaEstadoCivil]    Script Date: 09/07/2010 14:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaEstadoCivil](
	[IDPessoaEstadoCivil] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[NomeFemenino] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_PessoaEstadoCivil] PRIMARY KEY CLUSTERED 
(
	[IDPessoaEstadoCivil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [PessoaEstadoCivilNome] ON [dbo].[PessoaEstadoCivil] 
(
	[Nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PessoaEstadoCivilNomeFemenino] ON [dbo].[PessoaEstadoCivil] 
(
	[NomeFemenino] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PotenciaDEPARA]    Script Date: 09/07/2010 14:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PotenciaDEPARA](
	[IDPotenciaDepara] [int] IDENTITY(1,1) NOT NULL,
	[IDPotencia] [int] NOT NULL,
	[CODIGO] [int] NOT NULL,
 CONSTRAINT [PK_PotenciaDEPARA] PRIMARY KEY CLUSTERED 
(
	[IDPotenciaDepara] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaDepara]    Script Date: 09/07/2010 14:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PessoaDepara](
	[IDPessoaDepara] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NOT NULL,
	[CODOBREIRO] [int] NOT NULL,
 CONSTRAINT [PK_PessoaDepara] PRIMARY KEY CLUSTERED 
(
	[IDPessoaDepara] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaTipo]    Script Date: 09/07/2010 14:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaTipo](
	[IDPessoaTipo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[IDEmpresa] [int] NULL,
 CONSTRAINT [PK_PessoaTipo] PRIMARY KEY CLUSTERED 
(
	[IDPessoaTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [PessoaTipoNome] ON [dbo].[PessoaTipo] 
(
	[Nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LojaDEPARA]    Script Date: 09/07/2010 14:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LojaDEPARA](
	[IDLojaDepara] [int] IDENTITY(1,1) NOT NULL,
	[IDLoja] [int] NOT NULL,
	[CODLOJA] [int] NOT NULL,
 CONSTRAINT [PK_LojaDEPARA] PRIMARY KEY CLUSTERED 
(
	[IDLojaDepara] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 09/07/2010 14:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[Senha] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[PessoaGrauParentescoAlterar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 09/08/2008
-- DESCRICAO...: Atualizacao de dados na Tabela PessoaGrauParentesco
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaGrauParentescoAlterar]
	-- Add the parameters for the stored procedure here
	@IDPessoaGrauParentesco INT = NULL,
	@Ativo varchar(1),
	@Nome varchar(100),
	@NomeFemenino VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE PessoaGrauParentesco SET
		Nome=@Nome,
		Ativo=@Ativo,
		NomeFemenino=@NomeFemenino
	WHERE IDPessoaGrauParentesco=@IDPessoaGrauParentesco
END
GO
/****** Object:  Table [dbo].[PessoaGrauParentesco]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaGrauParentesco](
	[IDPessoaGrauParentesco] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[NomeFemenino] [varchar](100) NULL,
 CONSTRAINT [PK_PessoaGrauParentesco] PRIMARY KEY CLUSTERED 
(
	[IDPessoaGrauParentesco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [PessoaGrauparentescoNome] ON [dbo].[PessoaGrauParentesco] 
(
	[Nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PessoaGrauParentescoNomeFemenino] ON [dbo].[PessoaGrauParentesco] 
(
	[NomeFemenino] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CidadePaisIncluir]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 10/08/2008
-- DESCRICAO...: Inclusão de dados na Tabela CidadePais
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadePaisIncluir]
	-- Add the parameters for the stored procedure here
	 @Ativo varchar(1)
	,@Nome varchar(100)
	,@Nacionalidade varchar(100)
	,@IDCidadeContinente INT =null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO CidadePais (Ativo,Nome,Nacionalidade,IDCidadeContinente) 
	                 values(@Ativo,@Nome,@Nacionalidade,@IDCidadeContinente)
	
	DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS id	
END
GO
/****** Object:  StoredProcedure [dbo].[PotenciaBandeiraIncluir]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <21/09/2008>
-- Description:	<Insercao de Imagem na Tabela Bandeira de Potencia>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PotenciaBandeiraIncluir]
	-- Add the parameters for the stored procedure here
	@IDPotencia int ,
	@Bandeira IMAGE
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PotenciaBandeira (IDPotencia,Bandeira) values(@IDPotencia,@Bandeira)
	
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	--- RETURN @ID
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[PotenciaBandeiraSelecionar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <21/09/2008>
-- Description:	<Selecionar as Bandeiras das Potencias>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PotenciaBandeiraSelecionar]
 @IDPotencia     INT
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT IDPotenciaBandeira,Bandeira
	FROM   PotenciaBandeira
	WHERE  (IDPotencia = @IDPotencia)
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeIncluir]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/08/2008>
-- Description:	<Insercao de dados na Tabela Cidade>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100),
	@IDCidadeEstado int,
	@Cep VARCHAR(12)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Cidade (Ativo,Nome,IDCidadeEstado,Cep) values(@Ativo,@Nome,@IDCidadeEstado,@Cep)
	
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS id
END
GO
/****** Object:  StoredProcedure [dbo].[PotenciaBandeiraAlterar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <21/09/2008>
-- Description:	<Atualizacao de dados na Tabela de Potencia Bandeira >
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PotenciaBandeiraAlterar]
	-- Add the parameters for the stored procedure here
	@IDPotencia INT,
	@Bandeira IMAGE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE PotenciaBandeira SET
		Bandeira=@Bandeira
	WHERE IDPotencia=@IDPotencia
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeAlterar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <18/02/2008>
-- Description:	<Atualizacao de dados na Tabela CidadeEstado>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeAlterar]
	-- Add the parameters for the stored procedure here
	@IDCidade int,	
	@Ativo varchar(1),
	@Nome varchar(80),
    @IDCidadeEstado int,
    @Cep VARCHAR(12)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Cidade SET
		Nome=@Nome,
		Ativo=@Ativo,
		IDCidadeEstado=@IDCidadeEstado,
		Cep=@Cep
	WHERE IDCidade=@IDCidade
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeEstadoAlterar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <18/02/2008>
-- Description:	<Atualizacao de dados na Tabela CidadeEstado>
---------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeEstadoAlterar]
	-- Add the parameters for the stored procedure here
	@IDCidadeEstado int,	
	@Ativo varchar(1),
	@Nome varchar(80),
	@Naturalidade varchar(100),
	@Sigla varchar(20),
    @IDCidadePais int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE CidadeEstado SET
		Nome=@Nome,
		Ativo=@Ativo,
		Naturalidade=@Naturalidade,
        Sigla=@Sigla,
		IDCidadePais=@IDCidadePais
	WHERE IDCidadeEstado=@IDCidadeEstado
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeEstadoIncluir]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/08/2008>
-- Description:	<Insercao de dados na Tabela CidadePais>
---------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeEstadoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1),
	@Nome varchar(100),
	@Naturalidade varchar(100),
	@Sigla varchar(20),
	@IDCidadePais INT     
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO CidadeEstado (
	Ativo,
	Naturalidade,
	Nome,
	Sigla,
	IDCidadePais
	) values(
	@Ativo,
	@Naturalidade,
	@Nome,
	@Sigla,
	@IDCidadePais
)

	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS id	
	
END
GO
/****** Object:  Table [dbo].[Sistema]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sistema](
	[IDSistema] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Ativo] [varchar](1) NOT NULL,
	[Tecnologia] [varchar](100) NULL,
 CONSTRAINT [PK_Sistema] PRIMARY KEY CLUSTERED 
(
	[IDSistema] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SistemaPermissoes]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SistemaPermissoes](
	[IDSistemaPermissoes] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[SistemaCodigo] [int] NULL,
 CONSTRAINT [PK_SistemaPermissoes] PRIMARY KEY CLUSTERED 
(
	[IDSistemaPermissoes] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CargoTipo]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CargoTipo](
	[IDCargoTipo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_CargoTipo] PRIMARY KEY CLUSTERED 
(
	[IDCargoTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [CargoTipoNome] ON [dbo].[CargoTipo] 
(
	[Nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioPermissoes]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioPermissoes](
	[IDUsuarioPermissoes] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[SistemaCodigo] [int] NOT NULL,
	[SistemaPermissoesCodigo] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioPermissoes] PRIMARY KEY CLUSTERED 
(
	[IDUsuarioPermissoes] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[LojaMemorandoIncluir]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <29/09/2008>
-- Description:	<Insercao de dados na Tabela de Historico das Loja (LojaMemorando) >
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaMemorandoIncluir]
	-- Add the parameters for the stored procedure here
	@IDLoja int ,
	@Memorando varchar(2000)= NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO LojaMemorando (IDLoja,Memorando) values(@IDLoja,@Memorando)
	
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	--- RETURN @ID
	 SELECT @ID AS ID
END
GO
/****** Object:  Table [dbo].[FinanceiroTipo]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FinanceiroTipo](
	[IDFinanceiroTipo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[Tipo] [varchar](1) NULL,
	[Valor] [decimal](18, 2) NULL,
	[TipoQuitacao] [varchar](1) NULL,
	[Codigo] [int] NULL,
	[IDEmpresa] [int] NULL,
 CONSTRAINT [PK_FinanceiroTipo] PRIMARY KEY CLUSTERED 
(
	[IDFinanceiroTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[LojaMemorandoAlterar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <29/09/2008>
-- Description:	<Insercao de dados na Tabela de Historico das Loja (LojaMemorando) >
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaMemorandoAlterar]
	-- Add the parameters for the stored procedure here
	@IDLojaMemorando int ,
	@IDLoja int ,
	@Memorando varchar(2000) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE LojaMemorando SET
		 IDLoja=@IDLoja
		,Memorando=@Memorando
	WHERE IDLojaMemorando=@IDLojaMemorando
END
GO
/****** Object:  Table [dbo].[FinanceiroForma]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FinanceiroForma](
	[IDFinanceiroForma] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[IDEmpresa] [int] NULL,
 CONSTRAINT [PK_FinanceiroForma] PRIMARY KEY CLUSTERED 
(
	[IDFinanceiroForma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[LojaMemorandoSelecionar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <29/09/2008>
-- Description:	<Selecionar os Memorandos das Lojas>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaMemorandoSelecionar]
 @IDLoja         int

-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT IDLojaMemorando,IDLoja,Memorando
	FROM LojaMemorando
	WHERE (IDLoja = @IDLoja)
END
GO
/****** Object:  Table [dbo].[CargoNivel]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CargoNivel](
	[IDCargoNivel] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_CargoNivel] PRIMARY KEY CLUSTERED 
(
	[IDCargoNivel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [CargoNivelNome] ON [dbo].[CargoNivel] 
(
	[Nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Financeiro]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Financeiro](
	[IDFinanceiro] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[Operacao] [int] NOT NULL,
	[IDPessoa] [int] NULL,
	[IDLoja] [int] NULL,
	[DataInclusao] [datetime] NULL,
	[IDFinanceiroTipo] [int] NULL,
	[IDFinanceiroForma] [int] NULL,
	[Quantidade] [int] NULL,
	[ValorUnitario] [decimal](18, 2) NULL,
	[ValorTotal] [decimal](18, 2) NULL,
	[Ativo] [int] NULL,
	[IDObreiro] [int] NULL,
	[Observacao] [varchar](200) NULL,
	[Tipo] [int] NULL,
	[Pago] [varchar](1) NULL,
	[Boleto] [varchar](50) NULL,
	[IDFinanceiroPai] [int] NULL,
	[TipoContas] [int] NULL,
 CONSTRAINT [PK_Financeiro] PRIMARY KEY CLUSTERED 
(
	[IDFinanceiro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Lancamento 1 - taxa 2 - peculio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Financeiro', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
/****** Object:  StoredProcedure [dbo].[CidadePaisAlterar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 05/08/2008
-- DESCRICAO...: Atualizacao de dados na Tabela CidadePais
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadePaisAlterar]
	-- Add the parameters for the stored procedure here
	@IDCidadePais INT
	,@Ativo varchar(1)
	,@Nome varchar(100)
	,@Nacionalidade varchar(100)
	,@IDCidadeContinente INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE CidadePais SET
		 Nome=@Nome
		,Nacionalidade=@Nacionalidade
		,Ativo=@Ativo
		,IDCidadeContinente=@IDCidadeContinente
	WHERE IDCidadePais=@IDCidadePais
END
GO
/****** Object:  Table [dbo].[FinanceiroTipoDepara]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceiroTipoDepara](
	[IDFinanceiroTipoDepara] [int] IDENTITY(1,1) NOT NULL,
	[IDFinanceiroTipo] [int] NOT NULL,
	[CODRECEITA] [int] NULL,
	[Codigo] [int] NULL,
 CONSTRAINT [PK_FinanceiroTipoDepara] PRIMARY KEY CLUSTERED 
(
	[IDFinanceiroTipoDepara] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaDetalhe]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpresaDetalhe](
	[IDEmpresaDetalhe] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[Mensagem1] [varchar](250) NULL,
	[Mensagem2] [varchar](250) NULL,
	[Logo] [image] NULL,
	[Recibo] [int] NULL,
	[nota] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LojaRegiao]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LojaRegiao](
	[IDLojaRegiao] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[IDEmpresa] [int] NULL,
 CONSTRAINT [PK_LojaRegiao] PRIMARY KEY CLUSTERED 
(
	[IDLojaRegiao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Convenio]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Convenio](
	[IDConvenio] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_Convenio] PRIMARY KEY CLUSTERED 
(
	[IDConvenio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CensoDadosGerais]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CensoDadosGerais](
	[IDCensoDadosGreais] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NULL,
	[IDCenso] [int] NULL,
	[Nome] [varchar](200) NULL,
	[CPF] [varchar](50) NULL,
	[Sexo] [char](1) NULL,
	[RG] [varchar](50) NULL,
	[Natureza] [varchar](150) NULL,
	[IDPessoaTipo] [int] NULL,
	[IDPessoaGrauTipo] [int] NULL,
	[NascimentoData] [datetime] NULL,
	[NascimentoIDCidade] [int] NULL,
	[IDPessoaEstadoCivil] [int] NULL,
	[CasamentoData] [datetime] NULL,
	[IDLoja] [int] NULL,
	[SangueTipo] [int] NULL,
	[IDPessoaProfissao] [int] NULL,
	[ProfissaoNome] [varchar](150) NULL,
	[LocalTrabalho] [varchar](200) NULL,
	[TrabalhoEndereco] [varchar](200) NULL,
	[TrabalhoBairro] [varchar](200) NULL,
	[TrabalhoIDCidade] [int] NULL,
	[Endereco] [varchar](200) NULL,
	[EnderecoBairro] [varchar](100) NULL,
	[EnderecoIDCidade] [int] NULL,
	[Email] [varchar](100) NULL,
	[DataInclusao] [datetime] NULL,
	[EnderecoCEP] [varchar](12) NULL,
	[TrabalhoCEP] [varchar](12) NULL,
 CONSTRAINT [PK_CensoDadosGerais] PRIMARY KEY CLUSTERED 
(
	[IDCensoDadosGreais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[PessoaPlacetRetornarUltimoPlacet]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================================================
-- Author:		<Mario Rossatti>
-- Create date: <13/09/2009>
-- Description:	<Retorna o Numero do Ultimo Placet>
-- ================================================================================
CREATE PROCEDURE [dbo].[PessoaPlacetRetornarUltimoPlacet]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT placet+1 AS Placet FROM Adm
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaConvenioAlterar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <24/02/2009>
-- Description:	<Atualizacao de dados na Tabela de PessoaConvenio>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaConvenioAlterar]
	-- Add the parameters for the stored procedure here
	@IDPessoaConvenio INT,
	@IDPessoa INT,
	@IDConvenio INT,
	@Ativo VARCHAR(1)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[PessoaConvenio]
	   SET [IDPessoa]   = @IDPessoa
		  ,[IDConvenio] = @IDConvenio
		  ,[Ativo]      = @Ativo
	WHERE IDPessoaConvenio=@IDPessoaConvenio
 
 END
GO
/****** Object:  StoredProcedure [dbo].[PessoaConvenioSelecionar]    Script Date: 09/07/2010 14:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <24/02/2009>
-- Description:	<Selecionar os Convenios associados a Pessoas>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaConvenioSelecionar]
	@Ativo VARCHAR(1) = NULL,
	@IDPessoaConvenio INT = NULL,
	@IDPessoa INT = NULL,
	@IDConvenio INT = NULL
	
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT pc.[IDPessoaConvenio]
		  ,pc.[IDPessoa]
		  ,pc.[IDConvenio]
		  ,pc.[Ativo]
		  ,cv.[Nome] AS ConvenioNome
		  ,pe.[Nome] AS PessoaNome
	FROM [dbo].[PessoaConvenio] AS pc
	LEFT OUTER JOIN Pessoa   AS pe ON (pe.IDPessoa=pc.IDPessoa)
	LEFT OUTER JOIN Convenio AS cv ON (cv.IDConvenio=pc.IDConvenio)
	WHERE ( (@Ativo IS NULL)            OR (pc.Ativo           =@Ativo) )
	  AND ( (@IDPessoaConvenio IS NULL) OR (pc.IDPessoaConvenio=@IDPessoaConvenio) )	  
	  AND ( (@IDPessoa IS NULL)         OR (pc.[IDPessoa]      =@IDPessoa) )
	  AND ( (@IDConvenio IS NULL)       OR (pc.[IDConvenio]    =@IDConvenio) )
	ORDER BY pc.IDPessoaConvenio
END
GO
/****** Object:  UserDefinedFunction [dbo].[TiraAcentos]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TiraAcentos](@texto VARCHAR(8000))
RETURNS VARCHAR(8000)
AS
BEGIN
	DECLARE @novoTexto VARCHAR(8000)
	SET @novoTexto = LOWER(@texto)
	SET @novoTexto = Replace(@novoTexto, '''', '')
	SET @novoTexto = Replace(@novoTexto, 'º', 'o.')
	SET @novoTexto = Replace(@novoTexto, '°', 'o.')
	SET @novoTexto = Replace(@novoTexto, 'ª', 'a.')
	SET @novoTexto = Replace(@novoTexto, 'á', 'A')
	SET @novoTexto = Replace(@novoTexto, 'à', 'A')
	SET @novoTexto = Replace(@novoTexto, 'ã', 'A')
	SET @novoTexto = Replace(@novoTexto, 'â', 'A')
	SET @novoTexto = Replace(@novoTexto, 'ä', 'A')
	SET @novoTexto = Replace(@novoTexto, 'é', 'E')
	SET @novoTexto = Replace(@novoTexto, 'è', 'E')
	SET @novoTexto = Replace(@novoTexto, 'ê', 'E')
	SET @novoTexto = Replace(@novoTexto, 'ë', 'E')
	SET @novoTexto = Replace(@novoTexto, 'í', 'I')
	SET @novoTexto = Replace(@novoTexto, 'ì', 'I')
	SET @novoTexto = Replace(@novoTexto, 'î', 'I')
	SET @novoTexto = Replace(@novoTexto, 'ï', 'I')
	SET @novoTexto = Replace(@novoTexto, 'ó', 'O')
	SET @novoTexto = Replace(@novoTexto, 'ò', 'O')
	SET @novoTexto = Replace(@novoTexto, 'õ', 'O')
	SET @novoTexto = Replace(@novoTexto, 'ô', 'O')
	SET @novoTexto = Replace(@novoTexto, 'ö', 'O')
	SET @novoTexto = Replace(@novoTexto, 'ú', 'U')
	SET @novoTexto = Replace(@novoTexto, 'ù', 'U')
	SET @novoTexto = Replace(@novoTexto, 'û', 'U')
	SET @novoTexto = Replace(@novoTexto, 'ü', 'U')
	SET @novoTexto = Replace(@novoTexto, 'ç', 'C')
	SET @novoTexto = UPPER(@novoTexto)
	RETURN @novoTexto
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaConvenioIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <24/02/2009>
-- Description:	<Insercao de dados na Tabela PessoaConvenio>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaConvenioIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@IDPessoa INT     ,
	@IDConvenio INT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[PessoaConvenio]
           (
            [IDPessoa]
           ,[IDConvenio]
           ,[Ativo]
           )
    VALUES
           (
            @IDPessoa
           ,@IDConvenio
           ,@Ativo
           )
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  Table [dbo].[PatrimonioItensTipo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PatrimonioItensTipo](
	[IDPatrimonioItensTipo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_PatrimonioItensTipo] PRIMARY KEY CLUSTERED 
(
	[IDPatrimonioItensTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FinanceiroDEPARA]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceiroDEPARA](
	[IDFinanceiroDepara] [int] IDENTITY(1,1) NOT NULL,
	[IDFinanceiro] [int] NOT NULL,
	[COD_LANC] [int] NOT NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_FinanceiroDEPARA] PRIMARY KEY CLUSTERED 
(
	[IDFinanceiroDepara] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaProfissao]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaProfissao](
	[IDPessoaProfissao] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[NomeFemenino] [varchar](100) NULL,
 CONSTRAINT [PK_PessoaProfissao] PRIMARY KEY CLUSTERED 
(
	[IDPessoaProfissao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistroFilosofica]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroFilosofica](
	[IDRegistro] [int] IDENTITY(1,1) NOT NULL,
	[Registro] [int] NULL,
	[DataRegistro] [datetime] NULL,
	[DataInicial] [datetime] NULL,
	[DataFinal] [datetime] NULL,
	[IDPessoa] [int] NULL,
	[IDLoja] [int] NULL,
	[GrauFilosofico] [int] NULL,
	[Pago] [varchar](1) NULL,
	[Valor] [numeric](18, 2) NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_RegistroFilosofico] PRIMARY KEY CLUSTERED 
(
	[IDRegistro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agenda](
	[IDAgenda] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[Titulo] [varchar](100) NULL,
	[Texto] [varchar](2000) NULL,
	[Ativo] [varchar](1) NULL,
	[DataInicio] [datetime] NULL,
	[DataFim] [datetime] NULL,
	[Divulgacao] [int] NULL,
 CONSTRAINT [PK_Agenda] PRIMARY KEY CLUSTERED 
(
	[IDAgenda] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define o tipo de divulgação da Agenda:0 - Privado,1 - Publica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Agenda', @level2type=N'COLUMN',@level2name=N'Divulgacao'
GO
/****** Object:  Table [dbo].[LojaFilosofica]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LojaFilosofica](
	[IDLoja] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NULL,
	[Nome] [varchar](100) NULL,
	[Endereco] [varchar](100) NULL,
	[EnderecoComplemento] [varchar](100) NULL,
	[EnderecoBairro] [varchar](100) NULL,
	[IDCidade] [int] NULL,
	[Cep] [varchar](8) NULL,
	[Email] [varchar](100) NULL,
	[Site] [varchar](100) NULL,
	[DataDeFundacao] [datetime] NULL,
	[DiaDeReuniao] [int] NULL,
	[IDPessoaVeneravel] [int] NULL,
	[IDPessoaSecretario] [int] NULL,
	[IDPessoaTesoureiro] [int] NULL,
	[Data] [datetime] NULL,
	[CNPJ] [varchar](18) NULL,
	[IDPotencia] [int] NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_LojaFilosofica] PRIMARY KEY CLUSTERED 
(
	[IDLoja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpresaSemaforo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaSemaforo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boletim]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boletim](
	[IDBoletim] [int] IDENTITY(1,1) NOT NULL,
	[Mes] [int] NULL,
	[Ano] [int] NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_Boletim] PRIMARY KEY CLUSTERED 
(
	[IDBoletim] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpresaTelefone]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpresaTelefone](
	[IDEmpresaTelefone] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NULL,
	[Telefone] [varchar](30) NULL,
	[Ativo] [varchar](1) NULL,
	[TipoTelefone] [int] NULL,
	[Emergencia] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaFoto]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaFoto](
	[IDPessoaFoto] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NOT NULL,
	[Ativo] [varchar](1) NOT NULL,
	[Foto] [image] NULL,
	[FotoData] [datetime] NULL,
	[IDPessoaFamilia] [int] NULL,
	[IDEmpresa] [int] NULL,
 CONSTRAINT [PK_PessoaFoto] PRIMARY KEY CLUSTERED 
(
	[IDPessoaFoto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[RetornarNomeDoMes]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <25/01/2010>
-- Description:	<Retornar o Nome do Mês>
-- Utilizadores: 
--              AdmSelecionar
--------------------------------------------------------------------------------------
-- Author:		<>
-- Create date: <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE FUNCTION [dbo].[RetornarNomeDoMes](@Mes INT)
RETURNS VARCHAR(9)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @RETORNO VARCHAR(9)

	IF @Mes=0
		BEGIN
			SET @RETORNO = ''
		END
	ELSE
		BEGIN
			
			SET @RETORNO = 
				CAST(CASE @Mes
					WHEN NULL THEN '         '
					WHEN 0    THEN '         '
					WHEN 1    THEN 'JANEIRO  '
					WHEN 2    THEN 'FEVEREIRO'
					WHEN 3    THEN 'MARÇO    '
					WHEN 4    THEN 'ABRIL    '
					WHEN 5    THEN 'MAIO     '
					WHEN 6    THEN 'JUNHO    '
					WHEN 7    THEN 'JULHO    '
					WHEN 8    THEN 'AGOSTO   '
					WHEN 9    THEN 'SETEMBRO '
					WHEN 10   THEN 'OUTUBRO  '
					WHEN 11   THEN 'NOVEMBRO '
					WHEN 12   THEN 'DEZEMBRO '
							  ELSE '         '
				END AS VARCHAR(9))
		END	

	IF @RETORNO IS NULL
		BEGIN
			SET @RETORNO = ''
		END

	-- Return the result of the function
	RETURN @RETORNO

END
GO
/****** Object:  Table [dbo].[CidadeContinente]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CidadeContinente](
	[IDCidadeContinente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_Cidade] PRIMARY KEY CLUSTERED 
(
	[IDCidadeContinente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [CidadeContinenteNome] ON [dbo].[CidadeContinente] 
(
	[Nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LojaObreiro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LojaObreiro](
	[IDLojaObreiro] [int] IDENTITY(1,1) NOT NULL,
	[IDLoja] [int] NOT NULL,
	[Mes] [int] NULL,
	[Ano] [int] NULL,
	[Total] [int] NULL,
	[Ativo] [varchar](1) NULL,
	[Data] [datetime] NULL,
	[IDEmpresa] [int] NULL,
 CONSTRAINT [PK_LojaObreiro] PRIMARY KEY CLUSTERED 
(
	[IDLojaObreiro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Censo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Censo](
	[IDCenso] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[Ano] [int] NULL,
	[DataInicio] [datetime] NULL,
	[DataFim] [datetime] NULL,
 CONSTRAINT [PK_Censo] PRIMARY KEY CLUSTERED 
(
	[IDCenso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CidadePais]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CidadePais](
	[IDCidadePais] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Nacionalidade] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[IDCidadeContinente] [int] NOT NULL,
 CONSTRAINT [PK_CidadePais] PRIMARY KEY CLUSTERED 
(
	[IDCidadePais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CidadeEstado]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CidadeEstado](
	[IDCidadeEstado] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[Naturalidade] [varchar](100) NULL,
	[Sigla] [varchar](20) NULL,
	[IDCidadePais] [int] NOT NULL,
 CONSTRAINT [PK_CidadeEstado] PRIMARY KEY CLUSTERED 
(
	[IDCidadeEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cidade]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cidade](
	[IDCidade] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[Cep] [varchar](12) NULL,
	[IDCidadeEstado] [int] NULL,
 CONSTRAINT [PK_Cidade_1] PRIMARY KEY CLUSTERED 
(
	[IDCidade] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pessoa](
	[IDPessoa] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[CPFCNPJ] [varchar](20) NULL,
	[Sexo] [varchar](1) NULL,
	[RGIE] [varchar](20) NULL,
	[Natureza] [varchar](1) NULL,
	[EnderecoIDCidade] [int] NULL,
	[Endereco] [varchar](100) NULL,
	[EnderecoBairro] [varchar](100) NULL,
	[EnderecoCEP] [varchar](12) NULL,
	[IDPessoaTipo] [int] NULL,
	[IDPessoaGrauTipo] [int] NULL,
	[Email] [varchar](100) NULL,
	[NascimentoData] [datetime] NULL,
	[IDLoja] [int] NULL,
	[Ativo] [varchar](1) NULL,
	[Codigo] [int] NULL,
	[DataCadastro] [datetime] NULL,
	[IDEmpresa] [int] NULL,
 CONSTRAINT [PK_Pessoa] PRIMARY KEY CLUSTERED 
(
	[IDPessoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaDados]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaDados](
	[IDPessoaDados] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NOT NULL,
	[IDPessoaProfissao] [int] NULL,
	[IDPessoaEstadoCivil] [int] NULL,
	[CasamentoData] [datetime] NULL,
	[ObitoData] [datetime] NULL,
	[ObitoAtestado] [varchar](50) NULL,
	[NascimentoIDCidade] [int] NULL,
	[LocalTrabalho] [varchar](100) NULL,
	[TrabalhoEndereco] [varchar](200) NULL,
	[TrabalhoBairro] [varchar](200) NULL,
	[TrabalhoIDCidade] [int] NULL,
	[TrabalhoCEP] [varchar](12) NULL,
	[IniciacaoPlacet] [varchar](20) NULL,
	[IniciacaoData] [datetime] NULL,
	[IniciacaoIDLoja] [int] NULL,
	[ElevacaoPlacet] [varchar](20) NULL,
	[ElevacaoData] [datetime] NULL,
	[ElevacaoIDLoja] [int] NULL,
	[ExaltacaoPlacet] [varchar](20) NULL,
	[ExaltacaoData] [datetime] NULL,
	[ExaltacaoIDLoja] [int] NULL,
	[FiliacaoPlacet] [varchar](20) NULL,
	[FiliacaoData] [datetime] NULL,
	[FiliacaoIDloja] [int] NULL,
	[RegularizacaoPlacet] [varchar](20) NULL,
	[RegularizacaoData] [datetime] NULL,
	[RegularizacaoIDLoja] [int] NULL,
	[RejeicaoPlacet] [varchar](20) NULL,
	[RejeicaoData] [datetime] NULL,
	[RejeicaoIDLoja] [int] NULL,
	[EliminacaoPlacet] [varchar](20) NULL,
	[EliminacaoData] [datetime] NULL,
	[EliminacaoIDloja] [int] NULL,
	[InstalacaoPlacet] [varchar](20) NULL,
	[InstalacaoData] [datetime] NULL,
	[InstalacaoIDloja] [int] NULL,
	[DesligamentoPlacet] [varchar](20) NULL,
	[DesligamentoData] [datetime] NULL,
	[DesligamentoIDLoja] [int] NULL,
	[DataDeInsercao] [datetime] NULL,
	[GrausFilosoficos] [varchar](20) NULL,
	[Desistencia] [varchar](1) NULL,
	[SangueTipo] [int] NULL,
	[Peculio] [int] NULL,
	[InstalacaoDataInicial] [datetime] NULL,
	[InstalacaoDataFinal] [datetime] NULL,
	[IDLojaFilosofica] [int] NULL,
	[LicencaPlacet] [int] NULL,
	[LicencaDataInicial] [datetime] NULL,
	[LicencaDataFinal] [datetime] NULL,
	[LicencaIDLoja] [int] NULL,
	[TransferenciaPlacet] [int] NULL,
	[TransferenciaData] [datetime] NULL,
	[TransferenciaIDLojaOrigem] [int] NULL,
	[TransferenciaIDLojaDestino] [int] NULL,
	[IniciacaoIDBoletim] [int] NULL,
	[ElevacaoIDBoletim] [int] NULL,
	[ExaltacaoIDBoletim] [int] NULL,
	[FiliacaoIDBoletim] [int] NULL,
	[InstalacaoIDBoletim] [int] NULL,
	[RegularizacaoIDBoletim] [int] NULL,
	[RejeicaoIDBoletim] [int] NULL,
	[EliminacaoIDBoletim] [int] NULL,
	[DesligamentoIDBoletim] [int] NULL,
	[LicencaIDBoletim] [int] NULL,
	[TransferenciaIDBoletim] [int] NULL,
 CONSTRAINT [PK_PessoaDados] PRIMARY KEY CLUSTERED 
(
	[IDPessoaDados] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Adm]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adm](
	[IDAdm] [int] IDENTITY(1,1) NOT NULL,
	[IDCidadeContinente] [int] NULL,
	[IDCidadePais] [int] NULL,
	[IDCidadeEstado] [int] NULL,
	[IDCidade] [int] NULL,
	[Mercado] [varchar](1) NULL,
	[IDLoja] [int] NULL,
	[IDCargoTipoVeneravel] [int] NULL,
	[IDCargoTipoOrador] [int] NULL,
	[IDCargoTipoSecretario] [int] NULL,
	[IDPessoaTipoObreiro] [int] NULL,
	[IDPessoaTipoFornecedor] [int] NULL,
	[Placet] [int] NULL,
	[IDCenso] [int] NULL,
	[IDPessoaGrauTipoCandidato] [int] NULL,
	[IDPessoaGrauTipoAP] [int] NULL,
	[IDPessoaGrauTipoCM] [int] NULL,
	[IDPessoaGrauTipoObreiro] [int] NULL,
	[IDCargoNivelVeneravel] [int] NULL,
 CONSTRAINT [PK_Adm] PRIMARY KEY CLUSTERED 
(
	[IDAdm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaFamilia]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaFamilia](
	[IDPessoaFamilia] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NOT NULL,
	[Nome] [varchar](100) NULL,
	[IDPessoaGrauParentesco] [int] NULL,
	[DataNascimento] [datetime] NULL,
	[Sexo] [varchar](1) NULL,
	[IDPessoaProfissao] [int] NULL,
	[Ativo] [varchar](1) NULL,
	[Endereco] [varchar](100) NULL,
	[EnderecoBairro] [varchar](100) NULL,
	[EnderecoIDCidade] [int] NULL,
	[Peculio] [varchar](1) NULL,
	[IDCenso] [int] NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_PessoaFamilia] PRIMARY KEY CLUSTERED 
(
	[IDPessoaFamilia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Potencia]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Potencia](
	[IDPotencia] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[IDCidadeContinente] [int] NULL,
	[IDCidadePais] [int] NULL,
	[IDCidadeEstado] [int] NULL,
	[IDCidade] [int] NULL,
	[Endereco] [varchar](100) NULL,
	[Cep] [varchar](12) NULL,
	[Bairro] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Site] [varchar](100) NULL,
	[CaixaPostal] [varchar](20) NULL,
	[NomeVeneravel] [varchar](100) NULL,
	[NomeGraoMestre] [varchar](100) NULL,
	[NomeSecretarioRelacoesExteriores] [varchar](100) NULL,
	[IDPessoaRepresentanteLA] [int] NULL,
	[IDPessoaRepresentanteAQUI] [int] NULL,
	[DataFundacao] [datetime] NULL,
	[NumeroLojas] [int] NULL,
	[NumeroObreiros] [int] NULL,
	[NumeroMedioObreiros] [int] NULL,
	[IDPessoaGraoMestre] [int] NULL,
	[IDPessoaSecretario] [int] NULL,
 CONSTRAINT [PK_Potencia] PRIMARY KEY CLUSTERED 
(
	[IDPotencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loja]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loja](
	[IDLoja] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Endereco] [varchar](100) NULL,
	[EnderecoComplemento] [varchar](100) NULL,
	[EnderecoBairro] [varchar](100) NULL,
	[IDCidade] [int] NULL,
	[Cep] [varchar](8) NULL,
	[Email] [varchar](100) NULL,
	[Site] [varchar](100) NULL,
	[DataDeFundacao] [datetime] NULL,
	[DiaDeReuniao] [int] NULL,
	[IDPessoaVeneravel] [int] NULL,
	[IDPessoaSecretario] [int] NULL,
	[IDPessoaTesoureiro] [int] NULL,
	[Data] [datetime] NULL,
	[CNPJ] [varchar](18) NULL,
	[IDPotencia] [int] NULL,
	[Ativo] [varchar](1) NULL,
	[IDLojaRegiao] [int] NULL,
	[CodigoAntigo] [int] NULL,
	[NomeAntigo] [varchar](100) NULL,
	[Codigo] [int] NULL,
	[Filosofica] [varchar](1) NULL,
	[IDEmpresa] [int] NULL,
 CONSTRAINT [PK_Loja] PRIMARY KEY CLUSTERED 
(
	[IDLoja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaCargo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaCargo](
	[IDPessoaCargo] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NOT NULL,
	[IDCargoTipo] [int] NOT NULL,
	[IDCargoNivel] [int] NOT NULL,
	[IDLoja] [int] NOT NULL,
	[Ano] [varchar](4) NULL,
	[Atual] [varchar](1) NULL,
	[DataInicio] [datetime] NULL,
	[DataFim] [datetime] NULL,
	[IDCenso] [int] NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_PessoaCargo] PRIMARY KEY CLUSTERED 
(
	[IDPessoaCargo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SolicitacaoSiteItem]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SolicitacaoSiteItem](
	[IDSolicitacaoSiteItem] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Ativo] [varchar](1) NOT NULL,
	[IDFinanceiroTipo] [int] NOT NULL,
	[IDEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_SolicitacaoSiteItem] PRIMARY KEY CLUSTERED 
(
	[IDSolicitacaoSiteItem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaConvenio]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaConvenio](
	[IDPessoaConvenio] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NOT NULL,
	[IDConvenio] [int] NOT NULL,
	[Ativo] [varchar](1) NOT NULL,
 CONSTRAINT [PK_PessoaConvenio] PRIMARY KEY CLUSTERED 
(
	[IDPessoaConvenio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PatrimonioLotacao]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PatrimonioLotacao](
	[IDPatrimonioLotacao] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[IDLoja] [int] NULL,
 CONSTRAINT [PK_PatrimonioLotacao] PRIMARY KEY CLUSTERED 
(
	[IDPatrimonioLotacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PatrimonioItens]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PatrimonioItens](
	[IDPatrimonioItens] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[Tombo] [int] NOT NULL,
	[TomboData] [datetime] NULL,
	[TomboNota] [varchar](50) NULL,
	[IDLotacao] [int] NULL,
	[IDPatrimonioItensTipo] [int] NULL,
	[IDPessoaFabricante] [int] NULL,
	[IDPessoaFornecedor] [int] NULL,
	[ItemInservivelData] [datetime] NULL,
	[Ativo] [varchar](1) NULL,
	[Situacao] [varchar](1) NULL,
	[IDLoja] [int] NULL,
	[ValorDeCompra] [decimal](18, 2) NULL,
 CONSTRAINT [PK_PatrimonioItens] PRIMARY KEY CLUSTERED 
(
	[IDPatrimonioItens] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefone]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Telefone](
	[IDTelefone] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NULL,
	[Telefone] [varchar](30) NULL,
	[Ativo] [varchar](1) NULL,
	[TipoTelefone] [int] NULL,
	[IDPotencia] [int] NULL,
	[IDLoja] [int] NULL,
	[Emergencia] [varchar](1) NULL,
	[IDCenso] [int] NULL,
	[IDEmpresa] [int] NULL,
	[IDPessoaFamilia] [int] NULL,
 CONSTRAINT [PK_Telefone] PRIMARY KEY CLUSTERED 
(
	[IDTelefone] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PotenciaBandeira]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PotenciaBandeira](
	[IDPotenciaBandeira] [int] IDENTITY(1,1) NOT NULL,
	[IDPotencia] [int] NULL,
	[Bandeira] [image] NULL,
	[Bandeira2] [image] NULL,
 CONSTRAINT [PK_PotenciaBandeira] PRIMARY KEY CLUSTERED 
(
	[IDPotenciaBandeira] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registro](
	[IDRegistro] [int] IDENTITY(1,1) NOT NULL,
	[Registro] [int] NOT NULL,
	[DataRegistro] [datetime] NOT NULL,
	[Tipo] [int] NOT NULL,
	[IDPessoa] [int] NULL,
	[IDLoja] [int] NULL,
	[Ritual] [int] NOT NULL,
	[Lei] [int] NOT NULL,
	[Diploma] [int] NOT NULL,
	[Placet] [int] NOT NULL,
	[Regularidade] [int] NOT NULL,
	[Desligamento] [int] NOT NULL,
	[IDLojaDestino] [int] NULL,
	[Data] [datetime] NULL,
	[Observacao] [text] NULL,
	[IDBoletim] [int] NULL,
	[Ativo] [varchar](1) NULL,
	[DataInicial] [datetime] NULL,
	[DataFinal] [datetime] NULL,
	[Operacao] [int] NULL,
 CONSTRAINT [PK_Registro] PRIMARY KEY CLUSTERED 
(
	[IDRegistro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'teste' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Registro', @level2type=N'COLUMN',@level2name=N'Tipo'
GO
/****** Object:  Table [dbo].[RegistroFiliacao]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroFiliacao](
	[IDRegistroFiliacao] [int] IDENTITY(1,1) NOT NULL,
	[IDRegistro] [int] NULL,
	[Placet] [int] NULL,
	[Registro] [varchar](100) NULL,
	[DataRegistro] [datetime] NULL,
	[DataLancamento] [datetime] NULL,
	[IDPotencia] [int] NULL,
	[Potencia] [varchar](100) NULL,
	[Loja] [varchar](100) NULL,
	[Ativo] [varchar](1) NULL,
	[IDPessoa] [int] NULL,
 CONSTRAINT [PK_RegistroFiliacao] PRIMARY KEY CLUSTERED 
(
	[IDRegistroFiliacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaPlacet]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaPlacet](
	[IDPessoaPlacet] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NOT NULL,
	[IDLoja] [int] NULL,
	[Data] [datetime] NULL,
	[Placet] [int] NOT NULL,
	[PlacetTipo] [int] NOT NULL,
	[Ativo] [varchar](1) NULL,
 CONSTRAINT [PK_PessoaPlacet] PRIMARY KEY CLUSTERED 
(
	[IDPessoaPlacet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaEndereco]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PessoaEndereco](
	[IDPessoaEndereco] [int] IDENTITY(1,1) NOT NULL,
	[IDPessoa] [int] NULL,
	[Ativo] [varchar](1) NULL,
	[Endereco] [varchar](200) NULL,
	[EnderecoBairro] [varchar](100) NULL,
	[EnderecoIDCidade] [int] NULL,
	[DataInclusao] [datetime] NULL,
	[DataDesativacao] [datetime] NULL,
 CONSTRAINT [PK_PessoaEndereco] PRIMARY KEY CLUSTERED 
(
	[IDPessoaEndereco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LojaMemorando]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LojaMemorando](
	[IDLojaMemorando] [int] IDENTITY(1,1) NOT NULL,
	[IDLoja] [int] NULL,
	[Memorando] [varchar](2000) NULL,
 CONSTRAINT [PK_LojaMemorando] PRIMARY KEY CLUSTERED 
(
	[IDLojaMemorando] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SolicitacaoSite]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SolicitacaoSite](
	[IDSolicitacaoSite] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[IDLoja] [int] NOT NULL,
	[DataInclusao] [datetime] NULL,
	[IDObreiro] [int] NOT NULL,
	[Descricao] [varchar](200) NULL,
	[Ativo] [varchar](1) NOT NULL,
	[IDSolicitacaoSiteItem] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[StatusData] [datetime] NULL,
	[DataSessao] [datetime] NULL,
 CONSTRAINT [PK_SolicitacaoSite] PRIMARY KEY CLUSTERED 
(
	[IDSolicitacaoSite] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[Nome] [varchar](100) NULL,
	[NomeFantasia] [varchar](100) NULL,
	[CPFCNPJ] [varchar](20) NULL,
	[RGIE] [varchar](20) NULL,
	[Natureza] [varchar](1) NULL,
	[EnderecoIDCidade] [int] NULL,
	[Endereco] [varchar](100) NULL,
	[EnderecoBairro] [varchar](100) NULL,
	[EnderecoCEP] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[NascimentoData] [datetime] NULL,
	[Ativo] [varchar](1) NULL,
	[DataCadastro] [datetime] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[CensoPessoalIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <02/04/2009>
-- Description:	<Insercao de dados na Tabela CensoPessoal>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CensoPessoalIncluir]
	-- Add the parameters for the stored procedure here
			@IDCenso  INT = NULL
		   ,@IDPessoa  INT = NULL
           ,@Endereco VARCHAR(100) = NULL
           ,@EnderecoBairro VARCHAR(100) = NULL
           ,@EnderecoIDCidade  INT = NULL
           ,@CidadeNome VARCHAR(100) = NULL
           ,@IDPessoaProfissao  INT = NULL
           ,@ProfissaoNome VARCHAR(100) = NULL
           ,@TrabalhoEndereco VARCHAR(100) = NULL
           ,@TrabalhoBairro VARCHAR(100) = NULL
           ,@TrabalhoIDCidade INT = NULL
           ,@TrabalhoCidadeNome VARCHAR(100) = NULL
           ,@Ativo VARCHAR(1)  = NULL
           ,@DataInclusao DATETIME = NULL
           ,@DataDesativacao DATETIME = NULL	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[CensoPessoal]
           (
            [IDCenso]
           ,[IDPessoa]
           ,[Endereco]
           ,[EnderecoBairro]
           ,[EnderecoIDCidade]
           ,[CidadeNome]
           ,[IDPessoaProfissao]
           ,[ProfissaoNome]
           ,[TrabalhoEndereco]
           ,[TrabalhoBairro]
           ,[TrabalhoIDCidade]
           ,[TrabalhoCidadeNome]
           ,[Ativo]
           ,[DataInclusao]
           ,[DataDesativacao]
           )
    VALUES
           (
			@IDCenso  
		   ,@IDPessoa 
           ,@Endereco 
           ,@EnderecoBairro 
           ,@EnderecoIDCidade 
           ,@CidadeNome 
           ,@IDPessoaProfissao  
           ,@ProfissaoNome 
           ,@TrabalhoEndereco 
           ,@TrabalhoBairro 
           ,@TrabalhoIDCidade 
           ,@TrabalhoCidadeNome 
           ,@Ativo 
           ,@DataInclusao 
           ,@DataDesativacao 
           )
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[CensoPessoaAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <02/04/2009>
-- Description:	<Atualizacao de dados na Tabela CensoPessoal>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CensoPessoaAlterar]
	-- Add the parameters for the stored procedure here
	   @IDCensoPessoal INT
	  ,@IDCenso INT = NULL
      ,@IDPessoa INT = NULL
      ,@Endereco varchar(100)= NULL
      ,@EnderecoBairro varchar(100)= NULL
      ,@EnderecoIDCidade INT = NULL
      ,@CidadeNome varchar(100)= NULL
      ,@IDPessoaProfissao INT = NULL
      ,@ProfissaoNome varchar(100)= NULL
      ,@TrabalhoEndereco varchar(100)= NULL
      ,@TrabalhoBairro varchar(100)= NULL
      ,@TrabalhoIDCidade INT = NULL
      ,@TrabalhoCidadeNome varchar(100)= NULL
      ,@Ativo varchar(1) = NULL
      ,@DataInclusao DATETIME = NULL
      ,@DataDesativacao  DATETIME = NULL
	
	    
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[CensoPessoal]
	SET 
	   [IDCenso] = @IDCenso
      ,[IDPessoa] = @IDPessoa
      ,[Endereco] = @Endereco
      ,[EnderecoBairro] = @EnderecoBairro
      ,[EnderecoIDCidade] = @EnderecoIDCidade
      ,[CidadeNome] = @CidadeNome
      ,[IDPessoaProfissao] = @IDPessoaProfissao
      ,[ProfissaoNome] = @ProfissaoNome
      ,[TrabalhoEndereco] = @TrabalhoEndereco
      ,[TrabalhoBairro] = @TrabalhoBairro
      ,[TrabalhoIDCidade] = @TrabalhoIDCidade
      ,[TrabalhoCidadeNome] = @TrabalhoCidadeNome
      ,[Ativo] = @Ativo
      ,[DataInclusao] = @DataInclusao
      ,[DataDesativacao] = @DataDesativacao

	WHERE IDCensoPessoal=@IDCensoPessoal
	 
 END
GO
/****** Object:  StoredProcedure [dbo].[CensoPessoalSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <02/04/2009>
-- Description:	<Selecionar os Dados Pessoais de Censo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CensoPessoalSelecionar]
 @Ativo VARCHAR(1)
,@IDPessoa INT = NULL
,@IDCensoPessoal INT = NULL
,@IDCenso INT = NULL
,@DataInclusao datetime = NULL
,@DataDesativacao DATETIME = NULL

-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT [IDCensoPessoal]
      ,[IDCenso]
      ,[IDPessoa]
      ,[Endereco]
      ,[EnderecoBairro]
      ,[EnderecoIDCidade]
      ,[CidadeNome]
      ,[IDPessoaProfissao]
      ,[ProfissaoNome]
      ,[TrabalhoEndereco]
      ,[TrabalhoBairro]
      ,[TrabalhoIDCidade]
      ,[TrabalhoCidadeNome]
      ,[Ativo]
      ,[DataInclusao]
      ,[DataDesativacao]
	FROM [dbo].[CensoPessoal]
	WHERE ((@Ativo IS NULL)           OR (Ativo = @Ativo))
	  AND ((@IDCenso IS NULL)         OR (IDCenso=@IDCenso))
	  AND ((@IDCensoPessoal IS NULL)  OR (IDCensoPessoal=@IDCensoPessoal))
	  AND ((@DataInclusao IS NULL)    OR (Datainclusao=@DataInclusao))
	  AND ((@DataDesativacao IS NULL) OR (DataDesativacao=@Datadesativacao))
	ORDER BY IDPessoa,[IDCensoPessoal],DataInclusao
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaGrauTipoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Atualizacao de dados na Tabela Pessoa Grau Tipo>
--
-- Author:		<Rossatti,Junior>
-- Create date: <12/10/2009>
-- Description:	<Inclusão do Atributo TipoDeGrauDeObreiroAtivo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaGrauTipoAlterar]
	-- Add the parameters for the stored procedure here
	@IDPessoaGrauTipo INT,
	@Ativo varchar(1),
	@Nome varchar(100),
	@TipoDeGrauDeObreiroAtivo VARCHAR(1)=null
AS
BEGIN

	IF @TipoDeGrauDeObreiroAtivo IS NULL 
		BEGIN
			SET @TipoDeGrauDeObreiroAtivo='0'			
		END 
  --END-IF
	
	UPDATE [dbo].[PessoaGrauTipo]
	   SET [Nome]  = @Nome
		  ,[Ativo] = @Ativo
		  ,TipoDeGrauDeObreiroAtivo = @TipoDeGrauDeObreiroAtivo
	WHERE [IDPessoaGrauTipo]=@IDPessoaGrauTipo
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaGrauTipoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <02/08/2008>
-- Description:	<Selecionar os Tipos de Graus de Obreiros>
--
-- Author:		<Mario Rossatti>
-- Create date: <25/11/2009>
-- Description:	<Inclusao do Atributo ID>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao do Atributo Codigo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaGrauTipoSelecionar]
 @Ativo           VARCHAR(1) = NULL
,@Nome            VARCHAR(100) = NULL
,@IDPessoaGrauTipo INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 [IDPessoaGrauTipo]
		,[IDPessoaGrauTipo] AS ID 
		,[IDPessoaGrauTipo] AS Codigo
		,[Nome]
		,[Ativo]
		,[TipoDeGrauDeObreiroAtivo]		
	FROM [dbo].[PessoaGrauTipo]
  	WHERE ((@Ativo IS NULL)				OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)				OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDPessoaGrauTipo IS NULL)	OR ([IDPessoaGrauTipo] =@IDPessoaGrauTipo))
	ORDER BY Nome
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaGrauTipoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Insercao de dados na Tabela Tipo de Grau de Obreiros>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaGrauTipoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) =NULL,
	@Nome varchar(100)=NULL,
	@TipoDeGrauDeObreiroAtivo VARCHAR(1)=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @TipoDeGrauDeObreiroAtivo IS NULL 
		BEGIN
			SET @TipoDeGrauDeObreiroAtivo='0'			
		END 
  --END-IF

	INSERT INTO [dbo].[PessoaGrauTipo]
           ([Nome]
           ,[Ativo]
           ,[TipoDeGrauDeObreiroAtivo])
    VALUES
           (@Nome
           ,@Ativo
           ,@TipoDeGrauDeObreiroAtivo
           )
	
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	--- RETURN @ID
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <11/09/2008>
-- Description:	<Selecionar Obreiros>
-- 
-- Autor: Mario Rossatti
-- Data : 28/04/2009
-- Descr: Inclusão do paramtro de filtro IDPessoaGrauTipo
--
-- Autor: Mario Rossatti
-- Data : 18/07/2009
-- Descr: Inclusão do parametro de filtro IDPessoaTipo
--
-- Autor: Mario Rossatti
-- Data : 27/08/2009
-- Descr: Inclusão do campo CodigoAntigo da Tabela Loja.
--
-- Autor: Mario Rossatti
-- Data : 03/09/2009
-- Descr: Alteração do campo CidadeNome concatenando a sigla do estdo.
--
-- Autor: <Rossatti,Junior>
-- Data : <02/10/2009>
-- Descr: <Inclusao do Atributo Codigo INT=null>
--
-- Author:		<Mario Rossatti>
-- Create date: <07/11/2009>
-- Description:	<Inclusão do CodigoLoja>
--
-- Author:		<Mario Rossatti>
-- Create date: <08/11/2009>
-- Description:	<Inclusão do Atributo DataCadastro>
--
-- Author:		<Mario Rossatti>
-- Create date: <20/11/2009>
-- Description:	<Ajuste no Atributo LojaNome, juntar o Codigo da Loja>
--
-- Author:		<Mario Rossatti>
-- Create date: <23/11/2009>
-- Description:	<Inclusão do Atributo LojaFilosoficaNome>
--
-- Author:		<Mario Rossatti>
-- Create date: <08/07/2010>
-- Description:	<Inclusão do Atributo AtivoNome>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Description:	<>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaSelecionar]
-- Add the parameters for the stored procedure here
                 @IDEmpresa         INT
				,@Ativo				VARCHAR(1)=NULL
	 			,@Nome				varchar(100)=NULL
				,@IDPessoa          INT=NULL 
			    ,@IDLoja		    int=NULL
			    ,@IDPessoaGrauTipo	int=NULL
			    ,@IDPessoaTipo		int=NULL
			    ,@Codigo			INT=NULL
				
/*				
				,@CPFCNPJ			varchar(20) =NULL
				,@Sexo				varchar(1) =NULL
			    ,@RGIE				varchar(20) =NULL
			    ,@Natureza			varchar(1) =NULL
			    ,@EnderecoIDCidade	int =NULL
			    ,@Endereco			varchar(100) =NULL
			    ,@EnderecoBairro		varchar(100) =NULL
			    ,@EnderecoCEP		varchar(12) =NULL
			    ,@Email				varchar(100) =NULL
			    ,@NascimentoData		datetime =NULL
			    ,@IDLoja				int =NULL
*/
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	 P.IDPessoa
	        ,P.IDPessoa AS ID
			,P.Nome
			,P.CPFCNPJ
			,P.Sexo
			,P.RGIE
			,P.Natureza
			,P.EnderecoIDCidade
			,P.Endereco
			,P.EnderecoBairro
			,P.EnderecoCEP
			,P.IDPessoaTipo
			,P.IDPessoaGrauTipo
			,P.Email			
			,P.NascimentoData	
			,P.IDLoja	
			,P.Ativo	
			,P.Codigo
            ,P.DataCadastro
			,C.Nome+' - '+e.Sigla  AS CidadeNome
			,PT.Nome   AS PessoaTipoNome
			,PG.Nome AS PessoaGrauTipoNome
			,CAST(l.Codigo AS VARCHAR(5))+' - '+L.Nome  AS LojaNome
			
            ,CASE WHEN PD.IDLojaFilosofica IS NOT NULL 
				THEN CAST(LF.Codigo  AS VARCHAR(5))+' - '+LF.Nome
				ELSE '' 
             END AS LojaFilosoficaNome
            ,CASE WHEN p.Ativo='0' THEN 'Ativo   ' ELSE 'Inativo' END AS AtivoNome             
--			,L.CodigoAntigo AS LojaCodigoAntigo
			,L.Codigo AS LojaCodigoAntigo
			,L.Codigo as LojaCodigo
	FROM Pessoa AS P
		LEFT OUTER JOIN Cidade         AS C  ON (C.IDCidade = P.EnderecoIDCidade)
        LEFT OUTER JOIN CidadeEstado   AS E  ON (E.IDCidadeEstado=C.IDCidadeEstado)		
		LEFT OUTER JOIN PessoaTipo     AS PT ON (PT.IDPessoaTipo = P.IDPessoaTipo)
		LEFT OUTER JOIN PessoaGrauTipo AS PG ON (PG.IDPessoaGrauTipo = P.IDPessoaGrauTipo)
		LEFT OUTER JOIN Loja           AS L  ON (L.IDLoja = P.IDLoja)
		LEFT OUTER JOIN PessoaDados    AS PD ON (pd.IDPessoa = p.IDPessoa)
        LEFT OUTER JOIN Loja           AS LF ON (LF.IDLoja=PD.IDLojaFilosofica)
	
	WHERE (p.IDEmpresa=@IDEmpresa)
	  AND ((@Ativo IS NULL)            OR (P.Ativo = @Ativo))
	  AND ((@Nome IS NULL)             OR (P.Nome LIKE '%'+@Nome+'%'))
	  AND ((@IDPessoa IS NULL)         OR (P.IDPessoa = @IDPessoa))
	  AND ((@IDLoja IS NULL)           OR (P.IDLoja = @IDLoja))
	  AND ((@IDPessoaGrauTipo IS NULL) OR (P.IDPessoaGrauTipo = @IDPessoaGrauTipo))
	  AND ((@IDPessoaTipo IS NULL)     OR (P.IDPessoaTipo = @IDPessoaTipo))
	  AND ((@Codigo IS NULL)		   OR (p.Codigo=@Codigo))
	ORDER BY P.Nome,P.IDPessoa
	
END
GO
/****** Object:  StoredProcedure [dbo].[RelLojaObreirosQualificacao]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <01/05/2010>
-- Versão     : <2010.05.01>
-- Description:	<Selecionar os Obreiros Ativos das Lojas Para Qualificacao>
--
-- Author:		<Mario Rossatti>
-- Create date: <15/07/2010>
-- Versão     : <2010.07.15>
-- Description:	<Incluir Parametro Colecao>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Alteração do Parametro @IDLojaEmpresa para IDEmpresa>
-- Data       : <07/09/2010>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelLojaObreirosQualificacao]
-- Add the parameters for the stored procedure here
			     @IDEmpresa  INT
			    ,@PessoaGrauTipo INT
			    ,@IDLoja		 INT=NULL
			    ,@Colecao		 VARCHAR(1000)=NULL
                ,@Filosofica     VARCHAR(1) = NULL			    
			    
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT 
	 pes.Codigo   AS PessoaCodigo
	,pes.Nome     AS PessoaNome
	,pg.Nome      AS PessoaGrauTipoNome
	,lo.Nome+' N. '+CAST(lo.Codigo AS VARCHAR(6)) AS LojaNome
	,lo.IDLoja
	,CASE WHEN pd.IniciacaoData>01/01/1900   THEN Convert(VARCHAR(10),pd.IniciacaoData ,103)  ELSE '' END AS IniciacaoDataTxt	
    ,CASE WHEN pd.elevacaoData>01/01/1900    THEN Convert(VARCHAR(10),pd.elevacaoData ,103)   ELSE '' END AS ElevacaoDataTxt		  
	,CASE WHEN pes.NascimentoData>01/01/1900 THEN Convert(VARCHAR(10),pes.NascimentoData,103) ELSE '' END AS NascimentoData
    ,CASE WHEN c.Nome   IS NULL              THEN ''                       ELSE c.nome+' - '+ce.sigla END AS Naturalidade
	,CASE WHEN pf.Nome  IS NULL              THEN ''                                    ELSE pf.nome  END AS ProfissaoNome 
    ,CASE WHEN pe.Nome  IS NULL              THEN ''                                    ELSE pe.Nome  END AS PessoaEstadoCivilNome	
	
	FROM Pessoa AS pes
		LEFT OUTER JOIN PessoaDados       AS pd ON (pd.IDPessoa=pes.IDPessoa)
		LEFT OUTER JOIN PessoaGrauTipo    AS pg ON ((pg.TipoDeGrauDeObreiroAtivo='0') AND (pg.IDPessoaGrauTipo=pes.IDPessoaGrauTipo))
		LEFT OUTER JOIN loja              AS lo ON (lo.IDLoja=pes.IDLoja)
		LEFT OUTER JOIN Cidade            AS c  ON (c.IDCidade = pd.NascimentoIDCidade)
		LEFT OUTER JOIN CidadeEstado      AS ce ON (ce.IDCidadeEstado=C.IDCidadeEstado)		
    	LEFT OUTER JOIN PessoaProfissao   AS pf ON (pd.IDPessoaProfissao = pf.IDPessoaProfissao)
    	LEFT OUTER JOIN PessoaEstadoCivil AS pe ON (pe.IDPessoaEstadoCivil = pd.IDPessoaEstadoCivil)
		
	WHERE (pes.ativo=0)
	  AND (lo.IDEmpresa = @IDEmpresa)
      AND (lo.Filosofica = @Filosofica)	  
	  AND (@PessoaGrauTipo = pes.IDPessoaGrauTipo)
	  AND ((@IDLoja IS NULL)  OR (@IDLoja=pes.IDLoja))      		  
	  AND ((@Colecao IS NULL) OR (CHARINDEX('|'+CONVERT(varchar(10),pes.IDLoja)+'|',@Colecao)>0 ))

	ORDER BY lo.Codigo,pes.Nome,pes.IDPessoa
	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaObreiroDesAtivar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <12/10/2009>
-- Description:	<Analisar e Definir se um Oberiro Esta Ativo ou Não>
--------------------------------------------------------------------------------------
-- 
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaObreiroDesAtivar]
-- Add the parameters for the stored procedure here
				@IDPessoa INT
-- CORPO DA PROCEDURE
AS
BEGIN
	DECLARE @Ativo VARCHAR(1)
	SET @Ativo='1'

	IF (
		SELECT TOP 1 IDPessoaDados FROM PessoaDados pd 
		INNER JOIN [Pessoa] pes ON (pes.idpessoa=@idpessoa)
		INNER JOIN PessoaGrauTipo pg ON ((pg.IDPessoaGrauTipo=pes.IDPessoaGrauTipo) AND (pg.TipoDeGrauDeObreiroAtivo='0'))
		WHERE (pd.IDPessoa=@IDPessoa)
		AND  (pd.[IniciacaoData] IS NOT NULL)
		AND ((pd.[FiliacaoData] IS NOT NULL))
		AND ((pd.[EliminacaoIDloja] IS NULL)    OR (pd.[EliminacaoIDloja]='0'))         
		AND ((pd.[EliminacaoPlacet] IS NULL)    OR (LEN(RTRIM(LTRIM(pd.[EliminacaoPlacet])))<3))
		AND ((pd.[EliminacaoData] IS null)      OR (YEAR(pd.[EliminacaoData])<1900))
		AND ((pd.[DesligamentoData] IS NULL)    OR (YEAR(pd.[DesligamentoData])<1900))
		AND ((pd.[DesligamentoIDLoja] IS NULL)  OR (pd.[DesligamentoIDLoja]='0'))
		AND ((YEAR(pd.[DesligamentoData])<1900) OR (pd.[DesligamentoData] IS null))     
		AND ((YEAR(pd.[RejeicaoData])<1900)     OR (pd.[RejeicaoData] IS null))     
		AND ((LEN(RTRIM(LTRIM(pd.[ObitoAtestado])))=0) OR (pd.[ObitoAtestado] IS NULL ))
		AND ((YEAR(pd.[ObitoData])<1900)        OR (pd.[ObitoData] IS null))	  
		AND (pd.[Desistencia]=0)    	 
		
	 )>0 
	 BEGIN
	 	SET @Ativo='0'
	 END
	 
	 UPDATE [Pessoa] SET [Ativo]=@Ativo WHERE [IDPessoa]=@IDPessoa

END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoPessoaGrauTipo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Procedure para Selecionar as TIPOS DE GRAU para a funcionalidade de Selecao>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoPessoaGrauTipo]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPessoaGrauTipo INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 [IDPessoaGrauTipo] AS ID
		,[IDPessoaGrauTipo] AS Codigo 
		,[Nome]
		,[Ativo]
	FROM [dbo].[PessoaGrauTipo]
  	WHERE ((@Ativo IS NULL)				OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)				OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDPessoaGrauTipo IS NULL)	OR ([IDPessoaGrauTipo] =@IDPessoaGrauTipo))
	ORDER BY Nome
END
GO
/****** Object:  StoredProcedure [dbo].[RelObreirosAtivos]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <13/10/2009>
-- Description:	<Selecionar os Obreiros Ativos das Lojas (Detalhado)>
--
-- Alteração  : <Mario Rossatti>
-- Data       : <23/04/2010>
-- Vresão     : <2010.04.23>
-- Description:	<Mudança na clausula Where retirando inner join>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Alteração do Parametro @IDLojaEmpresa p/ IDEmpresa>
-- Data       : <25/07/2010>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelObreirosAtivos]
-- Add the parameters for the stored procedure here
			     @IDEmpresa  INT
			    ,@PessoaGrauTipo VARCHAR(1000)=NULL
			    ,@Loja			 VARCHAR(1000)=NULL
                ,@Filosofica        VARCHAR(1) = NULL			    
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT 
	 pes.IDPessoa
	,pes.Codigo AS PessoaCodigo
	,pes.Nome   AS PessoaNome
	,pg.Nome    AS PessoaGrauTipoNome
	,lo.Nome    AS LojaNome
	,lo.Codigo  AS LojaCodigo	
	,CASE WHEN pd.IniciacaoData>01/01/1900 THEN Convert(VARCHAR(10),pd.IniciacaoData ,103)  	 
	      ELSE '' 
	 END AS IniciacaoDataTxt	
	FROM Pessoa AS pes
		LEFT OUTER JOIN PessoaDados AS pd ON (pd.IDPessoa=pes.IDPessoa)
		LEFT OUTER JOIN PessoaGrauTipo AS pg ON ((pg.TipoDeGrauDeObreiroAtivo='0') AND (pg.IDPessoaGrauTipo=pes.IDPessoaGrauTipo))
		LEFT OUTER JOIN loja as lo on (lo.IDLoja=pes.IDLoja)
	WHERE   (pes.ativo=0)
        AND (lo.Filosofica = @Filosofica)		
		AND (lo.IDEmpresa  = @IDEmpresa)
		AND ((@Loja IS NULL)           OR (CHARINDEX('|'+CONVERT(varchar(10),pes.IDLoja)          +'|',@Loja)>0 ) )      	
		AND ((@PessoaGrauTipo IS NULL) OR (CHARINDEX('|'+CONVERT(varchar(10),pes.IDPessoaGrauTipo)+'|',@PessoaGrauTipo)>0 ) )      		  
	ORDER BY lo.Codigo,pes.Nome,pes.IDPessoa
	
END
GO
/****** Object:  StoredProcedure [dbo].[RelObreirosCom25AnosIniciado]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <12/10/2009>
-- Description:	<Selecionar os Obreiros COM 25 Anos de Iniciação>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Alteração do Parametro @IDLojaEmpresa p/ IDEmpresa>
-- Data       : <07/09/2010>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelObreirosCom25AnosIniciado]
			     @IDEmpresa INT
			    ,@Loja VARCHAR(100)= NULL
			    ,@Filosofica    VARCHAR(1) = NULL
			    
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT 
	 pes.IDPessoa
	,pes.Codigo 
	,pes.Nome 
	,pg.Nome AS PessoaGrauTipoNome
	,DATEDIFF(YEAR,pd.IniciacaoData ,GETDATE() )AS IdadeIniciacao
    ,CASE WHEN pd.IniciacaoData>01/01/1900 THEN 
		Convert(VARCHAR(10),pd.IniciacaoData ,103)  
	 ELSE '' 
	 END AS IniciacaoDataTxt		  	
	,lo.Nome   AS LojaNome
	,lo.Codigo AS LojaCodigo
	FROM Pessoa AS pes
		inner join loja as lo     on (lo.IDLoja=pes.IDLoja)
		inner join PessoaDados pd on 
		(
			(pd.IDPessoa=pes.IDPessoa)
		AND (pd.IniciacaoData>01/01/1900)
		AND (DATEDIFF(YEAR,pd.IniciacaoData,GETDATE())>24)    
		)
		INNER JOIN PessoaGrauTipo pg ON ((pg.IDPessoaGrauTipo=pes.IDPessoaGrauTipo) AND (pg.TipoDeGrauDeObreiroAtivo='0'))
		
	WHERE   (pes.ativo=0)	    
		AND (lo.IDEmpresa=@IDEmpresa)
        AND (lo.Filosofica = @Filosofica)	  		
		AND ((@Loja IS NULL) OR (CHARINDEX('|'+CONVERT(varchar(10),pes.IDLoja)+'|',@Loja)>0 ) )	  
	ORDER BY lo.Codigo,pes.Nome,pes.IDPessoa
END
GO
/****** Object:  StoredProcedure [dbo].[AdmSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/08/2008>
-- Description:	<Selecionar os Parametros do Sistema>
--
-- Author:		<Rossatti,Junior>
-- Create date: <03/02/2009>
-- Description:	<Inclusão dos Atributos IDCargoTipoVeneravel
--               ,IDCargoTipoSecreatario,IDCargoTipoOrador>
--
-- Author:		<Rossatti,Junior>
-- Create date: <18/07/2009>
-- Description:	<Inclusão dos Atributos IDPessoaTipoObreiro
--               ,IDPessoaTipoFornecedor>
--
-- Author:		<Rossatti,Junior>
-- Create date: <13/09/2009>
-- Description:	<Inclusão do Atributo Placet>
--
-- Author:		<Rossatti,Junior>
-- Create date: <05/11/2009>
-- Description:	<Inclusão do Atributo IDCenso,[IDPessoaGrauTipoCandidato]>
--
-- Author:		<Rossatti,Junior>
-- Create date: <09/11/2009>
-- Description:	<Inclusão dos Atributos IDCenso, IDPessoaGrauTipoAP,IDPessoaGrauTipoCM>
--
-- Author:		<Rossatti,Junior>
-- Create date: <21/01/2010>
-- Description:	<Inclusão dos Atributos de Nome dos IDsIDCenso>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[AdmSelecionar]
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT
	 adm.IDAdm
	,adm.IDCidadeContinente
	,adm.IDCidadePais
	,adm.IDCidadeEstado
	,adm.IDCidade
	,adm.mercado
	,adm.IDLoja
	,adm.IDLoja AS IDPotencia
	,adm.IDCargoTipoVeneravel
	,adm.IDCargoTipoSecretario
	,adm.IDCargoTipoOrador
	,adm.IDPessoaTipoObreiro
	,adm.IDPessoaTipoFornecedor
	,adm.Placet
	,adm.IDCenso
	,adm.IDPessoaGrauTipoCandidato
	,adm.IDPessoaGrauTipoObreiro
	,adm.IDPessoaGrauTipoAP
	,adm.IDPessoaGrauTipoCM
    ,IDCargoNivelVeneravel
    ,cid.Nome  AS CidadeNome
    ,est.Nome  AS CidadeEstadoNome
    ,pais.Nome AS CidadePaisNome
    ,pot.nome  AS PotenciaNome
    ,gm.Nome   AS GraoMestre
    ,sre.Nome  AS SecretarioRelacoesExteriores
    ,ctv.nome  AS NomeCargoTipoVeneravel
    ,cts.Nome  AS NomeCargoTipoSecretario
    ,cto.Nome  AS NomeCargoTipoOrador
    ,pto.Nome  AS NomePessoaTipoObreiro
    ,ptf.Nome  AS NomePessoaTipoFornecedor
    ,gtca.Nome AS NomePessoaGrauTipoCandidato
    ,gtob.Nome AS NomePessoaGrauTipoObreiro
    ,gtcm.Nome AS NomePessoaGrauTipoCM
--    ,gtmm.Nome AS NomePessoaGrauTipoMM
    ,cnv.Nome  AS NomeCargoNivel
    
    ,'ORIENTE DE '+cid.Nome+' - '+est.Sigla+'. '+
		Convert(VARCHAR(2),DAY(GETDATE()),103) +' DE '+
		dbo.RetornarNomeDoMes(MONTH(GETDATE()))+' DE '+
		Convert(VARCHAR(4),YEAR(GETDATE()),103)
     AS RelatorioAbertura
     
	FROM Adm AS adm
	LEFT OUTER JOIN Cidade           AS cid  ON (cid.[IDCidade]    = adm.IDCidade)
	LEFT OUTER JOIN CidadeEstado     AS est  ON (est.IDCidadeEstado= adm.IDCidadeEstado)
	LEFT OUTER JOIN CidadePais       AS pais ON (pais.IDCidadePais = adm.IDCidadePais)
	LEFT OUTER JOIN CidadeContinente AS cont ON (cont.IDCidadeContinente=adm.IDCidadeContinente)
	LEFT OUTER JOIN Potencia         AS pot  ON (pot.IDPotencia=adm.IDLoja)
	LEFT OUTER JOIN Pessoa           AS gm   ON (gm.IDPessoa=pot.IDPessoaGraoMestre)
	LEFT OUTER JOIN Pessoa           AS sre  ON (sre.IDPessoa=pot.IDPessoaSecretario)
	LEFT OUTER JOIN CargoTipo        AS ctv  ON (ctv.IDCargoTipo=adm.IDCargoTipoVeneravel)
	LEFT OUTER JOIN CargoTipo        AS cts  ON (cts.IDCargoTipo=adm.IDCargoTipoSecretario)
	LEFT OUTER JOIN CargoTipo        AS cto  ON (cto.IDCargoTipo=adm.IDCargoTipoOrador)
	LEFT OUTER JOIN PessoaTipo       AS pto  ON (pto.IDPessoaTipo=adm.IDPessoaTipoObreiro)
	LEFT OUTER JOIN PessoaTipo       AS ptf  ON (ptf.IDPessoaTipo=adm.IDPessoaTipoFornecedor)
	LEFT OUTER JOIN PessoaGrauTipo   AS gtca ON (gtca.IDPessoaGrauTipo=adm.IDPessoaGrauTipoCandidato)
	LEFT OUTER JOIN PessoaGrauTipo   AS gtob ON (gtob.IDPessoaGrauTipo=adm.IDPessoaGrauTipoObreiro)
	LEFT OUTER JOIN PessoaGrauTipo   AS gtap ON (gtap.IDPessoaGrauTipo=adm.IDPessoaGrauTipoAP)
	LEFT OUTER JOIN PessoaGrauTipo   AS gtcm ON (gtcm.IDPessoaGrauTipo=adm.IDPessoaGrauTipoCM)
	--LEFT OUTER JOIN PessoaGrauTipo   AS gtmm ON (gtmm.IDPessoaGrauTipo=adm.IDPessoaGrauTipoMM)
	LEFT OUTER JOIN CargoNivel       AS cnv  ON (cnv.IDCargoNivel=adm.IDCargoNivelVeneravel)

	WHERE IDAdm='1'
END
GO
/****** Object:  StoredProcedure [dbo].[CensoDadosGeraisSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <27/09/2008>
-- Description:	<Selecionar os dados informados no Censo>
--------------------------------------------------------------------------------------
-- 
-- Autor: Mario Rossatti
-- Data : 05/11/2009
-- Descr: Ajuste no nome da pessoa, inclusao dos atributos: EnderecoCEP,TrabalhoCEP.
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CensoDadosGeraisSelecionar]
-- Add the parameters for the stored procedure here
				 @IDPessoa INT=NULL 
	 			,@Nome	   varchar(100)=NULL
				,@IDLoja   INT=NULL
-- CORPO DA PROCEDURE
AS
BEGIN

	IF @IDPessoa IS NULL 
		BEGIN
			SET @IDPessoa = null
		END

	SELECT A.[IDCensoDadosGreais]
      ,A.[IDPessoa]
      ,A.[IDCenso]
      ,A.[Nome]
      ,A.[CPF]
      ,A.[Sexo]
      ,A.[RG]
      ,A.[Natureza]
      ,A.[IDPessoaTipo]
      ,A.[IDPessoaGrauTipo]
      ,A.[NascimentoData]
      ,A.[IDPessoaEstadoCivil]
      ,A.[CasamentoData]
      ,A.[IDLoja]
      ,A.[SangueTipo]
      ,A.[IDPessoaProfissao]
      ,A.[ProfissaoNome]
      ,A.[LocalTrabalho]
      ,A.[TrabalhoEndereco]
      ,A.[TrabalhoBairro]
      ,A.[TrabalhoIDCidade]
      ,A.[Endereco]
      ,A.[EnderecoBairro]
      ,A.[EnderecoIDCidade]
      ,A.[Email]
      ,A.[DataInclusao]
	  ,A.EnderecoCEP
      ,A.TrabalhoCEP
      ,A.NascimentoIDCidade
      ,B.[Nome] AS PessoaNome
      ,C.[Nome] AS CidadeNome
      ,D.[Nome] AS TrabalhoCidadeNome            
      ,J.Nome   as CidadeNascimentoNome
	  ,CASE WHEN A.sexo='M'  THEN e.nome ELSE e.Nomefemenino END AS PessoaProfissaoNome
	  ,F.[Nome] AS PessoaGrauTipoNome
	  ,CASE WHEN A.sexo='M'  THEN G.[Nome] ELSE g.[NomeFemenino] END AS EstadoCivilNome
	  ,H.[Nome] AS CensoNome
	  ,i.[Nome] AS LojaNome
	  ,CASE WHEN A.sexo='M'  THEN 'Masculino' ELSE 'Feminino' END AS SexoNome
	  
	FROM [dbo].[CensoDadosGerais] AS A
		LEFT OUTER JOIN [Pessoa]  AS B ON (B.[IDPessoa] = A.IDPessoa)
		LEFT OUTER JOIN [Cidade]  AS C ON (C.[IDCidade] = A.EnderecoIDCidade)
		LEFT OUTER JOIN [Cidade]  AS D ON (D.[IDCidade] = A.TrabalhoIDCidade)
		LEFT OUTER JOIN [Cidade]  AS J ON (J.[IDCidade] = A.NascimentoIDCidade)
		LEFT OUTER JOIN [PessoaProfissao]   AS E ON (E.[IDPessoaProfissao]   = A.[IDPessoaProfissao])
		LEFT OUTER JOIN [PessoaGrauTipo]    AS F ON (F.[IDPessoaGrauTipo]    = A.[IDPessoaGrauTipo])
		LEFT OUTER JOIN [PessoaEstadoCivil] AS G ON (G.[IDPessoaEstadoCivil] = A.[IDPessoaEstadoCivil])
		LEFT OUTER JOIN [Censo]             AS H ON (H.[IDCenso] = A.[IDCenso])
		LEFT OUTER JOIN [Loja]              AS I ON (I.[IDLoja]  = A.IDLoja)
		
	WHERE ((@IDPessoa IS NULL) OR (A.IDPessoa = @IDPessoa))
	  AND ((@IDLoja IS NULL)   OR (A.IDLoja = @IDLoja))
	  AND ((@Nome IS NULL)     OR (B.Nome LIKE '%'+@Nome+'%'))
  
	ORDER BY B.Nome,A.IDPessoa
  
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaEstadoCivilSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <09/08/2008>
-- Description:	<Selecionar os Estados Civis de Pessoas>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao do Atributo Codigo e ID e Codigo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaEstadoCivilSelecionar]
 @Ativo                 VARCHAR(1) = NULL
,@Nome                  VARCHAR(100) = NULL
,@IDPessoaEstadoCivil   int = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	 IDPessoaEstadoCivil
	,IDPessoaEstadoCivil AS ID
	,IDPessoaEstadoCivil AS Codigo
	,Nome
	,Ativo
	,NomeFemenino
	,NomeFemenino AS NomeFeminino
	FROM PessoaEstadoCivil
	WHERE ((@Ativo IS NULL)               OR ([Ativo] = @Ativo))
	  AND ((@Nome IS NULL)                OR ([Nome] LIKE '%'+@Nome + '%'))
	  AND ((@IDPessoaEstadoCivil IS NULL) OR ([IDPessoaEstadoCivil] = @IDPessoaEstadoCivil))
	ORDER BY [Nome],[IDPessoaEstadoCivil]
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaEstadoCivilAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 09/08/2008
-- DESCRICAO...: Atualizacao de dados na Tabela PessoaEstadoCivil
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaEstadoCivilAlterar]
	-- Add the parameters for the stored procedure here
	@IDPessoaEstadoCivil INT = NULL,
	@Ativo varchar(1),
	@Nome varchar(100),
	@NomeFemenino VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE PessoaEstadoCivil SET
		Nome=@Nome,
		Ativo=@Ativo,
		NomeFemenino=@NomeFemenino
	WHERE IDPessoaEstadoCivil=@IDPessoaEstadoCivil
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaEstadoCivilIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 13/07/2008
-- DESCRICAO...: Inclusão de dados na Tabela PessoaEstadoCivil
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaEstadoCivilIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100),
	@NomeFemenino varchar(100)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PessoaEstadoCivil (Ativo ,Nome,NomeFemenino) 
	                     values(@Ativo,@Nome,@NomeFemenino)
	                     
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS id	                     
	
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoPessoaEstadoCivil]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Selecionar os Estados Civis de Pessoas>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoPessoaEstadoCivil]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPessoaEstadoCivil   int = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	   IDPessoaEstadoCivil AS ID
	  ,IDPessoaEstadoCivil AS Codigo 
	  ,Nome
	  ,Ativo
	  ,NomeFemenino
	FROM PessoaEstadoCivil
	WHERE ((@Ativo IS NULL)               OR ([Ativo] = @Ativo))
	  AND ((@Nome IS NULL)                OR ([Nome] LIKE '%'+@Nome + '%'))
	  AND ((@IDPessoaEstadoCivil IS NULL) OR ([IDPessoaEstadoCivil] = @IDPessoaEstadoCivil))
	ORDER BY [Nome],[IDPessoaEstadoCivil]
END
GO
/****** Object:  StoredProcedure [dbo].[PotenciaDEPARAIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 15/08/2008
-- DESCRICAO...: Inclusão de dados na Tabela PotenciaDEPARA
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PotenciaDEPARAIncluir]
	-- Add the parameters for the stored procedure here
      @IDPotencia  INT 
     ,@CODIGO INT 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[PotenciaDEPARA]
           (
            [IDPotencia]
           ,[CODIGO]
           )
     VALUES
           (      
			 @IDPotencia  
			,@CODIGO
			)
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS id	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaDEPARAIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 15/08/2008
-- DESCRICAO...: Inclusão de dados na Tabela PotenciaDEPARA
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaDEPARAIncluir]
	-- Add the parameters for the stored procedure here
      @IDPessoa  INT 
     ,@CODOBREIRO INT 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[PessoaDEPARA]
           (
            [IDPessoa]
           ,[CODOBREIRO]
           )
     VALUES
           (      
			 @IDPessoa
			,@CODOBREIRO
			)
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaTipoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <09/08/2008>
-- Description:	<Insercao de dados na Tabela Tipos de Pessoa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaTipoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PessoaTipo (Ativo,Nome) values(@Ativo,@Nome)
	
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	--- RETURN @ID
	 SELECT @ID AS id
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoPessoaTipo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <09/08/2008>
-- Description:	<Procedure para Selecionar os TIPOS DE PESSOAS a funcionalidade de Selecao>
--------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoPessoaTipo]
 @Ativo          VARCHAR(1)   = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPessoaTipo            INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	   IDPessoaTipo AS ID
	  ,IDPessoaTipo AS Codigo 
	  ,Nome
	  ,Ativo
	FROM PessoaTipo
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDPessoaTipo IS NULL)   OR ([IDPessoaTipo] =@IDPessoaTipo))
	ORDER BY Nome,IDPessoaTipo
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaTipoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <09/08/2008>
-- Description:	<Selecionar os Tipos de Pessoas>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao do Atributo Codigo e ID>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaTipoSelecionar]
 @Ativo          VARCHAR(1)   = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPessoaTipo            INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	 IDPessoaTipo
	,IDPessoaTipo AS ID
	,IDPessoaTipo AS Codigo 
	,Nome
	,Ativo
	FROM PessoaTipo
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDPessoaTipo IS NULL)   OR ([IDPessoaTipo] =@IDPessoaTipo))
	ORDER BY Nome
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaTipoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <09/08/2008>
-- Description:	<Atualizacao de dados na Tabela de Tipos de Pessoa (PessoaTipo) >
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaTipoAlterar]
	-- Add the parameters for the stored procedure here
	@IDPessoaTipo INT,
	@Ativo varchar(1),
	@Nome varchar(80)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE PessoaTipo SET
		Nome=@Nome,
		Ativo=@Ativo		
	WHERE IDPessoaTipo=@IDPessoaTipo
END
GO
/****** Object:  StoredProcedure [dbo].[LojaDEPARAIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 15/08/2008
-- DESCRICAO...: Inclusão de dados na Tabela PotenciaDEPARA
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaDEPARAIncluir]
	-- Add the parameters for the stored procedure here
      @IDLoja  INT 
     ,@CODLOJA INT 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [AdmLoja].[dbo].[LojaDEPARA]
           (
            [IDLoja]
           ,[CODLOJA]
           )
     VALUES
           (      
			 @IDLoja  
			,@CODLOJA
			)
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID	
END
GO
/****** Object:  StoredProcedure [dbo].[LojaDeparaSelecionarIDLoja]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <16/08/2009>
-- Description:	<Selecionar LojaDepara>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaDeparaSelecionarIDLoja]
  @CODLOJA int = NULL
 ,@IDLoja INT = NULL 

-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 l.IDLoja
		 ,l.[CODLOJA]		 
	FROM [LojaDEPARA] AS l
	WHERE 
	     ((@CODLOJA IS NULL) OR (l.CODLOJA = @CODLOJA))
	 AND ((@IDLoja IS NULL)  OR (L.[IDLoja]=@IDLoja))
	ORDER BY l.[IDLoja]
END
GO
/****** Object:  StoredProcedure [dbo].[UsuarioAlterarSenha]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <01/06/2010>
-- Description:	<Atualizacao de dados na Tabela de Usuario>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[UsuarioAlterarSenha]
	-- Add the parameters for the stored procedure here
	@IDUsuario INT,
	@Senha varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[Usuario]
	   SET [Senha] = @Senha
	WHERE IDUsuario=@IDUsuario 
 END
GO
/****** Object:  StoredProcedure [dbo].[UsuarioAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <27/05/2010>
-- Description:	<Atualizacao de dados na Tabela de Usuario>
--------------------------------------------------------------------------------------
create PROCEDURE [dbo].[UsuarioAlterar]
	-- Add the parameters for the stored procedure here
	@IDUsuario INT,
	@Ativo varchar(1),
	@Nome varchar(100)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[Usuario]
	   SET [Nome] = @Nome
		  ,[Ativo] = @Ativo
	WHERE IDUsuario=@IDUsuario
 
 END
GO
/****** Object:  StoredProcedure [dbo].[UsuarioSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <27/05/2010>
-- Description:	<Selecionar os Usuarios>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[UsuarioSelecionar]
 @Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
,@IDUsuario    INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	       [IDUsuario]
	      ,[IDUsuario] AS ID
		  ,[Nome]
		  ,[Ativo]
	FROM [dbo].[Usuario]
	WHERE ((@Ativo IS NULL)     OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)      OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDUsuario IS NULL) OR ([IDUsuario] =@IDUsuario))
	ORDER BY Nome,IDUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[UsuarioIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <27/05/2010>
-- Description:	<Insercao de dados na Tabela Usuário>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[UsuarioIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100),
	@Senha varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Usuario]
           ([Nome]
           ,[Ativo]
           ,[Senha])
    VALUES
           (@Nome
           ,@Ativo
           ,@Senha)
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[UsuarioPermissoesSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <03/06/2010>
-- Description:	<Selecionar as permissoes do usuário>
--------------------------------------------------------------------------------------
create PROCEDURE [dbo].[UsuarioPermissoesSelecionar]
  @IDUsuario int
 ,@SistemaCodigo int 
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	     up.SistemaPermissoesCodigo
	FROM [dbo].[UsuarioPermissoes] as up
	inner join usuario as usu on (usu.idusuario=up.idusuario and usu.ativo='0')
	WHERE (@IDUsuario = up.IDUsuario)
	  AND (@SistemaCodigo=up.SistemaCodigo)
END
GO
/****** Object:  StoredProcedure [dbo].[UsuarioSelecionarUsuario]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <03/06/2010>
-- Description:	<Selecionar o Usuario que pretende logar em um sistema>
--------------------------------------------------------------------------------------
create PROCEDURE [dbo].[UsuarioSelecionarUsuario]
  @Nome  VARCHAR(100)
 -- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	      IDUsuario AS ID
	     ,Senha
	FROM [dbo].[Usuario]
	WHERE (Ativo = '0')
	  AND (ltrim(rtrim(Nome))=@Nome)	  
--	  AND (ltrim(rtrim(Senha))=@Senha)
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaGrauParentescoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <09/08/2008>
-- Description:	<Selecionar Grau de Parentesco de Pessoas>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao do Atributo Codigo e ID e Codigo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaGrauParentescoSelecionar]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPessoaGrauParentesco   int = NULL
,@NomeFemenino   VARCHAR(100) = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	   IDPessoaGrauParentesco
	  ,IDPessoaGrauParentesco AS ID
	  ,IDPessoaGrauParentesco AS Codigo
	  ,Nome
	  ,Ativo
	  ,NomeFemenino
	  ,NomeFemenino AS NomeFeminimo
	FROM PessoaGrauParentesco
	WHERE ((@Ativo IS NULL)          OR ([Ativo] = @Ativo))
	  AND ((@Nome IS NULL)           OR ([Nome] LIKE '%'+@Nome + '%'))
	  AND ((@NomeFemenino IS NULL)   OR ([NomeFemenino] LIKE '%'+@NomeFemenino + '%'))	  
	  AND ((@IDPessoaGrauParentesco IS NULL)   OR ([IDPessoaGrauParentesco] = @IDPessoaGrauParentesco))
	ORDER BY [Nome]
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaGrauParentescoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 09/08/2008
-- DESCRICAO...: Inclusão de dados na Tabela PessoaGrauParentesco
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaGrauParentescoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100),
    @NomeFemenino VARCHAR(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PessoaGrauParentesco (Ativo ,Nome,NomeFemenino) 
	                     values(@Ativo,@Nome,@NomeFemenino)
	DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS id	 	                     
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoPessoaGrauParentesco]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <09/08/2008>
-- Description:	<Procedure para Selecionar os GRAUs PARENTESCO para a funcionalidade de Selecao>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoPessoaGrauParentesco]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPessoaGrauParentesco   int = NULL
,@NomeFemenino   VARCHAR(100) = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	 IDPessoaGrauParentesco AS ID
	,IDPessoaGrauParentesco AS Codigo
	,Nome
	,Ativo
	FROM PessoaGrauParentesco
	WHERE ((@Ativo IS NULL)          OR ([Ativo] = @Ativo))
	  AND ((@Nome IS NULL)           OR ([Nome] LIKE '%'+@Nome + '%'))
	  AND ((@NomeFemenino IS NULL)   OR ([NomeFemenino] LIKE '%'+@NomeFemenino + '%'))	  
	  AND ((@IDPessoaGrauParentesco IS NULL)   OR ([IDPessoaGrauParentesco] = @IDPessoaGrauParentesco))
	ORDER BY [Nome],IDPessoaGrauParentesco
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaFamiliaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <03/10/2008>
-- Description:	<Selecionar os Familiares das  Pessoas (Obreiros)>

-- Author:		<Mario Rossatti>
-- Create date: <25/02/2009>
-- Description:	<Inclusão dos atributos Endereco,enderecoBairro,EnderecoIDCidade e peculio>

-- Author:		<Mario Rossatti>
-- Create date: <17/03/2009>
-- Description:	<peculio>

-- Author:		<Mario Rossatti>
-- Create date: <30/08/2009>
-- Description:	<Inclusão de atributo SexoNome>

-- Author:		<Mario Rossatti>
-- Create date: <31/08/2009>
-- Description:	<Inclusão de atributo DataNascimentoTxt>

-- Author:		<Mario Rossatti>
-- Create date: <02/09/2009>
-- Description:	<Inclusão de atributo PeculioNome>

-- Author:		<Mario Rossatti>
-- Create date: <28/09/2009>
-- Description:	<Inclusão do parametro @IDCenso>

-- Author:		<Mario Rossatti>
-- Create date: <05/11/2009>
-- Description:	<Inclusão do atributo IDCenso>
--
-- Author     : Rossatti,Junior
-- Create date: 26/04/2010
-- Versão     : 2010.04.24
-- Description: Inclusão do Atributo Grau de Parentesco
--
-- Author     : Rossatti,Junior
-- Create date: 11/08/2010
-- Versão     : 2010.08.20
-- Description: Inclusão do Atributo Sexo
--
-- Author:		<Mario Rossatti>
-- Create date: <12/08/2010>
-- Description:	<Inclusão de atributo Email>
-----------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaFamiliaSelecionar]
 @Ativo           VARCHAR(1) = NULL
,@Nome            VARCHAR(100) = NULL
,@IDPessoa        INT = NULL
,@IDPessoaFamilia INT = NULL
,@IDCenso         INT = NULL
,@IDPessoaGrauParentesco INT = NULL
,@Sexo            INT = NULL

-- CORPO DA PROCEDURE
AS
BEGIN
	
	SELECT 
	   Fa.IDPessoaFamilia
	  ,Fa.IDPessoaFamilia as ID
      ,Fa.Ativo
      ,Fa.IDPessoa
      ,Fa.Nome
      ,Fa.IDPessoaGrauParentesco
      ,Fa.DataNascimento
      ,fa.Email
      ,CASE WHEN Fa.DataNascimento>31/12/1899 THEN Convert(VARCHAR(10),Fa.DataNascimento,103) ELSE '' END AS DataNascimentoTxt
      ,Fa.Sexo
      ,CASE WHEN Fa.Sexo=0 THEN 'Masculino' ELSE 'Feminino' END AS SexoNome
      ,Fa.IDPessoaProfissao
      ,CASE WHEN Fa.Sexo=0 THEN PP.Nome ELSE PP.NomeFemenino END AS PessoaProfissaoNome
      ,PP.NomeFemenino AS PessoaProfissaoNomeFemenino
      --,PG.Nome AS PessoaGrauParentescoNome
	  ,PG.NomeFemenino AS PessoaGrauParentescoNomeFemenino      
      ,CASE WHEN Fa.Sexo=0 THEN PG.Nome ELSE PG.NomeFemenino END AS PessoaGrauParentescoNome
	  ,fa.Endereco
	  ,fa.EnderecoBairro
	  ,cid.Nome AS CidadeNome
	  ,Fa.Peculio
	  ,CASE WHEN fa.Peculio=0 THEN 'Sim' ELSE 'Não' END AS PeculioNome
	  ,cid.IDCidade
	  ,cns.Nome AS CensoNome			  
	  ,cns.IDCenso	
	FROM PessoaFamilia AS Fa
		LEFT OUTER JOIN PessoaProfissao      AS PP  ON (PP.IDPessoaProfissao = Fa.IDPessoaProfissao)
		LEFT OUTER JOIN PessoaGrauParentesco AS PG  ON (PG.IDPessoaGrauParentesco = Fa.IDPessoaGrauParentesco)
		LEFT OUTER JOIN Cidade               AS cid ON (cid.IDCidade = Fa.enderecoIDCidade)	
		LEFT OUTER JOIN Censo                AS cns ON (cns.IDCenso= Fa.IDCenso)		
	WHERE	((@Ativo IS NULL)	 OR (Fa.Ativo = @Ativo))
		AND ((@Nome IS NULL)	 OR (Fa.Nome LIKE '%'+@Nome + '%'))
		AND ((@IDPessoa IS NULL) OR (Fa.IDPessoa = @IDPessoa))
		AND ((@IDPessoaFamilia IS NULL) OR (Fa.IDPessoaFamilia = @IDPessoaFamilia))
		AND ((@IDCenso IS NULL)  OR (Fa.IDCenso=@IDCenso))	  		
		AND ((@IDPessoaGrauParentesco IS NULL) OR (Fa.IDPessoaGrauParentesco = @IDPessoaGrauParentesco))
		AND ((@Sexo IS NULL) OR (fa.Sexo = @Sexo))
	ORDER BY Fa.DataNascimento,fa.Nome
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaSelecionarCarteira]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <14/12/2009>
-- Description:	<Selecionar Informações de Obreiros para Emissão de Carteiras>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Description:	<>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaSelecionarCarteira]
				 @Codigo	INT=NULL
				,@IDPessoa  INT=NULL 
				,@COLECAO   VARCHAR(200)=NULL
AS
BEGIN
	SELECT	 P.IDPessoa
	        ,p.Codigo
	        ,P.Codigo AS Cadastro
			,P.Nome			
		    ,CASE WHEN P.NascimentoData>01/01/1900  THEN Convert(VARCHAR(10),P.NascimentoData,103)  
									        	    ELSE '' END
									        	    AS NascimentoData				

		    ,CASE WHEN pd.IniciacaoData>01/01/1900  THEN Convert(VARCHAR(10),pd.IniciacaoData,103)  
									        	    ELSE '' END 
									        	    AS IniciacaoData				
			
		    ,CASE WHEN pd.ElevacaoData>01/01/1900   THEN Convert(VARCHAR(10),pd.ElevacaoData,103)  
									        	    ELSE '' END 
									        	    AS ElevacaoData				
									        	    
		    ,CASE WHEN pd.ExaltacaoData>01/01/1900  THEN Convert(VARCHAR(10),pd.ExaltacaoData,103)  
									        	    ELSE '' END 
									        	    AS ExaltacaoData				
									        	    
			,CASE WHEN pf.Nome  IS NULL  THEN '' ELSE pf.nome END 
													AS Profissao
																
			,CASE WHEN l.nome   IS NULL  THEN '' ELSE l.nome+' Nr '+CAST(l.Codigo AS VARCHAR(5)) END 
													AS LojaNome
													
			,CASE WHEN cl.nome  IS NULL  THEN '' ELSE cl.nome+' - '+cel.sigla END 
													AS LojaCidade
													
			,CASE WHEN C.Nome   IS NULL  THEN '' ELSE c.nome+' - '+ce.sigla END 
													AS Naturalidade
													
			,CASE WHEN cp.Nome  IS NULL  THEN 'BRASILEIRA' ELSE CP.Nacionalidade END 
													AS Nacionalidade
													
			,CASE WHEN pai.Nome IS NULL  THEN '' ELSE pai.nome END 
													AS PAINome
													
			,CASE WHEN mae.Nome IS NULL  THEN '' ELSE mae.nome END 
													AS MAENome
													
			,CASE WHEN pc.Ano   IS NULL  THEN '' ELSE pc.ano   END 
													AS CargoAno	
													
		    ,CASE WHEN pc.DataInicio>01/01/1900  THEN Convert(VARCHAR(10),pc.DataInicio,103)  
									        	 ELSE '' END 
									        		AS CargoDataInicio

		    ,CASE WHEN pc.DataFim>01/01/1900 THEN Convert(VARCHAR(10),pc.DataFim,103)  
											 ELSE '' END 
											 AS CargoDataFim		  	
											 
		    ,CASE WHEN ct.Nome IS NULL	     THEN '' ELSE ct.nome END 
											 AS CargoNome
											 
			,CASE WHEN fo.Foto IS NULL       THEN '' ELSE fo.Foto END 
											 AS Fotografia
			
	FROM Pessoa AS P
		LEFT OUTER JOIN PessoaDados     AS PD ON (pd.IDPessoa = p.IDPessoa)
		LEFT OUTER JOIN PessoaFoto      AS fo ON (fo.IDPessoa = p.IDPessoa)
		LEFT OUTER JOIN PessoaProfissao AS PF ON (pd.IDPessoaProfissao = pf.IDPessoaProfissao)
		LEFT OUTER JOIN Loja            AS L  ON (L.IDLoja = P.IDLoja)
		LEFT OUTER JOIN Cidade          AS C  ON (C.IDCidade = PD.NascimentoIDCidade)
		LEFT OUTER JOIN Cidade          AS CL ON (CL.IDCidade = l.IDCidade)
        LEFT OUTER JOIN CidadeEstado    AS CE ON (CE.IDCidadeEstado=C.IDCidadeEstado)		
        LEFT OUTER JOIN CidadeEstado    AS CEL ON (CEL.IDCidadeEstado=CL.IDCidadeEstado)		
        LEFT OUTER JOIN CidadePais      AS CP ON (CP.IDCidadePais=CE.IDCidadePais)		
		LEFT OUTER JOIN PessoaFamilia   AS PAI ON 
		((PAI.IDPessoa = p.IDPessoa) and (PAI.IDPessoaGrauParentesco=4 and PAI.sexo='0'))
		LEFT OUTER JOIN PessoaFamilia   AS MAE ON 
		((MAE.IDPessoa = p.IDPessoa) and (MAE.IDPessoaGrauParentesco=4 and MAE.sexo='1'))
		LEFT OUTER JOIN PessoaCargo     AS PC ON ((pc.IDPessoa=p.IDPessoa) AND (pc.Atual='0'))
		LEFT OUTER JOIN [CargoTipo]	    AS ct ON (ct.IDCargoTipo=pc.idCargoTipo)
		
	WHERE (P.Ativo = '0')
	  AND ((@IDPessoa IS NULL)  OR (P.IDPessoa = @IDPessoa))
	  AND ((@Codigo   IS NULL)  OR (P.Codigo=@Codigo))
	  AND ((@Colecao  IS NULL)	OR (CHARINDEX('|'+CONVERT(varchar(10),p.Codigo)+'|',@COLECAO)>0 ) )	  	  
	ORDER BY P.codigo
	
END
GO
/****** Object:  View [dbo].[vw_SelecionarCarteiras]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <19/04/2010>
-- Description:	<Selecionar informações para Emissão de Placet de:
--              <Iniciação, elevacao ,exaltacao,etc>
--
-- Author:		<>
-- Create date: <>
-- Description:	<>
--
--------------------------------------------------------------------------------------
create view [dbo].[vw_SelecionarCarteiras] AS
	
	SELECT 
	-- DADOS DO OBREIRO     
	  pes.Codigo
	 ,Pes.Codigo AS Cadastro 
	 ,pes.Codigo AS CODOBREIRO   
	 ,pes.Nome   AS NOMEOBREIRO
	 ,CASE WHEN pes.NascimentoData>01/01/1900  THEN Convert(VARCHAR(10),pes.NascimentoData,103) ELSE '' END AS NascimentoData
	 ,CASE WHEN C.Nome   IS NULL  THEN '' ELSE c.nome+' - '+ce.sigla END AS Naturalidade
	 ,CASE WHEN cp.Nome  IS NULL  THEN 'BRASILEIRA' ELSE CP.Nacionalidade END AS Nacionalidade
	 ,CASE WHEN pf.Nome  IS NULL THEN '' ELSE pf.nome  END AS Profissao 
	 ,CASE WHEN chd.Nome IS NULL THEN '' ELSE chd.nome END AS CunhadaNome
	 ,CASE WHEN chd.DataNascimento IS NULL THEN '' ELSE Convert(VARCHAR(10),chd.DataNascimento,103) END AS CunhadaNascimento
	 ,CASE WHEN pai.Nome IS NULL  THEN '' ELSE pai.nome END AS PaiNome
	 ,CASE WHEN mae.Nome IS NULL  THEN '' ELSE mae.nome END	AS MaeNome
	-- CARGO ATUAL DO OBREIRO 
	 ,CASE WHEN ct.Nome IS NULL THEN '' ELSE ct.nome END AS CargoNome
	 ,CASE WHEN pc.Ano  IS NULL THEN '' ELSE pc.ano  END AS CargoAno	
	 ,CASE WHEN pc.DataInicio>01/01/1900  THEN Convert(VARCHAR(10),pc.DataInicio,103) ELSE '' END AS CargoDataInicio
	 ,CASE WHEN pc.DataFim>01/01/1900     THEN Convert(VARCHAR(10),pc.DataFim,103)    ELSE '' END AS CargoDataFim		  	
	-- LOJA ATUAL DO OBREIRO --
	 ,CASE WHEN l.nome IS NULL  THEN '' ELSE l.nome+' N.º '+CAST(l.Codigo AS VARCHAR(5)) END AS LojaAtual
	 ,CASE WHEN cl.nome  IS NULL  THEN '' ELSE cl.nome+' - '+cel.sigla END AS LojaAtualCidade													

	-- REGISTROS 
	 ,'INICIAÇÃO' AS Iniciacao
	 ,CASE WHEN pesd.IniciacaoPlacet IS NULL THEN '' ELSE CAST(pesd.IniciacaoPlacet AS VARCHAR(6)) END AS PLACET_INI 
	 ,CASE WHEN lini.nome IS NULL THEN '' ELSE  lini.nome+' N.º '+CAST(lini.Codigo as VARCHAR(4)) END AS LOJA_INI
	 ,CASE WHEN incid.nome IS NULL THEN '' ELSE  incid.nome+' - '+inest.Sigla END AS CID_LOJA_INI
	 ,CASE WHEN pesd.IniciacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.IniciacaoData ,103)  ELSE '' END AS DATA_INI		  
	 
	 ,'ELEVAÇÃO' AS Elevacao
	 ,CASE WHEN pesd.ElevacaoPlacet IS NULL THEN '' ELSE CAST(pesd.ElevacaoPlacet  AS VARCHAR(6)) END AS PLACET_ELE 
	 ,CASE WHEN lele.nome IS NULL THEN '' ELSE  lele.nome+' N.º '+CAST(lele.Codigo as VARCHAR(4)) END AS LOJA_ELE
	 ,CASE WHEN elcid.nome IS NULL THEN '' ELSE  elcid.nome+' - '+elest.Sigla END AS CID_LOJA_ELE
	 ,CASE WHEN pesd.elevacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.elevacaoData ,103)  ELSE '' END AS DATA_ELE		  

	 ,'EXALTAÇÃO' AS Exaltacao
	 ,CASE WHEN pesd.ExaltacaoPlacet IS NULL THEN '' ELSE CAST(pesd.ExaltacaoPlacet  AS VARCHAR(6)) END AS PLACET_EXA 
	 ,CASE WHEN lexa.nome IS NULL THEN '' ELSE  lexa.nome+' N.º '+CAST(lexa.Codigo as VARCHAR(4)) END AS LOJA_EXA
	 ,CASE WHEN excid.nomE  IS NULL THEN '' ELSE excid.nome+' - '+exest.Sigla END AS CID_LOJA_EXA
	 ,CASE WHEN pesd.elevacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.elevacaoData ,103)  ELSE '' END AS DATA_EXA		  

	 ,'INSTALAÇÃO' AS Instalacao
	 ,CASE WHEN pesd.InstalacaoPlacet IS NULL THEN '' ELSE CAST(pesd.InstalacaoPlacet  AS VARCHAR(6)) END AS PLACET_INS
	 ,CASE WHEN lins.nome IS NULL THEN '' ELSE  lins.nome+' N.º '+CAST(lins.Codigo as VARCHAR(4)) END AS LOJA_INS
	 ,CASE WHEN inscid.nome IS NULL THEN '' ELSE  inscid.nome+' - '+insest.Sigla  END AS CID_LOJA_INS
	 ,CASE WHEN pesd.InstalacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.InstalacaoData ,103)  ELSE '' END AS DATA_INS

	 ,'FILIAÇÃO' AS Filiacao
	 ,CASE WHEN pesd.FiliacaoPlacet IS NULL THEN '' ELSE CAST(pesd.FiliacaoPlacet  AS VARCHAR(6)) END AS PLACET_FIL
	 ,CASE WHEN lfil.nome  IS NULL THEN '' ELSE lfil.nome+' N.º '+CAST(lfil.Codigo as VARCHAR(4)) END AS LOJA_FIL
	 ,CASE WHEN filcid.nome IS NULL THEN '' ELSE  filcid.nome+' - '+filest.Sigla  END AS CID_LOJA_FIL
	 ,CASE WHEN pesd.FiliacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.FiliacaoData ,103)  ELSE '' END AS DATA_FIL

	 ,'REGULARIZAÇÃO' AS Regularizacao
	 ,CASE WHEN pesd.RegularizacaoPlacet IS NULL THEN '' ELSE CAST(pesd.RegularizacaoPlacet AS VARCHAR(6))   END AS PLACET_REG
	 ,CASE WHEN lreg.nome IS NULL THEN '' ELSE  lreg.nome+' N.º '+CAST(lreg.Codigo as VARCHAR(4)) END AS LOJA_REG
	 ,CASE WHEN regcid.nome IS NULL THEN '' ELSE  regcid.nome+' - '+regest.Sigla  END AS CID_LOJA_REG
	 ,CASE WHEN pesd.RegularizacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.RegularizacaoData ,103)  ELSE '' END AS DATA_REG

	 ,'REJEIÇÃO' AS Rejeicao
	 ,CASE WHEN pesd.RejeicaoPlacet IS NULL THEN '' ELSE CAST(pesd.RejeicaoPlacet  AS VARCHAR(6))  END AS PLACET_REJ
	 ,CASE WHEN lrej.nome IS NULL THEN '' ELSE  lrej.nome+' N.º '+CAST(lrej.Codigo as VARCHAR(4)) END AS LOJA_REJ
	 ,CASE WHEN rejcid.nome IS NULL THEN '' ELSE  rejcid.nome+' - '+rejest.Sigla  END AS CID_LOJA_REJ
	 ,CASE WHEN pesd.RejeicaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.RejeicaoData ,103)  ELSE '' END AS DATA_REJ

	 ,'ELIMINAÇÃO' AS Eliminacao
	 ,CASE WHEN pesd.EliminacaoPlacet IS NULL THEN '' ELSE CAST(pesd.EliminacaoPlacet AS VARCHAR(6))   END AS PLACET_ELI
	 ,CASE WHEN leli.nome IS NULL THEN '' ELSE  leli.nome+' N.º '+CAST(leli.Codigo as VARCHAR(4)) END AS LOJA_ELI
	 ,CASE WHEN elicid.nome IS NULL THEN '' ELSE  elicid.nome+' - '+eliest.Sigla  END AS CID_LOJA_ELI
	 ,CASE WHEN pesd.EliminacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.EliminacaoData ,103)  ELSE '' END AS DATA_ELI

	 ,'DESLIGAMENTO' AS Desligamento
	 ,CASE WHEN pesd.DesligamentoPlacet IS NULL THEN '' ELSE CAST(pesd.DesligamentoPlacet AS VARCHAR(6))  END AS PLACET_DES
	 ,CASE WHEN ldes.nome IS NULL THEN '' ELSE ldes.nome+' N.º '+CAST(ldes.Codigo as VARCHAR(4)) END AS LOJA_DES
	 ,CASE WHEN descid.nome IS NULL THEN '' ELSE descid.nome+' - '+desest.Sigla END AS CID_LOJA_DES
	 ,CASE WHEN pesd.DesligamentoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.DesligamentoData ,103)  ELSE '' END AS DATA_DES

	-- Potencia
	 ,'ORIENTE DE '+pocid.Nome+' - '+poest.Sigla+'. '+
			Convert(VARCHAR(2),DAY(GETDATE()),103) +' DE '+
			dbo.RetornarNomeDoMes(MONTH(GETDATE()))+' DE '+
			Convert(VARCHAR(4),YEAR(GETDATE()),103)         AS AberturaDoRelatorio
	 ,CASE WHEN gm.Nome  IS NULL THEN '' ELSE  gm.Nome  END AS GraoMestre
	 ,CASE WHEN sre.Nome IS NULL THEN '' ELSE  sre.Nome END AS SecretarioRelacoesExteriores


	-- Foto 
	 ,CASE WHEN fo.Foto IS NULL THEN '' ELSE fo.Foto END AS Fotografia
 
	 
	FROM Pessoa AS pes
	-- Dados do Obreiro
	LEFT outer JOIN PessoaDados     AS pesd ON (pes.IDPessoa = pesd.IDPessoa)
	LEFT OUTER JOIN PessoaProfissao AS PF   ON (pesd.IDPessoaProfissao = pf.IDPessoaProfissao)
	LEFT OUTER JOIN PessoaFamilia   AS chd  ON ((chd.IDPessoa = pes.IDPessoa) and (chd.IDPessoaGrauParentesco=3 and chd.sexo='1'))
	-- atenção o codigo do grau pode variar se estiver na produção (4) ou desenv(1)
	LEFT OUTER JOIN PessoaFamilia   AS PAI  ON ((PAI.IDPessoa = pes.IDPessoa) and (PAI.IDPessoaGrauParentesco=1 and PAI.sexo='0')) 
	LEFT OUTER JOIN PessoaFamilia   AS MAE  ON ((MAE.IDPessoa = pes.IDPessoa) and (MAE.IDPessoaGrauParentesco=1 and MAE.sexo='1'))
	LEFT OUTER JOIN PessoaCargo     AS PC   ON ((pc.IDPessoa  = pes.IDPessoa) AND (pc.Atual='0'))
	LEFT OUTER JOIN [CargoTipo]	    AS ct   ON (ct.IDCargoTipo=pc.idCargoTipo)
	LEFT OUTER JOIN Cidade          AS C  ON (C.IDCidade = Pesd.NascimentoIDCidade)
	LEFT OUTER JOIN CidadeEstado    AS CE ON (CE.IDCidadeEstado=C.IDCidadeEstado)		
	LEFT OUTER JOIN CidadePais      AS CP ON (CP.IDCidadePais=CE.IDCidadePais)		


	-- Loja atual
	LEFT OUTER JOIN Loja            AS L  ON (L.IDLoja = pes.IDLoja)
	LEFT OUTER JOIN Cidade          AS CL ON (CL.IDCidade = l.IDCidade)
	LEFT OUTER JOIN CidadeEstado    AS CEL ON (CEL.IDCidadeEstado=CL.IDCidadeEstado)		

	-- Potencia
	LEFT OUTER JOIN Adm          AS adm ON (IDAdm=1)
	LEFT OUTER JOIN Cidade       AS pocid ON (pocid.[IDCidade]     = adm.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS poest ON (poest.IDCidadeEstado = adm.IDCidadeEstado)
	LEFT OUTER JOIN Potencia     AS pot   ON (pot.IDPotencia=adm.IDLoja)
	LEFT OUTER JOIN Pessoa       AS gm    ON (gm.IDPessoa=pot.IDPessoaGraoMestre)
	LEFT OUTER JOIN Pessoa       AS sre   ON (sre.IDPessoa=pot.IDPessoaSecretario)

	-- Loja de Iniciacao
	LEFT OUTER JOIN loja         AS lini  ON (lini.IDLoja = pesd.IniciacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS incid ON (lini.IDCidade = incid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS inest ON (incid.IDCidadeEstado = inest.IDCidadeEstado)

	-- Loja de Elevacao
	LEFT OUTER JOIN loja         AS lele  ON (lele.IDLoja = pesd.ElevacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS elcid ON (lele.IDCidade = elcid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS elest ON (elcid.IDCidadeEstado = elest.IDCidadeEstado)

	-- Loja de Exaltacao
	LEFT OUTER JOIN loja         AS lexa  ON (lexa.IDLoja = pesd.ElevacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS excid ON (lexa.IDCidade = excid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS exest ON (excid.IDCidadeEstado = exest.IDCidadeEstado)

	-- Loja de Instalacao
	LEFT OUTER JOIN loja         AS lins   ON (lins.IDLoja = pesd.ElevacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS inscid ON (lins.IDCidade = inscid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS insest ON (inscid.IDCidadeEstado = insest.IDCidadeEstado)

	-- Loja de Filiacao
	LEFT OUTER JOIN loja         AS lfil   ON (lfil.IDLoja = pesd.ElevacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS filcid ON (lfil.IDCidade = filcid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS filest ON (filcid.IDCidadeEstado = filest.IDCidadeEstado)

	-- Loja de Regularizacao
	LEFT OUTER JOIN loja         AS lreg   ON (lreg.IDLoja = pesd.RegularizacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS regcid ON (lreg.IDCidade = regcid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS regest ON (regcid.IDCidadeEstado = regest.IDCidadeEstado)

	-- Loja de Rejeicao
	LEFT OUTER JOIN loja         AS lrej   ON (lrej.IDLoja = pesd.RejeicaoIDLoja)
	LEFT OUTER JOIN Cidade       AS rejcid ON (lrej.IDCidade = rejcid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS rejest ON (rejcid.IDCidadeEstado = rejest.IDCidadeEstado)

	-- Loja de Eliminacao
	LEFT OUTER JOIN loja         AS leli   ON (leli.IDLoja = pesd.EliminacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS elicid ON (leli.IDCidade = elicid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS eliest ON (elicid.IDCidadeEstado = eliest.IDCidadeEstado)

	-- Loja de Desligamento
	LEFT OUTER JOIN loja         AS ldes   ON (ldes.IDLoja = pesd.EliminacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS descid ON (ldes.IDCidade = descid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS desest ON (descid.IDCidadeEstado = desest.IDCidadeEstado)

	-- foto do obreiro
	LEFT OUTER JOIN PessoaFoto   AS fo   ON (fo.IDPessoa = pes.IDPessoa)
	WHERE (pes.Ativo = '0')
	  --AND ((@IDPessoa IS NULL)  OR (pes.IDPessoa = @IDPessoa))
	  --AND ((@Codigo   IS NULL)  OR (pes.Codigo=@Codigo))
	  --AND ((@Colecao  IS NULL)	OR (CHARINDEX('|'+CONVERT(varchar(10),pes.Codigo)+'|',@COLECAO)>0 ) )	  	  
--	ORDER BY pes.codigo
GO
/****** Object:  StoredProcedure [dbo].[SelecionarCarteiras]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <24/01/2010>
-- Description:	<Selecionar informações para Emissão de Placet de:
--              <Iniciação, elevacao ,exaltacao>
--
-- Author:		<Rossatti Junior>
-- Create date: <24/04/2010>
-- Versão     : <2010.04.24.
-- Description:	<Inclusão do Parametros ColecaoIDPessoa>
--
-- Author:		<>
-- Create date: <>
-- Description:	<>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecionarCarteiras]
				 @Codigo	INT=NULL
				,@IDPessoa  INT=NULL 
				,@COLECAO   VARCHAR(200)=NULL
				,@COLECAOIDPessoa  VARCHAR(200)=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT 
	-- DADOS DO OBREIRO     
	  pes.Codigo
	 ,Pes.Codigo AS Cadastro 
	 ,pes.Codigo AS CODOBREIRO   
	 ,pes.Nome   AS NOMEOBREIRO
	 ,CASE WHEN pes.NascimentoData>01/01/1900  THEN Convert(VARCHAR(10),pes.NascimentoData,103) ELSE '' END AS NascimentoData
	 ,CASE WHEN C.Nome   IS NULL  THEN '' ELSE c.nome+' - '+ce.sigla END AS Naturalidade
	 ,CASE WHEN cp.Nome  IS NULL  THEN 'BRASILEIRA' ELSE CP.Nacionalidade END AS Nacionalidade
	 ,CASE WHEN pf.Nome  IS NULL THEN '' ELSE pf.nome  END AS Profissao 
	 ,CASE WHEN chd.Nome IS NULL THEN '' ELSE chd.nome END AS CunhadaNome
	 ,CASE WHEN chd.DataNascimento IS NULL THEN '' ELSE Convert(VARCHAR(10),chd.DataNascimento,103) END AS CunhadaNascimento
	 ,CASE WHEN pai.Nome IS NULL  THEN '' ELSE pai.nome END AS PaiNome
	 ,CASE WHEN mae.Nome IS NULL  THEN '' ELSE mae.nome END	AS MaeNome
	-- CARGO ATUAL DO OBREIRO 
	 ,CASE WHEN ct.Nome IS NULL THEN '' ELSE ct.nome END AS CargoNome
	 ,CASE WHEN pc.Ano  IS NULL THEN '' ELSE pc.ano  END AS CargoAno	
	 ,CASE WHEN pc.DataInicio>01/01/1900  THEN Convert(VARCHAR(10),pc.DataInicio,103) ELSE '' END AS CargoDataInicio
	 ,CASE WHEN pc.DataFim>01/01/1900     THEN Convert(VARCHAR(10),pc.DataFim,103)    ELSE '' END AS CargoDataFim		  	
	-- LOJA ATUAL DO OBREIRO --
	 ,CASE WHEN l.nome IS NULL  THEN '' ELSE l.nome+' N.º '+CAST(l.Codigo AS VARCHAR(5)) END AS LojaAtual
	 ,CASE WHEN cl.nome  IS NULL  THEN '' ELSE cl.nome+' - '+cel.sigla END AS LojaAtualCidade													

	-- REGISTROS 
	 ,'INICIAÇÃO' AS Iniciacao
	 ,CASE WHEN pesd.IniciacaoPlacet IS NULL THEN '' ELSE CAST(pesd.IniciacaoPlacet AS VARCHAR(6)) END AS PLACET_INI 
	 ,CASE WHEN lini.nome IS NULL THEN '' ELSE  lini.nome+' N.º '+CAST(lini.Codigo as VARCHAR(4)) END AS LOJA_INI
	 ,CASE WHEN incid.nome IS NULL THEN '' ELSE  incid.nome+' - '+inest.Sigla END AS CID_LOJA_INI
	 ,CASE WHEN pesd.IniciacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.IniciacaoData ,103)  ELSE '' END AS DATA_INI		  
	 
	 ,'ELEVAÇÃO' AS Elevacao
	 ,CASE WHEN pesd.ElevacaoPlacet IS NULL THEN '' ELSE CAST(pesd.ElevacaoPlacet  AS VARCHAR(6)) END AS PLACET_ELE 
	 ,CASE WHEN lele.nome IS NULL THEN '' ELSE  lele.nome+' N.º '+CAST(lele.Codigo as VARCHAR(4)) END AS LOJA_ELE
	 ,CASE WHEN elcid.nome IS NULL THEN '' ELSE  elcid.nome+' - '+elest.Sigla END AS CID_LOJA_ELE
	 ,CASE WHEN pesd.elevacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.elevacaoData ,103)  ELSE '' END AS DATA_ELE		  

	 ,'EXALTAÇÃO' AS Exaltacao
	 ,CASE WHEN pesd.ExaltacaoPlacet IS NULL THEN '' ELSE CAST(pesd.ExaltacaoPlacet  AS VARCHAR(6)) END AS PLACET_EXA 
	 ,CASE WHEN lexa.nome IS NULL THEN '' ELSE  lexa.nome+' N.º '+CAST(lexa.Codigo as VARCHAR(4)) END AS LOJA_EXA
	 ,CASE WHEN excid.nomE  IS NULL THEN '' ELSE excid.nome+' - '+exest.Sigla END AS CID_LOJA_EXA
	 ,CASE WHEN pesd.exaltacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.exaltacaoData ,103)  ELSE '' END AS DATA_EXA		  

	 ,'INSTALAÇÃO' AS Instalacao
	 ,CASE WHEN pesd.InstalacaoPlacet IS NULL THEN '' ELSE CAST(pesd.InstalacaoPlacet  AS VARCHAR(6)) END AS PLACET_INS
	 ,CASE WHEN lins.nome IS NULL THEN '' ELSE  lins.nome+' N.º '+CAST(lins.Codigo as VARCHAR(4)) END AS LOJA_INS
	 ,CASE WHEN inscid.nome IS NULL THEN '' ELSE  inscid.nome+' - '+insest.Sigla  END AS CID_LOJA_INS
	 ,CASE WHEN pesd.InstalacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.InstalacaoData ,103)  ELSE '' END AS DATA_INS

	 ,'FILIAÇÃO' AS Filiacao
	 ,CASE WHEN pesd.FiliacaoPlacet IS NULL THEN '' ELSE CAST(pesd.FiliacaoPlacet  AS VARCHAR(6)) END AS PLACET_FIL
	 ,CASE WHEN lfil.nome  IS NULL THEN '' ELSE lfil.nome+' N.º '+CAST(lfil.Codigo as VARCHAR(4)) END AS LOJA_FIL
	 ,CASE WHEN filcid.nome IS NULL THEN '' ELSE  filcid.nome+' - '+filest.Sigla  END AS CID_LOJA_FIL
	 ,CASE WHEN pesd.FiliacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.FiliacaoData ,103)  ELSE '' END AS DATA_FIL

	 ,'REGULARIZAÇÃO' AS Regularizacao
	 ,CASE WHEN pesd.RegularizacaoPlacet IS NULL THEN '' ELSE CAST(pesd.RegularizacaoPlacet AS VARCHAR(6))   END AS PLACET_REG
	 ,CASE WHEN lreg.nome IS NULL THEN '' ELSE  lreg.nome+' N.º '+CAST(lreg.Codigo as VARCHAR(4)) END AS LOJA_REG
	 ,CASE WHEN regcid.nome IS NULL THEN '' ELSE  regcid.nome+' - '+regest.Sigla  END AS CID_LOJA_REG
	 ,CASE WHEN pesd.RegularizacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.RegularizacaoData ,103)  ELSE '' END AS DATA_REG

	 ,'REJEIÇÃO' AS Rejeicao
	 ,CASE WHEN pesd.RejeicaoPlacet IS NULL THEN '' ELSE CAST(pesd.RejeicaoPlacet  AS VARCHAR(6))  END AS PLACET_REJ
	 ,CASE WHEN lrej.nome IS NULL THEN '' ELSE  lrej.nome+' N.º '+CAST(lrej.Codigo as VARCHAR(4)) END AS LOJA_REJ
	 ,CASE WHEN rejcid.nome IS NULL THEN '' ELSE  rejcid.nome+' - '+rejest.Sigla  END AS CID_LOJA_REJ
	 ,CASE WHEN pesd.RejeicaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.RejeicaoData ,103)  ELSE '' END AS DATA_REJ

	 ,'ELIMINAÇÃO' AS Eliminacao
	 ,CASE WHEN pesd.EliminacaoPlacet IS NULL THEN '' ELSE CAST(pesd.EliminacaoPlacet AS VARCHAR(6))   END AS PLACET_ELI
	 ,CASE WHEN leli.nome IS NULL THEN '' ELSE  leli.nome+' N.º '+CAST(leli.Codigo as VARCHAR(4)) END AS LOJA_ELI
	 ,CASE WHEN elicid.nome IS NULL THEN '' ELSE  elicid.nome+' - '+eliest.Sigla  END AS CID_LOJA_ELI
	 ,CASE WHEN pesd.EliminacaoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.EliminacaoData ,103)  ELSE '' END AS DATA_ELI

	 ,'DESLIGAMENTO' AS Desligamento
	 ,CASE WHEN pesd.DesligamentoPlacet IS NULL THEN '' ELSE CAST(pesd.DesligamentoPlacet AS VARCHAR(6))  END AS PLACET_DES
	 ,CASE WHEN ldes.nome IS NULL THEN '' ELSE ldes.nome+' N.º '+CAST(ldes.Codigo as VARCHAR(4)) END AS LOJA_DES
	 ,CASE WHEN descid.nome IS NULL THEN '' ELSE descid.nome+' - '+desest.Sigla END AS CID_LOJA_DES
	 ,CASE WHEN pesd.DesligamentoData>01/01/1900 THEN Convert(VARCHAR(10),pesd.DesligamentoData ,103)  ELSE '' END AS DATA_DES

	-- Potencia
	 ,'ORIENTE DE '+pocid.Nome+' - '+poest.Sigla+'. '+
			Convert(VARCHAR(2),DAY(GETDATE()),103) +' DE '+
			dbo.RetornarNomeDoMes(MONTH(GETDATE()))+' DE '+
			Convert(VARCHAR(4),YEAR(GETDATE()),103)         AS AberturaDoRelatorio
	 ,CASE WHEN gm.Nome  IS NULL THEN '' ELSE  gm.Nome  END AS GraoMestre
	 ,CASE WHEN sre.Nome IS NULL THEN '' ELSE  sre.Nome END AS SecretarioRelacoesExteriores


	-- Foto 
	 ,CASE WHEN fo.Foto IS NULL THEN '' ELSE fo.Foto END AS Fotografia
 
	 
	FROM Pessoa AS pes
	-- Dados do Obreiro
	LEFT outer JOIN PessoaDados          AS pesd ON (pes.IDPessoa = pesd.IDPessoa)
	LEFT OUTER JOIN PessoaProfissao AS PF   ON (pesd.IDPessoaProfissao = pf.IDPessoaProfissao)
	LEFT OUTER JOIN PessoaFamilia   AS chd  ON ((chd.IDPessoa = pes.IDPessoa) and (chd.IDPessoaGrauParentesco=3 and chd.sexo='1'))
	-- atenção o codigo do grau pode variar se estiver na produção (4) ou desenv(1)
	LEFT OUTER JOIN PessoaFamilia   AS PAI  ON ((PAI.IDPessoa = pes.IDPessoa) and (PAI.IDPessoaGrauParentesco=1 and PAI.sexo='0')) 
	LEFT OUTER JOIN PessoaFamilia   AS MAE  ON ((MAE.IDPessoa = pes.IDPessoa) and (MAE.IDPessoaGrauParentesco=1 and MAE.sexo='1'))
	LEFT OUTER JOIN PessoaCargo     AS PC   ON ((pc.IDPessoa  = pes.IDPessoa) AND (pc.Atual='0'))
	LEFT OUTER JOIN [CargoTipo]	    AS ct   ON (ct.IDCargoTipo=pc.idCargoTipo)
	LEFT OUTER JOIN Cidade          AS C  ON (C.IDCidade = Pesd.NascimentoIDCidade)
	LEFT OUTER JOIN CidadeEstado    AS CE ON (CE.IDCidadeEstado=C.IDCidadeEstado)		
	LEFT OUTER JOIN CidadePais      AS CP ON (CP.IDCidadePais=CE.IDCidadePais)		

	-- Loja atual
	LEFT OUTER JOIN Loja            AS L  ON (L.IDLoja = pes.IDLoja)
	LEFT OUTER JOIN Cidade          AS CL ON (CL.IDCidade = l.IDCidade)
	LEFT OUTER JOIN CidadeEstado    AS CEL ON (CEL.IDCidadeEstado=CL.IDCidadeEstado)		

	-- Potencia
	LEFT OUTER JOIN Adm          AS adm ON (IDAdm=1)
	LEFT OUTER JOIN Cidade       AS pocid ON (pocid.[IDCidade]     = adm.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS poest ON (poest.IDCidadeEstado = adm.IDCidadeEstado)
	LEFT OUTER JOIN Potencia     AS pot   ON (pot.IDPotencia=adm.IDLoja)
	LEFT OUTER JOIN Pessoa       AS gm    ON (gm.IDPessoa=pot.IDPessoaGraoMestre)
	LEFT OUTER JOIN Pessoa       AS sre   ON (sre.IDPessoa=pot.IDPessoaSecretario)

	-- Loja de Iniciacao
	LEFT OUTER JOIN loja         AS lini  ON (lini.IDLoja = pesd.IniciacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS incid ON (lini.IDCidade = incid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS inest ON (incid.IDCidadeEstado = inest.IDCidadeEstado)

	-- Loja de Elevacao
	LEFT OUTER JOIN loja         AS lele  ON (lele.IDLoja = pesd.ElevacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS elcid ON (lele.IDCidade = elcid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS elest ON (elcid.IDCidadeEstado = elest.IDCidadeEstado)

	-- Loja de Exaltacao
	LEFT OUTER JOIN loja         AS lexa  ON (lexa.IDLoja = pesd.ElevacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS excid ON (lexa.IDCidade = excid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS exest ON (excid.IDCidadeEstado = exest.IDCidadeEstado)

	-- Loja de Instalacao
	LEFT OUTER JOIN loja         AS lins   ON (lins.IDLoja = pesd.ElevacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS inscid ON (lins.IDCidade = inscid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS insest ON (inscid.IDCidadeEstado = insest.IDCidadeEstado)

	-- Loja de Filiacao
	LEFT OUTER JOIN loja         AS lfil   ON (lfil.IDLoja = pesd.ElevacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS filcid ON (lfil.IDCidade = filcid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS filest ON (filcid.IDCidadeEstado = filest.IDCidadeEstado)

	-- Loja de Regularizacao
	LEFT OUTER JOIN loja         AS lreg   ON (lreg.IDLoja = pesd.RegularizacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS regcid ON (lreg.IDCidade = regcid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS regest ON (regcid.IDCidadeEstado = regest.IDCidadeEstado)

	-- Loja de Rejeicao
	LEFT OUTER JOIN loja         AS lrej   ON (lrej.IDLoja = pesd.RejeicaoIDLoja)
	LEFT OUTER JOIN Cidade       AS rejcid ON (lrej.IDCidade = rejcid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS rejest ON (rejcid.IDCidadeEstado = rejest.IDCidadeEstado)

	-- Loja de Eliminacao
	LEFT OUTER JOIN loja         AS leli   ON (leli.IDLoja = pesd.EliminacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS elicid ON (leli.IDCidade = elicid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS eliest ON (elicid.IDCidadeEstado = eliest.IDCidadeEstado)

	-- Loja de Desligamento
	LEFT OUTER JOIN loja         AS ldes   ON (ldes.IDLoja = pesd.EliminacaoIDLoja)
	LEFT OUTER JOIN Cidade       AS descid ON (ldes.IDCidade = descid.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS desest ON (descid.IDCidadeEstado = desest.IDCidadeEstado)

	-- foto do obreiro
	LEFT OUTER JOIN PessoaFoto   AS fo   ON ((fo.IDPessoa = pes.IDPessoa) AND (fo.Ativo='0') AND (fo.IDPessoaFamilia IS NULL) )
	WHERE (pes.Ativo = '0')
	  AND ((@IDPessoa IS NULL)  OR (pes.IDPessoa = @IDPessoa))
	  AND ((@Codigo   IS NULL)  OR (pes.Codigo=@Codigo))
	  AND ((@COLECAO  IS NULL)	OR (CHARINDEX('|'+CONVERT(varchar(10),pes.Codigo)+'|',@COLECAO)>0 ) )	  	  
	  AND ((@COLECAOIDPessoa  IS NULL)	OR (CHARINDEX('|'+CONVERT(varchar(10),pes.IDPessoa)+'|',@COLECAOIDPessoa)>0 ) )	  	  
	  
	ORDER BY pes.Nome,pes.codigo
END
GO
/****** Object:  StoredProcedure [dbo].[CargoTipoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <04/11/2008>
-- Description:	<Selecionar os Tipos de Cargo>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao dos Atributos Codigo e ID>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CargoTipoSelecionar]
 @Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
,@IDCargoTipo INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	       [IDCargoTipo]
	      ,[IDCargoTipo] AS ID
	      ,[IDCargoTipo] AS Codigo
		  ,[Nome] 
		  ,[Ativo]
	FROM [dbo].[CargoTipo]
	WHERE ((@Ativo IS NULL)       OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)        OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDCargoTipo IS NULL) OR ([IDCargoTipo] =@IDCargoTipo))
	ORDER BY Nome,IDCargoTipo
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoCargoTipo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Selecionar os Tipos de Cargo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoCargoTipo]
 @Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
,@IDCargoTipo INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 [IDCargoTipo] AS ID
		,[IDCargoTipo] AS Codigo 
		,[Nome]
		,[Ativo]
	FROM [dbo].[CargoTipo]
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDCargoTipo IS NULL)   OR ([IDCargoTipo] =@IDCargoTipo))
	ORDER BY Nome,IDCargoTipo
END
GO
/****** Object:  StoredProcedure [dbo].[CargoTipoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Insercao de dados na Tabela Cargo Tipo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CargoTipoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	INSERT INTO [dbo].[CargoTipo]
           ([Nome]
           ,[Ativo])
	VALUES
           (@Nome
           ,@Ativo)
           
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[CargoTipoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Atualizacao de dados na Tabela Cargo Nivel>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CargoTipoAlterar]
	-- Add the parameters for the stored procedure here
	@IDCargoTipo INT,
	@Ativo varchar(1),
	@Nome varchar(100)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[CargoTipo]
	   SET [Nome] = @Nome
		  ,[Ativo] =@Ativo
	WHERE [IDCargoTipo]=@IDCargoTipo
 
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaCargoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <02/08/2008>
-- Description:	<Selecionar os Cargos dos Obreiros>
--
-- Author:		<Mario Rossatti>
-- Create date: <03/09/2008>
-- Description:	<Incluir Atributo LojaNome>
--              <Revisão nos campos que retornan o nome da loja trazer tambem o codigo antigo>
--
-- Author:		<Mario Rossatti>
-- Create date: <11/11/2008>
-- Description:	<Revisão nos campos que retornan o nome da loja traze tambem o codigo>
--
-- Author:		<Mario Rossatti>
-- Create date: <06/01/2010>
-- Description:	<Inclusão dos Atributos DataInicio e DataFim>
--              
-- Author:		<Mario Rossatti>
-- Create date: <28/02/2010>
-- Description:	<Inclusão do Atributo IDCenso>
--              
-- Author:		<Mario Rossatti>
-- Create date: <16/07/2010>
-- Description:	<Inclusão do Atributo Ativo>
--              
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaCargoSelecionar]
 @IDPessoa INT = NULL
,@Atual VARCHAR(1) = NULL
,@Ativo VARCHAR(1) = NULL
-- CORPO DA PROCEDURE
AS
BEGIN

	IF @ATIVO IS NULL
	BEGIN
		SET @ATIVO = '0'
	END
	
	SELECT pc.IDPessoaCargo
		  ,pc.IDPessoa
		  ,pc.IDCargoTipo
		  ,pc.IDCargoNivel
		  ,pc.IDLoja
		  ,pc.Ano
		  ,pc.Atual
		  ,pc.IDCenso		  
          ,CASE WHEN pc.DataInicio>01/01/1900 THEN Convert(VARCHAR(10),pc.DataInicio ,103)  ELSE '' END AS DataInicioTxt		  
          ,CASE WHEN pc.DataFim>01/01/1900 THEN Convert(VARCHAR(10),pc.DataFim ,103)        ELSE '' END AS DataFimTxt		  
		  ,ct.Nome	AS CargoTipoNome
		  ,cn.Nome	AS CargoNivelNome
		  ,CAST(lj.Codigo AS VARCHAR(5))+' - '+lj.Nome AS LojaNome
		  ,pes.Nome	AS PessoaNome
          ,CASE WHEN pc.Atual=0 THEN 'Sim' ELSE 'Não' END AS AtualNome		  
	FROM [PessoaCargo]	AS pc
		LEFT OUTER JOIN CargoTipo	AS ct	ON (ct.IDCargoTipo=pc.idCargoTipo)
		LEFT OUTER JOIN CargoNivel	AS cn	ON (cn.IDCargoNivel=pc.idcargonivel)
		LEFT OUTER JOIN Loja		AS lj	ON (lj.IDLoja=pc.IDLoja)
		LEFT OUTER JOIN Pessoa		AS pes	ON (pes.IDPessoa=pc.IDPessoa)

	WHERE	((@IDPessoa IS NULL) OR (pc.IDPessoa = @IDPessoa))
	AND		((@Atual IS NULL)    OR (pc.Atual    = @Atual))
	AND		(pc.Ativo= @Ativo)
	
	ORDER BY pc.IDPessoa,pc.Atual,pc.Ano DESC,pc.IDPessoaCargo
  
 END
GO
/****** Object:  StoredProcedure [dbo].[SolicitacaoSiteItemSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	Mario Rossatti
-- Create date: 
-- Versão     : 
-- Description:	Inclusão de Itens de solicitações a serem efetuadas pelo site
--
-- Author:		Mario Rossatti
-- Create date: 17/08/2010
-- Versão     : 2010.08.17
-- Description:	Incluir Atributo IDEmpresa
--------------------------------------------------------------------------------------
CREATE PROC [dbo].[SolicitacaoSiteItemSelecionar]
@IDEmpresa INT,
@Ativo VARCHAR = NULL, 
@IDSolicitacaoSiteItem INT = NULL, 
@Nome VARCHAR = NULL, 
@IDFinanceiroTipo INT = NULL
 
AS
BEGIN
 
	SET NOCOUNT ON
	SET ANSI_WARNINGS OFF
 
	SELECT 
	    si.IDSolicitacaoSiteItem,
	    si.Nome,
	    si.Ativo,
	    si.IDFinanceiroTipo,
	    si.IDEmpresa,
		ft.Nome AS FinanceiroTipoNome
	FROM [SolicitacaoSiteItem] AS si
	LEFT OUTER JOIN FinanceiroTipo AS ft ON (ft.IDFinanceiroTipo=si.IDFinanceiroTipo)
	WHERE 
	    
	    ((si.IDEmpresa = @IDEmpresa))    
	AND ((@Ativo IS NULL)                 OR (si.Ativo                 = @Ativo))
    AND ((@Nome IS NULL)                  OR (si.Nome LIKE '%'+@Nome + '%'))
    AND ((@IDSolicitacaoSiteItem IS NULL) OR (si.IDSolicitacaoSiteItem = @IDSolicitacaoSiteItem))
	AND ((@IDFinanceiroTipo IS NULL)      OR (si.IDFinanceiroTipo      = @IDFinanceiroTipo))
 
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroTipoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <04/11/2008>
-- Description:	<Selecionar os Tipos Financeiros ( Taxas e Peculio ) >
--
-- Author:		<Rossatti,Junior>
-- Modify date: <02/06/2009>
-- Description:	<Inclusão do Campo TipoQuitacao ( 0 - Parcial, 1 - Total )>
--
-- Author:		<Rossatti,Junior>
-- Modify date: <06/08/2009>
-- Description:	retirada do if de Campo TipoQuitacao>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <06/05/2010>
-- Versão     : <2010.05.10>
--
-- Description:	<Inclusão do Atributo ID>
-- Author:		<Rossatti,Junior>
-- Modify date: <05/07/2010>
-- Description:	<Inclusão do Campo Codigo>
--
-- Description:	<Inclusão do Atributo ID>
-- Author:		<Rossatti,Junior>
-- Modify date: <18/10/2010>
-- Description:	<Inclusão do Campo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroTipoSelecionar]
 @IDEmpresa             INT
,@Ativo        VARCHAR(1)   = NULL
,@Nome         VARCHAR(100) = NULL
,@IDFinanceiroTipo      INT = NULL
,@Tipo            VARCHAR(1)= NULL
,@TipoQuitacao    VARCHAR(1)= NULL
,@Codigo                INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN

	SELECT ft.IDFinanceiroTipo
	      ,ft.IDFinanceiroTipo as ID
		  ,ft.Nome
		  ,ft.Ativo
		  ,ft.Tipo
		  ,ft.Valor
		  ,ft.TipoQuitacao
		  ,ft.Codigo
		  ,ft.IDEmpresa
	FROM dbo.FinanceiroTipo AS ft
	WHERE (ft.IDEmpresa=@IDEmpresa)
	  AND ((@Ativo IS NULL)            OR (ft.Ativo = @Ativo))
	  AND ((@Nome IS NULL)             OR (ft.Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDFinanceiroTipo IS NULL) OR (ft.IDFinanceiroTipo=@IDFinanceiroTipo))
	  AND ((@Tipo IS NULL)             OR (ft.Tipo = @Tipo))
	  AND ((@TipoQuitacao IS NULL)     OR (ft.TipoQuitacao=@TipoQuitacao))
	  AND ((@Codigo IS NULL)           OR (ft.Codigo=@Codigo))	  
	ORDER BY ft.Nome,ft.IDFinanceiroTipo
	
END
GO
/****** Object:  StoredProcedure [dbo].[RelLancamentosFinanceirosPorLoja]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <26/01/20098>
-- Description:	<Selecionar Lançamentos Financeiros de uma ou um
--               grupo de Lojas de uma Lojampresa>
-- Alteração  : <Modificação do Tipo de Dado do Parametro Tipo de integer para varchar>
-- Data       : <31/01/2009>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <06/05/2010>
-- Versão     : <2010.05.10>
-- Description:	<Inclusão do paramentro Pago e ajuste no Atributo TipoNome e inclusão de Atributo PagoNome>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author:		<Rossatti,Junior>
-- Create date: <05/08/2010>
-- Description:	<Inclusão do Atributo OBRIGATÓRIO IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelLancamentosFinanceirosPorLoja]
-- Add the parameters for the stored procedure here
			     @IDEmpresa         INT
			    ,@DataInicial		DATETIME=NULL
			    ,@DataFinal			DATETIME=NULL
			    ,@Operacao			INT=NULL
			    ,@Tipo				INT=NULL
			    ,@Loja				VARCHAR(1000)  =NULL
			    ,@IDFinanceiroTipo  INT =NULL
				,@Pago              VARCHAR(1) = NULL
				,@Filosofica        VARCHAR(1) = NULL
			    
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT
		 fn.IDEmpresa
		,fn.IDLoja		 
		,fn.Operacao
		,fn.DataInclusao
		,fn.IDFinanceiroTipo
		,fn.Ativo
		,fn.Observacao
		,fn.Tipo
		,fn.Pago
		,ft.Nome AS FinanceiroTipoNome
		,lo.nome AS LojaNome
		,CASE WHEN fn.[Operacao]=0 THEN ValorTotal ELSE 0 END AS ValorDebito
		,CASE WHEN fn.[Operacao]=1 THEN ValorTotal ELSE 0 END AS ValorCredito
		,CASE fn.[Tipo]  
		    when 0 then 'Taxa      ' 
		    when 1 then 'Peculio   ' 
		    when 2 then 'Parc.Div. '
		 END AS TipoNome
        ,case fn.Pago
		    --when NULL then 'Não'
		    when '0'  then 'Não'
		    when '1'  then 'Sim'
		              ELSE 'Não'
		end as PagoNome
		
	FROM [dbo].[Financeiro] AS fn
	LEFT OUTER JOIN FinanceiroTipo  AS ft ON (ft.IDFinanceiroTipo=fn.IDFinanceiroTipo)
	LEFT OUTER JOIN Loja            AS lo ON (lo.IDLoja=fn.IDLoja)
	WHERE	
		(fn.IDEmpresa = @IDEmpresa)
	AND (fn.Ativo	= 0)	
    AND (lo.Filosofica = @Filosofica)	
	AND ((@DataInicial IS NULL)			OR	(fn.DataInclusao   >= @DataInicial))
	AND ((@DataFinal IS NULL)			OR	(fn.DataInclusao   <= @DataFinal))
	AND	((@Operacao  IS NULL)			OR	(fn.Operacao	    = @Operacao))
	AND ((@Tipo IS NULL)				OR  (fn.Tipo		    = @Tipo))
    AND ((@Pago IS NULL)		        OR  (fn.Pago	        = @Pago))
    AND ((@IDFinanceiroTipo IS NULL )   OR  (fn.IDFinanceiroTipo=@IDFinanceiroTipo))
	AND ((@Loja IS NULL)             	OR 
	     (CHARINDEX('|'+CONVERT(varchar(10),fn.IDLoja)+'|',@Loja)>0 ) )      	
	AND ((@IDFinanceiroTipo IS NULL)   	OR 
		(CHARINDEX('|'+CONVERT(varchar(10),fn.IDFinanceiroTipo)+'|',@IDFinanceiroTipo)>0 ) )      	

	ORDER BY fn.IDEmpresa,fn.IDLoja,fn.dataInclusao,fn.Tipo,ft.Nome,fn.IDFinanceiroTipo
	
END
GO
/****** Object:  StoredProcedure [dbo].[RelContaLancamentos]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <27/11/2008>
-- Description:	<Selecionar Lançamentos Financeiros de uma Loja Empresa>
--
-- Author:		<Mario Rossatti>
-- Create date: <08/04/2010>
-- Description:	<Inclusão de Filtro por Tipo Financeiro>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <06/05/2010>
-- Versão     : <2010.05.10>
-- Description:	<Inclusão do Paramentro Pago e Atributo PagoNome>
--
-- Author:		<Rossatti,Junior>
-- Create date: <05/08/2010>
-- Description:	<Inclusão do Atributo OBRIGATÓRIO IDEmpresa>
--
-- Author:		<Rossatti,Junior>
-- Create date: <07/08/2010>
-- Description:	<Inclusão do Atributo IDPessoa>
--
-- Author:		<Rossatti,Junior>
-- Create date: <02/09/2010>
-- Description:	<Inclusão do Atributo TipoContas e TipoContasNome>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelContaLancamentos]
-- Add the parameters for the stored procedure here
                 @IDEmpresa        INT
			    ,@IDLoja           INT = NULL
			    ,@IDPessoa         INT = NULL
			    ,@DataInicial      DATETIME=NULL
			    ,@DataFinal	       DATETIME=NULL
			    ,@Operacao	       INT=NULL
			    ,@Tipo		       INT=null
			    ,@IDFinanceiroTipo INT=NULL	
				,@Pago             VARCHAR(1) = NULL
				,@TipoContas       INT=NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 fn.Operacao
		,fn.DataInclusao
		,fn.IDFinanceiroTipo
		,fn.Ativo
		,fn.Observacao
		,fn.Tipo
		,ft.Nome AS FinanceiroTipoNome
	    ,lo.Nome as LojaNome
        ,pe.Nome AS PessoaNome		
        ,pe.IDPessoa			    		
		,CASE WHEN fn.Operacao=0 THEN ValorTotal ELSE 0 END AS ValorDebito
		,CASE WHEN fn.Operacao=1 THEN ValorTotal ELSE 0 END AS ValorCredito
		,CASE fn.Tipo  
		    when 0 then 'Taxa      ' 
		    when 1 then 'Peculio   ' 
		    when 2 then 'Parc.Div. '
		 END AS TipoNome
        ,CASE fn.Pago
		    when '0'  then 'Não'
		    when '1'  then 'Sim'
		              ELSE 'Não'
		 END AS PagoNome
		,fn.TipoContas 
		,CASE WHEN fn.TipoContas=0  THEN 'Contas a Receber  ' ELSE 'Contas a Pagar' END AS TipoContasNome
		
	FROM [dbo].[Financeiro] AS fn
	LEFT OUTER JOIN FinanceiroTipo  AS ft ON (ft.IDFinanceiroTipo = fn.IDFinanceiroTipo)
	LEFT OUTER JOIN Loja            AS lo ON (lo.IDLoja   = fn.IDLoja)
	LEFT OUTER JOIN Pessoa			AS pe ON (pe.IDPessoa = fn.IDPessoa)
	
	WHERE	
	    (fn.IDEmpresa = @IDEmpresa) 
	AND	(fn.Ativo = 0)
	AND ((@IDLoja IS NULL)            OR (fn.IDLoja = @IDLoja))
	AND ((@DataInicial IS NULL)	      OR (fn.DataInclusao >= @DataInicial))
	AND ((@DataFinal IS NULL)	      OR (fn.DataInclusao <= @DataFinal))
	AND	((@Operacao  IS NULL)	      OR (fn.Operacao	    = @Operacao))
	AND ((@Tipo IS NULL)		      OR (fn.Tipo		    = @Tipo))
    AND ((@IDFinanceiroTipo IS NULL ) OR (fn.IDFinanceiroTipo=@IDFinanceiroTipo))
    AND ((@Pago IS NULL)		      OR (fn.Pago	        = @Pago))
	AND ((@IDPessoa IS NULL)		  OR (fn.IDPessoa		= @IDPessoa))
	AND ((@TipoContas IS NULL)		  OR (fn.TipoContas		= @TipoContas))
	  
	ORDER BY fn.dataInclusao,fn.IDFinanceiro,ft.Nome,fn.IDFinanceiroTipo
	
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroTipoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Atualizacao de dados na Tabela Cargo Nivel>

-- Author:		<Rossatti,Junior>
-- Modify date: <02/06/2009>
-- Description:	<Inclusão do Campo TipoQuitacao ( 0 - Parcial, 1 - Total )>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroTipoAlterar]
	-- Add the parameters for the stored procedure here
	@IDFinanceiroTipo INT,
	@Ativo varchar(1)=NULL,
	@Nome varchar(100)=NULL,
	@Tipo VARCHAR(1)=NULL,
	@Valor VARCHAR(18)=NULL,   
	@TipoQuitacao varchar(1)=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   IF @TipoQuitacao IS NULL
	BEGIN
		SET @TipoQuitacao='0' 	
	END 
      

	UPDATE [dbo].[FinanceiroTipo]
	   SET [Nome] = @Nome
		  ,[Ativo] = @Ativo
		  ,[Tipo] = @Tipo
		  ,[Valor] = @Valor
		  ,[TipoQuitacao]=@TipoQuitacao
	 WHERE IDFinanceiroTipo=@IDFinanceiroTipo
 
 END
GO
/****** Object:  UserDefinedFunction [dbo].[FinanceiroTipoRetornarProximoRegistro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================================================
-- Author:		<Rossatti Junior>
-- Create date: <05/07/2010>
-- Description:	<Retornar o Proximo Numero de Registro da Tabela FinanceiroTipo>
-- =============================================================================
CREATE FUNCTION [dbo].[FinanceiroTipoRetornarProximoRegistro] ()
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @PROXIMO int

	-- Add the T-SQL statements to compute the return value here
	SET @PROXIMO = (SELECT TOP 1 Codigo FROM FinanceiroTipo order BY [Codigo] DESC)
	
	SET @proximo = @PROXIMO+1
	-- Return the result of the function
	RETURN @PROXIMO

END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <11/09/2008>
-- Description:	<Selecionar Obreiros>
--
-- Author:		<Rossatti,Junior>
-- Create date: <22/04/2010>
-- Description:	<Inclusão do Atributo Pago>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/05/2010>
-- Description:	<Inclusão do Parametro Boleto>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <06/05/2010>
-- Versão     : <2010.05.10>
-- Description:	<Inclusão do Atributo Boleto e PagoNome>
--
-- Author:		<Rossatti,Junior>
-- Create date: <06/07/2010>
-- Description:	<Inclusão do Atributo IDFinanceiroPai>
--            : <usado em lancamentos de creditos para indicar o debito sendo pago.>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/08/2010>
-- Description:	<Alteração do Atributo IDLojaEmpresa para IDEmpresa  e IDEmpresa no Where>
--
-- Author:		<Rossatti,Junior>
-- Create date: <23/08/2010>
-- Description:	<Inclusão do Atributo TipoContas>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroSelecionar]
-- Add the parameters for the stored procedure here
                 @IDEmpresa         INT				 
                ,@TipoContas        INT	= NULL		    
				,@Ativo				VARCHAR(1) = NULL
			    ,@IDFinanceiro	    INT=NULL
				,@IDPessoa          INT=NULL 
			    ,@IDLoja		    INT=NULL
			    ,@IDFinanceiroTipo	INT=NULL
			    ,@IDFinanceiroForma INT=NULL
			    ,@IDObreiro			INT=null
			    ,@Pago              VARCHAR(1)=NULL
			    ,@Boleto            VARCHAR(50)=NULL
                ,@IDFinanceiroPai   INT = NULL
			    ,@DataInicial		DATETIME=NULL
			    ,@DataFinal			DATETIME=NULL
			    ,@Operacao			INT=NULL
			    ,@Tipo				INT=NULL
                
-- CORPO DA PROCEDURE
AS
BEGIN

	SELECT fn.IDFinanceiro
		  ,fn.IDEmpresa
		  ,fn.Operacao
		  ,fn.IDPessoa
		  ,fn.IDLoja
		  ,fn.DataInclusao
		  ,fn.IDFinanceiroTipo
		  ,fn.IDFinanceiroForma
		  ,fn.Quantidade
		  ,fn.ValorUnitario
		  ,fn.ValorTotal
		  ,fn.IDObreiro
		  ,fn.Ativo
		  ,fn.Pago
		  ,fn.Boleto
		  ,fn.Tipo
		  ,fn.observacao
		  ,fn.IDFinanceiroPai
		  ,ft.Nome AS FinanceiroTipoNome
		  ,ff.Nome AS FinanceiroFormaNome
		  ,pe.Nome AS PessoaNome
		  ,ob.Nome AS ObreiroNome
		  ,lo.Nome AS LojaNome
		  ,CASE WHEN fn.Operacao=0   THEN 'Débito  '           ELSE 'Crédito'        END AS OperacaoNome
		  ,CASE WHEN fn.pago='0'     THEN 'Em Aberto'          ELSE 'Pago     '      END AS PagoNome
		  ,CASE WHEN fn.TipoContas=0 THEN 'Contas à Receber  ' ELSE 'Contas a Pagar' END AS TipoContasNome
		  ,CASE fn.Tipo  
		    when 0 then 'Taxa      ' 
		    when 1 then 'Peculio   ' 
		    when 2 then 'Parc.Div. '
		   END AS TipoNome
		   
	FROM dbo.Financeiro AS fn
	LEFT OUTER JOIN FinanceiroTipo  AS ft ON (ft.IDFinanceiroTipo	= fn.IDFinanceiroTipo)
	LEFT OUTER JOIN FinanceiroForma AS ff ON (ff.IDFinanceiroForma	= fn.IDFinanceiroForma)
	LEFT OUTER JOIN Pessoa			AS pe ON (pe.IDPessoa			= fn.IDPessoa)
	LEFT OUTER JOIN Pessoa			AS ob ON (ob.IDPessoa			= fn.IDObreiro)
	LEFT OUTER JOIN Loja			AS lo ON (lo.IDLoja				= fn.IDLoja)
	
	WHERE (fn.IDEmpresa  = @IDEmpresa)
	  AND (fn.TipoContas = @TipoContas)
	  AND ((@Ativo IS NULL)			    OR (fn.Ativo		= @Ativo))	  
	  AND ((@IDFinanceiro IS NULL)      OR (fn.IDFinanceiro = @IDFinanceiro))
	  AND ((@IDPessoa IS NULL)		    OR (fn.IDPessoa		= @IDPessoa))
	  AND ((@IDLoja IS NULL)		    OR (fn.IDLoja		= @IDLoja))
	  AND ((@IDFinanceiroTipo  IS NULL) OR (fn.IDFinanceiroTipo=@IDFinanceiroTipo))
	  AND ((@IDFinanceiroForma IS NULL) OR (fn.IDFinanceiroForma=@IDFinanceiroForma))
	  AND ((@IDObreiro IS NULL)		    OR (fn.IDObreiro	= @IDObreiro))
	  AND ((@Pago IS NULL)		        OR (fn.Pago	= @Pago))
	  AND ((@Boleto IS NULL)		    OR (fn.Boleto= @Boleto))
	  AND ((@IDFinanceiroPai IS NULL)   OR (fn.IDFinanceiroPai= @IDFinanceiroPai))
   	  AND ((@DataInicial IS NULL)		OR (fn.DataInclusao   >= @DataInicial))
	  AND ((@DataFinal IS NULL)		    OR (fn.DataInclusao   <= @DataFinal))
  	  AND ((@Operacao  IS NULL)		    OR (fn.Operacao	    = @Operacao))
	  AND ((@Tipo IS NULL)			    OR (fn.Tipo		    = @Tipo))
	  
	ORDER BY fn.dataInclusao desc ,fn.IDPessoa,fn.IDLoja,fn.IDFinanceiro
	
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroSelecionarObreiro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <24/11/2008>
-- Description:	<Selecionar Lançamentos Financeiros de um Obreiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/05/2010>
-- Description:	<Inclusão do Atributo Pago e Boleto>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/08/2010>
-- Description:	<Alteração do Atributo IDLojaEmpresa para IDEmpresa e IDEmpresa no Where>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroSelecionarObreiro]
-- Add the parameters for the stored procedure here
				 @Ativo				INT=NULL
			    ,@IDPessoa		    INT=NULL
			    ,@IDEmpresa		    INT=NULL
			    ,@IDFinanceiroTipo	INT=NULL
			    ,@DataInicial		DATETIME=NULL
			    ,@DataFinal			DATETIME=NULL
			    ,@Operacao			INT=NULL
			    ,@IDFinanceiro		INT=NULL
			    ,@Tipo				INT=NULL
				,@Pago              VARCHAR(1) = NULL
				,@Boleto            varchar(50) = NULL			    
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 fn.IDFinanceiro
		,fn.IDEmpresa
		,fn.Operacao
		,fn.IDPessoa
		,fn.DataInclusao
		,fn.IDFinanceiroTipo
		,fn.IDFinanceiroForma
		,fn.Quantidade
		,fn.ValorUnitario
		,fn.ValorTotal
		,fn.Ativo
		,fn.Observacao
		,fn.Tipo
		,ft.Nome AS FinanceiroTipoNome
		,ff.Nome AS FinanceiroFormaNome
		,CASE WHEN fn.[Operacao]=0 THEN 'Débito' ELSE 'Crédito' END AS OperacaoNome
		,CASE WHEN fn.[Tipo]=0     THEN 'Taxa'   ELSE 'Peculio' END AS TipoNome
		,pe.Nome AS PessoaNome
		,lo.[Nome] AS LojaNome
	FROM [dbo].[Financeiro] AS fn
	LEFT OUTER JOIN FinanceiroTipo  AS ft ON (ft.IDFinanceiroTipo	= fn.IDFinanceiroTipo)
	LEFT OUTER JOIN FinanceiroForma AS ff ON (ff.IDFinanceiroForma	= fn.IDFinanceiroForma)
	LEFT OUTER JOIN Loja			AS lo ON (lo.IDLoja				= fn.IDEmpresa)
	LEFT OUTER JOIN Pessoa			AS pe ON (pe.IDPessoa			= fn.IDPessoa)
	
	WHERE (fn.IDEmpresa = @IDEmpresa)	
	AND	((@Ativo IS NULL)			 OR	(fn.Ativo		    = @Ativo))
	AND ((@IDPessoa IS NULL)		 OR	(fn.IDPessoa		= @IDPessoa))
	AND ((@IDFinanceiroTipo IS NULL) OR	(fn.IDFinanceiroTipo= @IDFinanceiroTipo))
	AND ((@DataInicial IS NULL)		 OR	(fn.DataInclusao   >= @DataInicial))
	AND ((@DataFinal IS NULL)		 OR	(fn.DataInclusao   <= @DataFinal))
	AND	((@Operacao  IS NULL)		 OR	(fn.Operacao	    = @Operacao))
	AND ((@IDFinanceiro IS NULL)	 OR	(fn.IDFinanceiro    = @IDFinanceiro))
	AND ((@Tipo IS NULL)			 OR	(fn.Tipo		    = @Tipo))
    AND ((@Pago IS NULL)		     OR (fn.Pago	= @Pago))
    AND ((@Boleto IS NULL)		     OR (fn.Boleto= @Boleto))

--	AND ((@IDFinanceiroForma IS NULL)	OR	(fn.IDFinanceiroForma=@IDFinanceiroForma))
	  
	ORDER BY fn.dataInclusao,fn.IDPessoa,fn.IDFinanceiro
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroSelecionarLojaEmpresa]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <22/11/2008>
-- Description:	<Selecionar Lançamentos Financeiros de uma Loja Empresa>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/05/2010>
-- Description:	<Inclusão do Atributo Pago e Boleto>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <06/05/2010>
-- Versão     : <2010.05.10>
-- Description:	<Inclusão do Atributo Boleto e PagoNome e ajuste no TipoNome>
--
-- Author:		<Rossatti,Junior>
-- Create date: <06/07/2010>
-- Description:	<Inclusão do Atributo IDFinanceiroPai>
--            : <usado em lancamentos de creditos para indicar o debito sendo pago.>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/08/2010>
-- Description:	<Alteração do Atributo IDLojaEmpresa para IDEmpresa e IDEmpresa no Where>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroSelecionarLojaEmpresa]
-- Add the parameters for the stored procedure here
				 @Ativo				INT
			    ,@IDEmpresa         INT
			    ,@IDLoja            INT=NULL
			    ,@IDPessoa          INT=NULL
			    ,@IDFinanceiroTipo	INT=NULL
			    ,@DataInicial		DATETIME=NULL
			    ,@DataFinal			DATETIME=NULL
			    ,@Operacao			INT=NULL
			    ,@IDFinanceiro		INT=NULL
			    ,@Tipo				INT=null
				,@Pago              VARCHAR(1) = NULL
				,@Boleto            varchar(50) = NULL
			    ,@IDFinanceiroPai   INT = NULL			    
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		fn.IDFinanceiro
		,fn.IDEmpresa
		,fn.Operacao
		,fn.IDLoja
		,fn.DataInclusao
		,fn.IDFinanceiroTipo
		,fn.IDFinanceiroForma
		,fn.Quantidade
		,fn.ValorUnitario
		,fn.ValorTotal
		,fn.IDObreiro
		,fn.Ativo
		,fn.Observacao
		,fn.Tipo
		,fn.[Pago]
		,fn.Boleto
        ,fn.IDFinanceiroPai		
		,ft.Nome AS FinanceiroTipoNome
		,ff.Nome AS FinanceiroFormaNome
		,ob.Nome AS ObreiroNome
		,lo.Nome AS LojaNome
        ,pe.Nome AS PessoaNome		
        ,pe.IDPessoa		
		,CASE WHEN fn.[Operacao]=0 
			THEN 'Débito ' 
			ELSE 'Crédito' 
		 END AS OperacaoNome
		,CASE fn.[Tipo]  
		    when 0 then 'Taxa      ' 
		    when 1 then 'Peculio   ' 
		    when 2 then 'Parc.Div. '
		 END AS TipoNome
        ,case fn.Pago
		    --when NULL then 'Não'
		    when '0'  then 'Não'
		    when '1'  then 'Sim'
		              ELSE 'Não'
		end as PagoNome
		
	FROM [dbo].[Financeiro] AS fn
	LEFT OUTER JOIN FinanceiroTipo  AS ft ON (ft.IDFinanceiroTipo	= fn.IDFinanceiroTipo)
	LEFT OUTER JOIN FinanceiroForma AS ff ON (ff.IDFinanceiroForma	= fn.IDFinanceiroForma)
	LEFT OUTER JOIN Pessoa			AS ob ON (ob.IDPessoa			= fn.IDObreiro)
	LEFT OUTER JOIN Loja			AS lo ON (lo.IDLoja				= fn.IDLoja)
	LEFT OUTER JOIN Pessoa			AS pe ON (pe.IDPessoa			= fn.IDPessoa)
	
	WHERE (fn.IDEmpresa   = @IDEmpresa)
	AND ((@Ativo IS NULL)			 OR	(fn.Ativo		    = @Ativo))	
	AND ((@IDLoja IS NULL)			 OR	(fn.IDLoja		    = @IDLoja))
	AND ((@IDFinanceiroTipo IS NULL) OR	(fn.IDFinanceiroTipo= @IDFinanceiroTipo))
	AND ((@DataInicial IS NULL)		 OR	(fn.DataInclusao   >= @DataInicial))
	AND ((@DataFinal IS NULL)		 OR	(fn.DataInclusao   <= @DataFinal))
	AND	((@Operacao  IS NULL)		 OR	(fn.Operacao	    = @Operacao))
	AND ((@IDFinanceiro IS NULL)	 OR	(fn.IDFinanceiro    = @IDFinanceiro))
	AND ((@Tipo IS NULL)			 OR	(fn.Tipo		    = @Tipo))
    AND ((@Pago IS NULL)		     OR (fn.Pago	        = @Pago))
    AND ((@Boleto IS NULL)		     OR (fn.Boleto          = @Boleto))
    AND ((@IDFinanceiroPai IS NULL)  OR (fn.IDFinanceiroPai=@IDFinanceiroPai))
	AND ((@IDPessoa IS NULL)			OR	(fn.IDPessoa		= @IDPessoa))
--	AND ((@IDFinanceiroForma IS NULL)	OR	(fn.IDFinanceiroForma=@IDFinanceiroForma))
--	AND ((@IDObreiro IS NULL)			OR	(fn.IDObreiro	= @IDObreiro))
	  
	ORDER BY fn.dataInclusao,fn.IDLoja,fn.IDFinanceiro
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroFormaIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <05/11/2008>
-- Description:	<Insercao de dados na Tabela de Formas de Pagamento>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <18/08/2010>
-- Versão     : <2010.08.18>
-- Description:	<Inclusão do Atributo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroFormaIncluir]
	 @IDEmpresa INT
	,@Ativo varchar(1)
	,@Nome varchar(100)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[FinanceiroForma]
			   (
			    IDEmpresa
			   ,Nome
			   ,Ativo
			   )
		 VALUES
			   (
			    @IDEmpresa
			   ,@Nome
			   ,@Ativo
			   )
			   
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroFormaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <05/11/2008>
-- Description:	<Selecionar as Formas de Pagamentos>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <06/05/2010>
-- Versão     : <2010.05.10>
-- Description:	<Inclusão do Atributo ID>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <18/08/2010>
-- Versão     : <2010.08.18>
-- Description:	<Inclusão do Atributo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroFormaSelecionar]
 @IDEmpresa         INT 
,@IDFinanceiroForma INT = NULL
,@Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	   ff.IDFinanceiroForma
	  ,ff.IDFinanceiroForma as ID 
      ,ff.Nome
      ,ff.Ativo
	FROM dbo.FinanceiroForma as ff
	WHERE (FF.IDEmpresa=@IDEmpresa)
	  AND ((@Ativo IS NULL)             OR (ff.Ativo = @Ativo))
	  AND ((@Nome IS NULL)              OR (ff.Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDFinanceiroForma IS NULL) OR (ff.IDFinanceiroForma =@IDFinanceiroForma))
	ORDER BY ff.Nome,ff.IDFinanceiroForma
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroFormaAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <05/11/2008>
-- Description:	<Atualizacao de dados na Tabela de Formas de Pagamento>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroFormaAlterar]
	-- Add the parameters for the stored procedure here
	@IDFinanceiroForma INT,
	@Ativo varchar(1),
	@Nome varchar(100)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[FinanceiroForma]
	   SET [Nome] = @Nome
		  ,[Ativo] = @Ativo
	 WHERE IDFinanceiroForma=@IDFinanceiroForma
	 
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Selecionar Empresas>
--
-- Author:		<Mario Rossatti>
-- Create date: <23/08/2010>
-- Versão     : <2010.08.24>
-- Description:	<Retirada dos Atributos da Empresa Detalhe>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaSelecionar]
-- Add the parameters for the stored procedure here
				 @Ativo	     	VARCHAR(1)=NULL
				,@ID            INT=NULL 
				,@IDEmpresa     INT=NULL 
	 			,@Nome		    varchar(100)=NULL
	 			,@NomeFantasia	varchar(100)=NULL
				
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	 P.ID
	        ,P.IDEmpresa
			,P.Nome
			,P.NomeFantasia
			,P.CPFCNPJ
			,P.RGIE
			,P.Natureza
			,P.EnderecoIDCidade
			,P.Endereco
			,P.EnderecoBairro
			,P.EnderecoCEP
			,P.Email			
			,P.NascimentoData	
			,P.Ativo	
            ,P.DataCadastro
			,C.Nome+' - '+e.Sigla AS CidadeNome
--            ,D.Mensagem1
--            ,D.Mensagem2
--            ,D.Recibo
--            ,D.Nota
--            ,D.Logo
            
	FROM Empresa AS P
--	    INNER JOIN EmpresaDetalhe D    ON (P.IDEmpresa = D.IDEmpresa )
		LEFT OUTER JOIN [Cidade]       AS C  ON (C.IDCidade = P.EnderecoIDCidade)
        LEFT OUTER JOIN [CidadeEstado] AS E  ON (E.[IDCidadeEstado]=C.[IDCidadeEstado])		
		
	WHERE ((@Ativo IS NULL)        OR (P.Ativo = @Ativo))
	  AND ((@IDEmpresa IS NULL)    OR (P.IDEmpresa = @IDEmpresa))
	  AND ((@Nome IS NULL)         OR (P.Nome LIKE '%'+@Nome+'%'))
	  AND ((@NomeFantasia IS NULL) OR (P.NomeFantasia LIKE '%'+@NomeFantasia+'%'))
	ORDER BY P.Nome,P.IDEmpresa
	
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	<Rossatti,Junior>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Alteracao de dados na Tabela Empresa>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaAlterar]
-- Add the parameters for the stored procedure here
				 @IDEmpresa INT 
				,@Ativo VARCHAR(1)= null	
				,@Nome  varchar(100) =NULL
				,@NomeFantasia  varchar(100) =NULL
				,@CPFCNPJ  varchar(20) =NULL
				,@RGIE  varchar(20) =NULL
				,@Natureza varchar(1) =NULL
				,@EnderecoIDCidade int =NULL
				,@Endereco varchar(100) =NULL
				,@EnderecoBairro varchar(100) =NULL
				,@EnderecoCEP varchar(12) =NULL
				,@Email varchar(100) =NULL
				,@NascimentoData datetime =NULL
				,@DataCadastro datetime =NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Empresa SET 
	     IDEmpresa=@IDEmpresa
		,Ativo=@Ativo
		,Nome=@Nome
		,NomeFantasia=@NomeFantasia
		,CPFCNPJ=@CPFCNPJ
		,RGIE=@RGIE
		,Natureza=@Natureza
		,EnderecoIDCidade=@EnderecoIDCidade
		,Endereco=@Endereco
		,EnderecoBairro=@EnderecoBairro
		,EnderecoCEP=@EnderecoCEP
		,Email=@Email
		,NascimentoData=@NascimentoData
		,DataCadastro=@DataCadastro

	WHERE IDEmpresa=@IDEmpresa
	           
END
GO
/****** Object:  UserDefinedFunction [dbo].[EmpresaRetornarProximoRegistro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <05/06/2010>
-- Description:	<Retornar o Proximo Numero de Empresa da Tabela Empresa>
-- =============================================
CREATE FUNCTION [dbo].[EmpresaRetornarProximoRegistro] ()
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @PROXIMO int

	-- Add the T-SQL statements to compute the return value here
	SET @PROXIMO = (SELECT TOP 1 IDEmpresa FROM Empresa order BY [IDEmpresa] DESC)
	
	SET @proximo = @PROXIMO+1
	-- Return the result of the function
	RETURN @PROXIMO

END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaTelefoneSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <30/08/2010>
-- Description:	<Selecionar os Telefones das Empresas>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaTelefoneSelecionar]
 @IDEmpresa INT 
,@Ativo VARCHAR(1)
,@Telefone VARCHAR(100) = null
,@Emergencia VARCHAR(1) = NULL
,@IDEmpresaTelefone INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	 
	     Tele.Ativo
		,Tele.Telefone
		,Tele.TipoTelefone
		,Tele.IDEmpresa
		,Tele.IDEmpresaTelefone
		,emp.Nome AS Nome
		,Tele.Emergencia
        ,CASE Tele.TipoTelefone	
		 WHEN 0 THEN 'Comercial  '			
		 WHEN 1 THEN 'Residencial'
         WHEN 2 THEN 'Fax        '
         WHEN 3 THEN 'Celular    '
		 END AS TipoTelefoneNome				        
		
	FROM EmpresaTelefone AS Tele
		LEFT OUTER JOIN Empresa  AS emp  ON (emp.IDEmpresa=Tele.IDEmpresa)	
	WHERE 
	      (Tele.IDEmpresa =@IDEmpresa)
	  AND (Tele.Ativo = @Ativo)
	  AND ((@Telefone IS NULL)  OR (Tele.Telefone LIKE '%'+@Telefone + '%'))	  
	  AND ((@IDEmpresaTelefone IS NULL) OR (Tele.IDEmpresaTelefone=@IDEmpresaTelefone))
	  
	ORDER BY Tele.Telefone,Tele.IDEmpresaTelefone
END
GO
/****** Object:  StoredProcedure [dbo].[CargoNivelSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <04/11/2008>
-- Description:	<Selecionar os Cargos Nivel>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao do Atributo Codigo e ID>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CargoNivelSelecionar]
 @Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
,@IDCargoNivel INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	       [IDCargoNivel]
	      ,[IDCargoNivel] AS ID
	      ,[IDCargoNivel] AS Codigo
		  ,[Nome]
		  ,[Ativo]
	FROM [dbo].[CargoNivel]
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDCargoNivel IS NULL)   OR ([IDCargoNivel] =@IDCargoNivel))
	ORDER BY Nome,IDCargoNivel
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoCargoNivel]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Selecionar os Cargos Nivel>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoCargoNivel]
 @Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
,@IDCargoNivel INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	       [IDCargoNivel] AS ID
	      ,[IDCargoNivel] AS Codigo 
		  ,[Nome]
		  ,[Ativo]
	FROM [dbo].[CargoNivel]
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDCargoNivel IS NULL)   OR ([IDCargoNivel] =@IDCargoNivel))
	ORDER BY Nome,IDCargoNivel
END
GO
/****** Object:  StoredProcedure [dbo].[CargoNivelIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Insercao de dados na Tabela Cago Nivel>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CargoNivelIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[CargoNivel]
           ([Nome]
           ,[Ativo])
    VALUES
           (@Nome
           ,@Ativo)
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[CargoNivelAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Atualizacao de dados na Tabela Cargo Nivel>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CargoNivelAlterar]
	-- Add the parameters for the stored procedure here
	@IDCargoNivel INT,
	@Ativo varchar(1),
	@Nome varchar(100)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[CargoNivel]
	   SET [Nome] = @Nome
		  ,[Ativo] = @Ativo
	WHERE IDCargoNivel=@IDCargoNivel
 
 END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroAlterarBoleto]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <06/05/2010>
-- Description:	<Criação da procedure de Alteração do Numero de Boleto>
--------------------------------------------------------------------------------------
create PROCEDURE [dbo].[FinanceiroAlterarBoleto]
	-- Add the parameters for the stored procedure here
     @IDFinanceiro INT
    ,@Boleto       varchar(50) = NULL			    
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @Boleto IS NULL
		BEGIN
			SET @Boleto = ''
		END

	UPDATE [dbo].[Financeiro]
	   SET Boleto = @Boleto
	 WHERE IDFinanceiro=@IDFinanceiro
	 
END
GO
/****** Object:  StoredProcedure [dbo].[RelLancamentosFinanceirosPorLojaSaldoAnterior]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <15/03/2009>
-- Description:	<Calcular o Saldo Alterior dos Lançamentos Financeiros 
--               de uma ou mais Lojas de uma Lojampresa>
--
-- Author     :	<Rossatti,Junior>
-- Create date: <06/05/2010>
-- Versão     : <2010.05.10>
-- Description:	<Inclusão do Atributo Boleto e PagoNome e ajuste no TipoNome>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author:		<Rossatti,Junior>
-- Create date: <05/08/2010>
-- Description:	<Inclusão do Atributo OBRIGATÓRIO IDEmpresa>
--
-- Author:		<Rossatti,Junior>
-- Create date: <07/09/2010>
-- Description:	<Alteração do Atributo IDPotencia p/ IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelLancamentosFinanceirosPorLojaSaldoAnterior]
-- Add the parameters for the stored procedure here
			     @IDEmpresa         INT
			    ,@DataInicial		DATETIME=NULL
			    ,@Operacao			INT=NULL
			    ,@Tipo				INT=NULL
			    ,@Loja				VARCHAR(1000)  =NULL
			    ,@IDFinanceiroTipo  INT =NULL
				,@Pago              VARCHAR(1) = NULL
				,@Filosofica        VARCHAR(1) = NULL				
			    
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT
		 lo.IDLoja
		,
			(
			SELECT SUM(fn.valorTotal)
			FROM dbo.Financeiro AS fn
			WHERE   (fn.IDEmpresa=@IDEmpresa)
			AND     (fn.Ativo	= 0)
			AND     (fn.IDLoja=lo.IDLoja) 
			AND     (fn.DataInclusao<@DataInicial)
			AND	    (fn.Operacao=1)
            AND    ((@Pago IS NULL) OR (fn.Pago = @Pago))			
			AND    ((@Tipo IS NULL)	OR (fn.Tipo = @Tipo))
			AND    ((@IDFinanceiroTipo IS NULL)
					OR 
					(CHARINDEX('|'+CONVERT(varchar(10),fn.IDFinanceiroTipo)+'|',@IDFinanceiroTipo)>0 ) 
					)      	
			)AS SALDOCREDITO
		,	
			(
			SELECT SUM(fn.valorTotal) 
			FROM dbo.Financeiro AS fn
			WHERE   (fn.IDEmpresa=@IDEmpresa)
			AND     (fn.Ativo	= 0)
			AND     (fn.IDLoja=lo.IDLoja) 
			AND     (fn.DataInclusao< @DataInicial)
			AND	    (fn.Operacao=0)
            AND    ((@Pago IS NULL) OR (fn.Pago = @Pago))			
			AND    ((@Tipo IS NULL)	OR (fn.Tipo = @Tipo))
			AND    ((@IDFinanceiroTipo IS NULL)   	
					 OR 
				    (CHARINDEX('|'+CONVERT(varchar(10),fn.IDFinanceiroTipo)+'|',@IDFinanceiroTipo)>0 ) 
				   )      	
			)AS SALDODEBITO
		 
	FROM dbo.Loja AS lo
	WHERE	
	      (lo.IDEmpresa  = @IDEmpresa)
	  AND (lo.Filosofica = @Filosofica)		 
	  AND ((@Loja IS NULL) OR (CHARINDEX('|'+CONVERT(varchar(10),lo.IDLoja)+'|',@Loja)>0 ) )    	     
    ORDER BY lo.IDLoja

END
GO
/****** Object:  UserDefinedFunction [dbo].[LOJA_SALDO_ANTERIOR]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <08/03/2009>
-- Description:	<Selecionar o Saldo Anterior de LançamentoFinanceiro de Lojas>
--
-- Author:		<Mario Rossatti>
-- Alteração  : <Alteração do parametros IDLojaEmpres p/ IDEmpresa>
-- Data       : <07/09/2010>
--------------------------------------------------------------------------------------
CREATE FUNCTION [dbo].[LOJA_SALDO_ANTERIOR] 
	(
	 @IDEmpresa     INT
	,@Loja				INT
    ,@DataInicial		DATETIME
	,@Tipo				INT
    ,@IDFinanceiroTipo  VARCHAR(1000)=NULL
	
	 )  RETURNS DECIMAL(18,2) AS
BEGIN
	DECLARE @SALDOANTERIOR DECIMAL(18,2)
	DECLARE @SALDOCREDITO DECIMAL(18,2)
	DECLARE @SALDODEBITO DECIMAL(18,2)
	
	SET @SALDOANTERIOR = 0
	SET @SALDOCREDITO  = 0 
	SET @SALDODEBITO   = 0
	
	SET @SALDOCREDITO = (
						SELECT SUM(fn.valorTotal) 
						FROM dbo.Financeiro AS fn
						WHERE  (fn.Ativo= 0)
						AND  (fn.IDEmpresa = @IDEmpresa)												
						AND  (fn.IDLoja= @Loja) 
						AND  (fn.DataInclusao< @DataInicial)
						AND	 (fn.Operacao=1)
						AND  (fn.Tipo = @Tipo)
						AND ((@IDFinanceiroTipo IS NULL)   	OR 
							 (CHARINDEX('|'+CONVERT(varchar(10),fn.IDFinanceiroTipo)+'|',@IDFinanceiroTipo)>0 ) 
							)      	
						)

	SET @SALDODEBITO = (
						SELECT SUM(fn.valorTotal) 
						FROM dbo.Financeiro AS fn
						WHERE  (fn.Ativo	= 0)
						AND  (fn.IDEmpresa = @IDEmpresa)												
						AND  (fn.IDLoja= @Loja) 
						AND  (fn.DataInclusao< @DataInicial)
						AND	 (fn.Operacao=0)
						AND  (fn.Tipo = @Tipo)
						AND ((@IDFinanceiroTipo IS NULL)   	OR 
							 (CHARINDEX('|'+CONVERT(varchar(10),fn.IDFinanceiroTipo)+'|',@IDFinanceiroTipo)>0 ) 
							)      	
						)
		
	SET @SALDOANTERIOR = @SALDOCREDITO-@SALDODEBITO	
	-- RETORNO
	RETURN(@SALDOANTERIOR)
END;
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <05/11/2008>
-- Description:	<Atualizacao de dados na Tabela Financeiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <22/04/2010>
-- Description:	<Inclusão do Atributo Pago>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/05/2010>
-- Description:	<Inclusão do Atributo Boleto>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/08/2010>
-- Description:	<Alteração do Atributo IDLojaEmpresa para IDEmpresa>
--
-- Author:		<Rossatti,Junior>
-- Create date: <23/08/2010>
-- Description:	<Retirada do IDEmpresa, na alteração não precisa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroAlterar]
	-- Add the parameters for the stored procedure here
     @IDFinanceiro INT
	,@Ativo varchar(1)
	,@Operacao INT
	,@IDPessoa  INT = NULL
	,@IDLoja  INT = NULL
	,@DataInclusao DATETIME = NULL
	,@IDFinanceiroTipo  INT = NULL
	,@IDFinanceiroForma INT = NULL
	,@Quantidade INT = 1
	,@ValorUnitario decimal(18,2)= 0
	,@ValorTotal decimal(18,2) = 0
	,@IDObreiro INT = NULL
	,@Observacao VARCHAR(200) = NULL
	,@Tipo INT=NULL
	,@Pago VARCHAR(1)=NULL
    ,@Boleto varchar(50) = NULL			    
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @PAGO IS NULL
	BEGIN
		SET @PAGO = '0'
	END

	IF @Boleto IS NULL
	BEGIN
		SET @Boleto = ''
	END

	UPDATE dbo.Financeiro
	   SET 
		   Operacao			= @Operacao
		  ,IDPessoa			= @IDPessoa
		  ,IDLoja			= @IDLoja
		  ,DataInclusao		= @DataInclusao
		  ,IDFinanceiroTipo	= @IDFinanceiroTipo
		  ,IDFinanceiroForma= @IDFinanceiroForma
		  ,Quantidade		= @Quantidade
		  ,ValorUnitario	= @ValorUnitario
		  ,ValorTotal		= @ValorTotal
		  ,IDObreiro		= @IDObreiro
		  ,Ativo			= @Ativo
		  ,Observacao		= @Observacao
		  ,Tipo				= @Tipo
		  ,Pago             = @Pago
		  ,Boleto           = @Boleto
	 WHERE IDFinanceiro=@IDFinanceiro
	 
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroPagar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <06/07/2010>
-- Description:	<Atualizacao do Atributo Pago>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroPagar]
	-- Add the parameters for the stored procedure here
     @IDFinanceiro INT	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[Financeiro]
	   SET [Pago] = '1'
	   	  ,[IDFinanceiroPai]=@IDFinanceiro

	 WHERE IDFinanceiro=@IDFinanceiro
	 
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaDetalheAlterarLogo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	<Rossatti,Junior>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Alteracao do Logo da Empresa>
--
-- Author:		<Mario Rossatti>
-- Create date: <23/08/2010>
-- Versão     : <2010.08.24>
-- Description:	<Alteração no nome do parametro de ID para IDEmpresa>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaDetalheAlterarLogo]
-- Add the parameters for the stored procedure here
				 @IDEmpresa INT 
				,@Logo IMAGE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE EmpresaDetalhe SET Logo=@Logo WHERE IDEmpresa=@IDEmpresa
	           
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaDetalheAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	<Rossatti,Junior>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Alteracao de dados da Tabela EmpresaDetalhe>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaDetalheAlterar]
-- Add the parameters for the stored procedure here
				 @IDEmpresa INT 
				,@Mensagem1 VARCHAR(250) = NULL
				,@Mensagem2 VARCHAR(250) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE EmpresaDetalhe SET 
	     Mensagem1=@Mensagem1
	    ,Mensagem2=@Mensagem2
	WHERE IDEmpresa=@IDEmpresa
	           
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaDetalheAlterarRecibo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	<Rossatti,Junior>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Alteracao Numero do Recibo>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaDetalheAlterarRecibo]
-- Add the parameters for the stored procedure here
				 @ID INT 
				,@Recibo INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE EmpresaDetalhe SET 
	     Recibo=@Recibo
	WHERE IDEmpresa=@ID
	           
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaAlterarRecibo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	<Rossatti,Junior>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Alteracao Numero do Recibo>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaAlterarRecibo]
-- Add the parameters for the stored procedure here
				 @ID INT 
				,@Recibo INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE EmpresaDetalhe SET 
	     Recibo=@Recibo
	WHERE IDEmpresa=@ID
	           
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaAlterarNota]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	<Rossatti,Junior>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Alteracao Numero da Nota>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaAlterarNota]
-- Add the parameters for the stored procedure here
				 @ID INT 
				,@Nota INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE EmpresaDetalhe SET 
	     Nota=@Nota
	WHERE IDEmpresa=@ID
	           
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaDetalheSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <23/08/2010>
-- Versão     : <2010.08.23>
-- Description:	<Seleção de dados de Detalhe das Empresas>
--
-- Author     :	<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaDetalheSelecionar]
			    @IDEmpresa INT
AS
BEGIN
	SELECT 
	   ed.IDEmpresaDetalhe
      ,ed.IDEmpresa
      ,ed.Mensagem1
      ,ed.Mensagem2
      ,pf.foto as Logo
	FROM dbo.EmpresaDetalhe AS ed
	LEFT OUTER JOIN PessoaFoto AS pf ON ((pf.IDEmpresa=ed.IDEmpresa) AND (pf.Ativo='0'))
	WHERE ed.IDEmpresa=@IDEmpresa	
	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaDadosIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <19/08/2008>
-- Description:	<Insercao de dados na Tabela PessoaDados>
--
-- Author:		<Rossatti,Junior>
-- Create date: <23/02/2009>
-- Description:	<Insercao do Atributo SangueTipo>
--
-- Author:		<Rossatti,Junior>
-- Create date: <12/03/2009>
-- Description:	<Insercao do Atributo Peculio>
--
-- Author:		<Rossatti,Junior>
-- Create date: <28/01/2010>
-- Description:	<Inclusao Trecho de Codigo para Valores DEFAULT>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/02/2010>
-- Description:	<Inclusao dos atributos de Transferencia>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/02/2010>
-- Description:	<Inclusao dos atributos de IDBoletim em todas as opçoes de registro>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaDadosIncluir]
-- Add the parameters for the stored procedure here
			@IDPessoa				INT
			,@IDPessoaProfissao		INT=NULL
			,@IDPessoaEstadoCivil	INT=NULL
			,@CasamentoData			DATETIME=NULL
			,@ObitoData				DATETIME=NULL
			,@ObitoAtestado			varchar(50)=NULL
			,@NascimentoIDCidade	INT=NULL
			,@LocalTrabalho			varchar(100)=NULL
			,@IniciacaoPlacet		varchar(20)=NULL
			,@IniciacaoData			DATETIME=NULL
			,@IniciacaoIDLoja		INT=NULL
			,@ElevacaoPlacet		varchar(20)=NULL
			,@ElevacaoData			DATETIME=NULL
			,@ElevacaoIDLoja		int=NULL
			,@ExaltacaoPlacet		varchar(20)=NULL
			,@ExaltacaoData			datetime=NULL
			,@ExaltacaoIDLoja		int=NULL
			,@FiliacaoPlacet		varchar(20)=NULL
			,@FiliacaoData			datetime=NULL
			,@FiliacaoIDloja		int=NULL
			,@RegularizacaoPlacet	varchar(20)=NULL
			,@RegularizacaoData		datetime=NULL
			,@RegularizacaoIDLoja	int=NULL
			,@RejeicaoPlacet		varchar(20)=NULL
			,@RejeicaoData			datetime=NULL
			,@RejeicaoIDLoja		int=NULL
			,@EliminacaoPlacet		varchar(20)=NULL
			,@EliminacaoData		datetime=NULL
			,@EliminacaoIDloja		int=NULL
			,@InstalacaoPlacet		varchar(20)=NULL
			,@InstalacaoData		datetime=NULL
			,@InstalacaoIDloja		int=NULL
			,@DesligamentoPlacet	varchar(20)=NULL
			,@DesligamentoData		datetime=NULL
			,@DesligamentoIDLoja	int=NULL
			,@DataDeInsercao		datetime=NULL
			,@GrausFilosoficos		varchar(20)=NULL
			,@Desistencia			varchar(1)=NULL
			,@SangueTipo			int=NULL
			,@Peculio				int=NULL	
			,@TransferenciaPlacet   INT=NULL
			,@TransferenciaData     datetime=NULL
			,@TransferenciaIDLojaOrigem  INT = NULL
			,@TransferenciaIDLojaDestino INT = NUll   
			,@IniciacaoIDBoletim      INT = NUll
			,@ElevacaoIDBoletim       INT = NUll
			,@ExaltacaoIDBoletim      INT = NUll
			,@FiliacaoIDBoletim       INT = NUll
			,@InstalacaoIDBoletim     INT = NUll
			,@RegularizacaoIDBoletim  INT = NUll
			,@RejeicaoIDBoletim       INT = NUll
			,@EliminacaoIDBoletim     INT = NUll
			,@DesligamentoIDBoletim   INT = NUll
			,@LicencaIDBoletim        INT = NUll
			,@TransferenciaIDBoletim  INT = NUll
			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

---- INICIO TRECHO DE CODIGO PARA VALORES DEFAULT
	
/*
	IF @ IS NULL
		BEGIN
			SET @ = 
		END
  --END-IF
*/	

	IF @TransferenciaPlacet IS NULL
	BEGIN
		SET @TransferenciaPlacet = 0
	END
	
	IF @TransferenciaIDLojaOrigem IS NULL
	BEGIN
		SET @TransferenciaIDLojaOrigem = 0
	END
	
	IF @TransferenciaIDLojaDestino IS NULL
	BEGIN
		SET @TransferenciaIDLojaDestino = 0
	END

	IF @IniciacaoIDBoletim IS NULL
	BEGIN
		SET @IniciacaoIDBoletim = 0
	END
	
	IF @ElevacaoIDBoletim IS NULL
	BEGIN
		SET @ElevacaoIDBoletim = 0
	END
	
	IF @ExaltacaoIDBoletim IS NULL
	BEGIN
		SET @ExaltacaoIDBoletim = 0
	END
	
	IF @FiliacaoIDBoletim IS NULL
	BEGIN
		SET @FiliacaoIDBoletim = 0
	END
	
	IF @InstalacaoIDBoletim IS NULL
	BEGIN
		SET @InstalacaoIDBoletim = 0
	END
	
	IF @RegularizacaoIDBoletim IS NULL
	BEGIN
		SET @RegularizacaoIDBoletim = 0
	END
	
	IF @RejeicaoIDBoletim IS NULL
	BEGIN
		SET @RejeicaoIDBoletim = 0
	END
	
	IF @EliminacaoIDBoletim IS NULL
	BEGIN
		SET @EliminacaoIDBoletim = 0
	END
	
	IF @DesligamentoIDBoletim IS NULL
	BEGIN
		SET @DesligamentoIDBoletim = 0
	END
	
	IF @LicencaIDBoletim IS NULL
	BEGIN
		SET @LicencaIDBoletim  = 0
	END
	
	IF @TransferenciaIDBoletim IS NULL
	BEGIN
		SET @TransferenciaIDBoletim = 0
	END

  
--- FIM DE TRECHO DE VALORES DEFAULT

INSERT INTO [dbo].[PessoaDados]
           ([IDPessoa]
           ,[IDPessoaProfissao]
           ,[IDPessoaEstadoCivil]
           ,[CasamentoData]
           ,[ObitoData]
           ,[ObitoAtestado]
           ,[NascimentoIDCidade]
           ,[LocalTrabalho]
           ,[IniciacaoPlacet]
           ,[IniciacaoData]
           ,[IniciacaoIDLoja]
           ,[ElevacaoPlacet]
           ,[ElevacaoData]
           ,[ElevacaoIDLoja]
           ,[ExaltacaoPlacet]
           ,[ExaltacaoData]
           ,[ExaltacaoIDLoja]
           ,[FiliacaoPlacet]
           ,[FiliacaoData]
           ,[FiliacaoIDloja]
           ,[RegularizacaoPlacet]
           ,[RegularizacaoData]
           ,[RegularizacaoIDLoja]
           ,[RejeicaoPlacet]
           ,[RejeicaoData]
           ,[RejeicaoIDLoja]
           ,[EliminacaoPlacet]
           ,[EliminacaoData]
           ,[EliminacaoIDloja]
           ,[InstalacaoPlacet]
           ,[InstalacaoData]
           ,[InstalacaoIDloja]
           ,[DesligamentoPlacet]
           ,[DesligamentoData]
           ,[DesligamentoIDLoja]
           ,[DataDeInsercao]
           ,[GrausFilosoficos]
           ,[Desistencia]
           ,[SangueTipo]
           ,[Peculio]
		   ,TransferenciaPlacet
		   ,TransferenciaData
		   ,TransferenciaIDLojaOrigem
		   ,TransferenciaIDLojaDestino
		   ,IniciacaoIDBoletim 
		   ,ElevacaoIDBoletim 
		   ,ExaltacaoIDBoletim 
		   ,FiliacaoIDBoletim 
		   ,InstalacaoIDBoletim
		   ,RegularizacaoIDBoletim 
		   ,RejeicaoIDBoletim 
		   ,EliminacaoIDBoletim 
		   ,DesligamentoIDBoletim 
		   ,LicencaIDBoletim 
		   ,TransferenciaIDBoletim 		              		   
           )
     VALUES
           (
            @IDPessoa
           ,@IDPessoaProfissao
           ,@IDPessoaEstadoCivil
           ,@CasamentoData
           ,@ObitoData
           ,@ObitoAtestado
           ,@NascimentoIDCidade
           ,@LocalTrabalho
           ,@IniciacaoPlacet
           ,@IniciacaoData
           ,@IniciacaoIDLoja
           ,@ElevacaoPlacet
           ,@ElevacaoData
           ,@ElevacaoIDLoja
           ,@ExaltacaoPlacet
           ,@ExaltacaoData
           ,@ExaltacaoIDLoja
           ,@FiliacaoPlacet
           ,@FiliacaoData
           ,@FiliacaoIDloja
           ,@RegularizacaoPlacet
           ,@RegularizacaoData
           ,@RegularizacaoIDLoja
           ,@RejeicaoPlacet
           ,@RejeicaoData
           ,@RejeicaoIDLoja
           ,@EliminacaoPlacet
           ,@EliminacaoData
           ,@EliminacaoIDloja
           ,@InstalacaoPlacet
           ,@InstalacaoData
           ,@InstalacaoIDloja
           ,@DesligamentoPlacet
           ,@DesligamentoData
           ,@DesligamentoIDLoja
           ,@DataDeInsercao
           ,@GrausFilosoficos
           ,@Desistencia           
           ,@SangueTipo
           ,@Peculio
		   ,@TransferenciaPlacet
		   ,@TransferenciaData
		   ,@TransferenciaIDLojaOrigem
		   ,@TransferenciaIDLojaDestino
		   ,@IniciacaoIDBoletim 
		   ,@ElevacaoIDBoletim 
		   ,@ExaltacaoIDBoletim 
		   ,@FiliacaoIDBoletim 
		   ,@InstalacaoIDBoletim
		   ,@RegularizacaoIDBoletim 
		   ,@RejeicaoIDBoletim 
		   ,@EliminacaoIDBoletim 
		   ,@DesligamentoIDBoletim 
		   ,@LicencaIDBoletim 
		   ,@TransferenciaIDBoletim 		              
           )
           
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaDadosAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <20/11/2008>
-- Description:	<Alteração de dados na Tabela PessoaDados tabelas com dados de >
--              <documentos do obreiro>.

-- Autor       : <Rossatti Junior>
-- Alterado em : <23/02/2009>
-- Description : <Insercao do Atributo SangueTipo>

-- Author:		<Rossatti,Junior>
-- Create date: <12/03/2009>
-- Description:	<Insercao do Atributo Peculio>

-- Author:		<Rossatti,Junior>
-- Create date: <09/11/2009>
-- Description:	<Insercao de comentario em varios campos, pois os mesmos só serão alterados
--               pela tela de registros >
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/02/2010>
-- Description:	<Inclusao dos atributos de Transferencia>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/02/2010>
-- Description:	<Inclusao dos atributos de IDBoletim em todas as opçoes de registro>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaDadosAlterar]
-- Add the parameters for the stored procedure here
             @IDPessoa				INT
            ,@IDPessoaProfissao		INT=NULL
            ,@IDPessoaEstadoCivil	INT=NULL
            ,@CasamentoData			DATETIME=NULL
            ,@ObitoData				DATETIME=NULL
            ,@ObitoAtestado			varchar(50)=NULL
            ,@NascimentoIDCidade		INT=NULL
            ,@LocalTrabalho			varchar(100)=NULL
            ,@IniciacaoPlacet		varchar(20)=NULL
            ,@IniciacaoData			DATETIME=NULL
            ,@IniciacaoIDLoja		INT=NULL
            ,@ElevacaoPlacet			varchar(20)=NULL
            ,@ElevacaoData			DATETIME=NULL
            ,@ElevacaoIDLoja			int=NULL
            ,@ExaltacaoPlacet		varchar(20)=NULL
            ,@ExaltacaoData			datetime=NULL
            ,@ExaltacaoIDLoja		int=NULL
            ,@FiliacaoPlacet			varchar(20)=NULL
            ,@FiliacaoData			datetime=NULL
            ,@FiliacaoIDloja			int=NULL
            ,@RegularizacaoPlacet	varchar(20)=NULL
            ,@RegularizacaoData		datetime=NULL
            ,@RegularizacaoIDLoja	int=NULL
            ,@RejeicaoPlacet			varchar(20)=NULL
            ,@RejeicaoData			datetime=NULL
            ,@RejeicaoIDLoja			int=NULL
            ,@EliminacaoPlacet		varchar(20)=NULL
            ,@EliminacaoData			datetime=NULL
            ,@EliminacaoIDloja		int=NULL
            ,@InstalacaoPlacet		varchar(20)=NULL
            ,@InstalacaoData			datetime=NULL
            ,@InstalacaoIDloja		int=NULL
            ,@DesligamentoPlacet		varchar(20)=NULL
            ,@DesligamentoData		datetime=NULL
            ,@DesligamentoIDLoja		int=NULL
            ,@DataDeInsercao			datetime=NULL
            ,@GrausFilosoficos		varchar(20)=NULL
            ,@Desistencia			varchar(1)=NULL
            ,@SangueTipo     		int=NULL
            ,@Peculio				int=NULL
/*
			,@TransferenciaPlacet   INT=NULL
			,@TransferenciaData     datetime=NULL
			,@TransferenciaIDLojaOrigem  INT = NULL
			,@TransferenciaIDLojaDestino INT = NUll   
			,@IniciacaoIDBoletim      INT = NUll
			,@ElevacaoIDBoletim       INT = NUll
			,@ExaltacaoIDBoletim      INT = NUll
			,@FiliacaoIDBoletim       INT = NUll
			,@InstalacaoIDBoletim     INT = NUll
			,@RegularizacaoIDBoletim  INT = NUll
			,@RejeicaoIDBoletim       INT = NUll
			,@EliminacaoIDBoletim     INT = NUll
			,@DesligamentoIDBoletim   INT = NUll
			,@LicencaIDBoletim        INT = NUll
			,@TransferenciaIDBoletim  INT = NUll
*/
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE [PessoaDados] SET 
            [IDPessoaProfissao]=@IDPessoaProfissao
           ,[IDPessoaEstadoCivil]=@IDPessoaEstadoCivil
           ,[CasamentoData]=@CasamentoData
           ,[ObitoData] =@ObitoData
           ,[ObitoAtestado] =@ObitoAtestado
           ,[NascimentoIDCidade] =@NascimentoIDCidade
           ,[LocalTrabalho] =@LocalTrabalho
           ,[DataDeInsercao] =@DataDeInsercao
           ,[GrausFilosoficos] =@GrausFilosoficos
           ,[Desistencia] =@Desistencia
           ,[SangueTipo]=@SangueTipo
           ,[Peculio]=@Peculio
           --,[IniciacaoPlacet] =@IniciacaoPlacet
           --,[IniciacaoData] =@IniciacaoData
           --,[IniciacaoIDLoja] =@IniciacaoIDLoja
           --,[ElevacaoPlacet] =@ElevacaoPlacet
           --,[ElevacaoData] =@ElevacaoData
           --,[ElevacaoIDLoja] =@ElevacaoIDLoja
           --,[ExaltacaoPlacet] =@ExaltacaoPlacet
           --,[ExaltacaoData] =@ExaltacaoData
           --,[ExaltacaoIDLoja] =@ExaltacaoIDLoja
           --,[FiliacaoPlacet] =@FiliacaoPlacet
           --,[FiliacaoData] =@FiliacaoData
           --,[FiliacaoIDloja] =@FiliacaoIDloja
           --,[RegularizacaoPlacet] =@RegularizacaoPlacet
           --,[RegularizacaoData] =@RegularizacaoData
           --,[RegularizacaoIDLoja] =@RegularizacaoIDLoja
           --,[RejeicaoPlacet] =@RejeicaoPlacet
           --,[RejeicaoData] =@RejeicaoData
           --,[RejeicaoIDLoja] =@RejeicaoIDLoja
           --,[EliminacaoPlacet] =@EliminacaoPlacet
           --,[EliminacaoData] =@EliminacaoData
           --,[EliminacaoIDloja] =@EliminacaoIDloja
           --,[InstalacaoPlacet] =@InstalacaoPlacet
           --,[InstalacaoData] =@InstalacaoData
           --,[InstalacaoIDloja] =@InstalacaoIDloja
           --,[DesligamentoPlacet] =@DesligamentoPlacet
           --,[DesligamentoData] =@DesligamentoData
           --,[DesligamentoIDLoja] =@DesligamentoIDLoja
			--,TransferenciaPlacet = @TransferenciaPlacet 
			--,TransferenciaData = @TransferenciaData   
			--,TransferenciaIDLojaOrigem = @TransferenciaIDLojaOrigem 
			--,TransferenciaIDLojaDestino = @TransferenciaIDLojaDestino
			--,IniciacaoIDBoletim=@IniciacaoIDBoletim
			--,ElevacaoIDBoletim=@ElevacaoIDBoletim
			--,ExaltacaoIDBoletim=@ExaltacaoIDBoletim
			--,FiliacaoIDBoletim=@FiliacaoIDBoletim
			--,InstalacaoIDBoletim=@InstalacaoIDBoletim
			--,RegularizacaoIDBoletim=@RegularizacaoIDBoletim
			--,RejeicaoIDBoletim=@RejeicaoIDBoletim
			--,EliminacaoIDBoletim=@EliminacaoIDBoletim
			--,DesligamentoIDBoletim=@DesligamentoIDBoletim
			--,LicencaIDBoletim=@LicencaIDBoletim
			--,TransferenciaIDBoletim=@TransferenciaIDBoletim
           
	FROM PessoaDados           
	WHERE IDPessoa=@IDPessoa
END
GO
/****** Object:  StoredProcedure [dbo].[RelLojaFilosoficaObreiros]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <24/11/2009>
-- Description:	<Relatório de Lojas Filosóficas e Seis Obereiros>
-- Filtros    : <Por Loja e\ou por GrauFilosofico
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelLojaFilosoficaObreiros]
-- Add the parameters for the stored procedure here
			     @IDLoja	     INT=NULL
                ,@GrauFilosofico INT=NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		   PD.[IDPessoa]
		  ,PD.[IDLojaFilosofica] 
		  ,pd.[GrausFilosoficos]
		  ,pe.[NascimentoData]
		  ,pd.[IniciacaoData]
		  ,PE.[Nome]  AS PessoaNome
          ,CASE WHEN PD.IDLojaFilosofica IS NOT NULL 
				THEN CAST(LF.Codigo  AS VARCHAR(5))+' - '+LF.Nome
				ELSE '' 
           END AS LojaFilosoficaNome
	  FROM PessoaDados AS PD	  
      LEFT OUTER JOIN [Pessoa] AS PE  ON (PE.[IDPessoa]=PD.[IDPessoa])
      LEFT OUTER JOIN [Loja]   AS LF  ON (LF.IDLoja=PD.IDLojaFilosofica)
     
	WHERE (LF.Ativo = '0')
	  AND (LF.Filosofica = '1')
	  AND (PE.Ativo = '0')
	  AND ((@IDLoja IS NULL)         OR (PD.[IDLojaFilosofica] = @IDLoja))
	  AND ((@GrauFilosofico IS NULL) OR (PD.[GrausFilosoficos] = @GrauFilosofico))
  
	ORDER BY LF.[Codigo],[PessoaNome] DESC
  
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaDadosSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <10/10/2008>
-- Description:	<Selecionar os Dados dos Obreiros>

-- Author:		<Rossatti,Junior>
-- Create date: <23/02/2009>
-- Description:	<Insercao do Atributo SangueTipo>

-- Author:		<Rossatti,Junior>
-- Create date: <12/03/2009>
-- Description:	<Insercao do Atributo Peculio>

-- Author:		<Rossatti,Junior>
-- Create date: <27/08/2009>
-- Description:	<Insercao dos Atributos de Nome de Loja para os Placet>

-- Author:		<Rossatti,Junior>
-- Create date: <01/09/2009>
-- Description:	<Insercao de case nos campos data para retornar zero qdo vazio ou nulo>
--               <Insercao campos string convertidos de campos datetime>

-- Author:		<Rossatti,Junior>
-- Create date: <03/09/2009>
-- Description:	<Revisão nos campos que retornan o nome da loja trazer tambem o codigo antigo>
--              
-- Author:		<Rossatti,Junior>
-- Create date: <09/11/2009>
-- Description:	<Revisão nos CodigoAntigo da Tabela Loja, substituido por Codigo>
--              
--              
-- Author:		<Rossatti,Junior>
-- Create date: <17/11/2009>
-- Description:	<Inclusão do Atributo IDLojaFilosofica e atributo LojaFilosoficaNome>
--              
-- Author:		<Rossatti,Junior>
-- Create date: <24/11/2009>
-- Description:	<Ajuste no Nome da Loja Filosofica>--              
--
-- Author:		<Rossatti,Junior>
-- Create date: <03/02/2010>
-- Description:	<Inclusão dos Atributos de Transferencia>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/02/2010>
-- Description:	<Inclusao dos atributos de IDBoletim em todas as opçoes de registro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <16/02/2010>
-- Description:	<Code Review para evitar o retorno de campos com valor NULL>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaDadosSelecionar] @IDPessoa  int

-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT P.[IDPessoaDados]
		  ,P.[IDPessoa]
		  ,CASE WHEN P.[IDPessoaProfissao]   IS NOT NULL  THEN P.[IDPessoaProfissao]    ELSE 0 END AS IDPessoaProfissao
		  ,CASE WHEN P.[IDPessoaEstadoCivil] IS NOT NULL  THEN P.[IDPessoaEstadoCivil]  ELSE 0 END AS IDPessoaEstadoCivil
          ,CASE WHEN P.[CasamentoData]>31/12/1899         THEN P.[CasamentoData]        ELSE 0 END AS CasamentoData						  		  
		  ,CASE WHEN P.[ObitoData]>31/12/1899             THEN P.[ObitoData]            ELSE 0 END AS ObitoData
		  ,CASE WHEN P.[NascimentoIDCidade] IS NOT NULL   THEN P.[NascimentoIDCidade]   ELSE 0 END AS NascimentoIDCidade
		  ,CASE WHEN P.IniciacaoIDBoletim  IS NOT NULL    THEN P.IniciacaoIDBoletim     ELSE 0 END AS IniciacaoIDBoletim
		  ,CASE WHEN P.[IniciacaoPlacet] IS NOT NULL      THEN P.[IniciacaoPlacet]      ELSE '0' END AS IniciacaoPlacet
		  ,CASE WHEN P.[IniciacaoData]>31/12/1899         THEN P.[IniciacaoData]        ELSE 0 END AS IniciacaoData		  
		  ,CASE WHEN P.[IniciacaoIDLoja] IS NOT NULL      THEN P.[IniciacaoIDLoja]      ELSE 0 END AS IniciacaoIDLoja
		  ,CASE WHEN P.[ElevacaoPlacet] IS NOT NULL       THEN P.[ElevacaoPlacet]       ELSE '0' END AS ElevacaoPlacet
		  ,CASE WHEN P.elevacaoIDBoletim IS NOT NULL      THEN p.elevacaoIDBoletim      ELSE 0 END AS elevacaoIDBoletim
		  ,CASE WHEN P.[ElevacaoData]>31/12/1899          THEN P.[ElevacaoData]         ELSE 0 END AS ElevacaoData
		  ,CASE WHEN P.[ElevacaoIDLoja] IS NOT NULL       THEN P.[ElevacaoIDLoja]       ELSE 0 END AS ElevacaoIDLoja
		  ,CASE WHEN p.exaltacaoIDBoletim IS NOT NULL     THEN P.exaltacaoIDBoletim     ELSE 0 END AS exaltacaoIDBoletim
		  ,CASE WHEN P.[ExaltacaoPlacet] IS NOT NULL      THEN P.[ExaltacaoPlacet]      ELSE '0' END AS ExaltacaoPlacet
		  ,CASE WHEN P.[ExaltacaoData]>31/12/1899         THEN P.[ExaltacaoData]        ELSE 0 END AS ExaltacaoData
		  ,CASE WHEN P.[ExaltacaoIDLoja] IS NOT NULL      THEN P.[ExaltacaoIDLoja]      ELSE 0 END AS ExaltacaoIDLoja
		  ,CASE WHEN P.FiliacaoIDBoletim IS NOT NULL      THEN p.FiliacaoIDBoletim      ELSE 0 END AS FiliacaoIDBoletim
		  ,CASE WHEN P.[FiliacaoPlacet] IS NOT NULL       THEN P.[FiliacaoPlacet]       ELSE '0' END AS FiliacaoPlacet
		  ,CASE WHEN P.[FiliacaoData]>31/12/1899          THEN P.[FiliacaoData]         ELSE 0 END AS FiliacaoData
		  ,CASE WHEN P.[FiliacaoIDloja] IS NOT NULL       THEN P.[FiliacaoIDloja]       ELSE 0 END AS FiliacaoIDloja
		  ,CASE WHEN P.RegularizacaoIDBoletim IS NOT NULL THEN P.RegularizacaoIDBoletim ELSE 0 END AS RegularizacaoIDBoletim
		  ,CASE WHEN P.[RegularizacaoPlacet] IS NOT NULL  THEN P.[RegularizacaoPlacet]  ELSE '0' END AS RegularizacaoPlacet
		  ,CASE WHEN P.[RegularizacaoData]>31/12/1899     THEN P.[RegularizacaoData]    ELSE 0 END AS RegularizacaoData
		  ,CASE WHEN P.[RegularizacaoIDLoja] IS NOT NULL  THEN P.[RegularizacaoIDLoja]  ELSE 0 END AS RegularizacaoIDLoja
		  ,CASE WHEN p.RejeicaoIDBoletim  IS NOT NULL     THEN p.RejeicaoIDBoletim      ELSE 0 END AS RejeicaoIDBoletim
		  ,CASE WHEN P.[RejeicaoPlacet] IS NOT NULL       THEN P.[RejeicaoPlacet]       ELSE '0' END AS RejeicaoPlacet
		  ,CASE WHEN P.[RejeicaoData]>31/12/1899          THEN P.[RejeicaoData]         ELSE 0 END AS RejeicaoData 
		  ,CASE WHEN P.[RejeicaoIDLoja]  IS NOT NULL      THEN P.[RejeicaoIDLoja]       ELSE 0 END AS RejeicaoIDLoja
		  ,CASE WHEN P.eliminacaoIDBoletim  IS NOT NULL   THEN p.eliminacaoIDBoletim    ELSE 0 END AS eliminacaoIDBoletim
		  ,CASE WHEN P.[EliminacaoPlacet]  IS NOT NULL    THEN P.[EliminacaoPlacet]     ELSE '0' END AS EliminacaoPlacet
		  ,CASE WHEN P.[EliminacaoData]>31/12/1899        THEN P.[EliminacaoData]       ELSE 0 END AS EliminacaoData
		  ,CASE WHEN P.[EliminacaoIDloja] IS NOT NULL     THEN P.[EliminacaoIDloja]     ELSE 0 END AS EliminacaoIDloja
		  ,CASE WHEN p.instalacaoIDBoletim  IS NOT NULL   THEN p.instalacaoIDBoletim    ELSE 0 END AS instalacaoIDBoletim
		  ,CASE WHEN P.[InstalacaoPlacet] IS NOT NULL     THEN P.[InstalacaoPlacet]     ELSE '0' END AS InstalacaoPlacet
		  ,CASE WHEN P.[InstalacaoData]>31/12/1899        THEN P.[InstalacaoData]       ELSE 0 END AS InstalacaoData
		  ,CASE WHEN P.[InstalacaoIDloja]  IS NOT NULL    THEN P.[InstalacaoIDloja]     ELSE 0 END AS InstalacaoIDloja
		  ,CASE WHEN p.desligamentoIDBoletim  IS NOT NULL THEN p.desligamentoIDBoletim  ELSE 0 END AS desligamentoIDBoletim
		  ,CASE WHEN P.[DesligamentoPlacet] IS NOT NULL   THEN P.[DesligamentoPlacet]   ELSE '0' END AS DesligamentoPlacet
		  ,CASE WHEN P.[DesligamentoData]>31/12/1899      THEN P.[DesligamentoData]     ELSE 0 END AS DesligamentoData
		  ,CASE WHEN P.[DesligamentoIDLoja] IS NOT NULL   THEN P.[DesligamentoIDLoja]   ELSE 0 END AS DesligamentoIDLoja
		  ,CASE WHEN P.[DataDeInsercao]>31/12/1899        THEN P.[DataDeInsercao]       ELSE 0 END AS DataDeInsercao
		  ,P.[ObitoAtestado]
		  ,P.[LocalTrabalho]
		  ,P.[GrausFilosoficos]
		  ,P.[Desistencia]
		  ,P.[SangueTipo]
		  ,P.[Peculio]
		  ,CASE when E.Sigla IS not NULL
		    THEN cast(c.Nome as  varchar(98))+' - '+ cast(e.Sigla as varchar(2))
		    ELSE c.Nome
		    END AS NascimentoCidadeNome
		  ,e.[Sigla]  AS NascimentoEstadoSigla
		  ,pf.[Nome]  AS PessoaProfissaoNome
            
          ,CASE WHEN P.IDLojaFilosofica IS NOT NULL 
				THEN CAST(LF.Codigo  AS VARCHAR(5))+' - '+LF.Nome
				ELSE '' 
             END AS LojaFilosoficaNome
          ,CASE WHEN p.TransferenciaPlacet IS NOT NULL THEN p.[TransferenciaPlacet] ELSE 0 END AS TransferenciaPlacet
          
		  ,CAST(ini.Codigo AS VARCHAR(5))+' - '+Ini.[Nome] AS IniciacaoLojaNome
		  ,CAST(ele.Codigo AS varchar(5))+' - '+Ele.[Nome] AS ElevacaoLojaNome
		  ,CAST(exa.Codigo AS varchar(5))+' - '+exa.[Nome] AS ExaltacaoLojaNome
		  ,CAST(fil.Codigo AS varchar(5))+' - '+fil.[Nome] AS FiliacaoLojaNome
		  ,CAST(reg.Codigo AS varchar(5))+' - '+Reg.[Nome] AS RegularizacaoLojaNome
		  ,CAST(rej.Codigo AS varchar(5))+' - '+Rej.[Nome] AS RejeicaoLojaNome
		  ,CAST(eli.Codigo AS varchar(5))+' - '+Eli.[Nome] AS EliminacaoLojaNome  
		  ,CAST(itl.Codigo AS varchar(5))+' - '+Itl.[Nome] AS InstalacaoLojaNome
		  ,CAST(dlg.Codigo AS varchar(5))+' - '+dlg.[Nome] AS DesligamentoLojaNome
		  ,CASE WHEN P.TransferenciaIDLojaOrigem IS NOT NULL
		        THEN CAST(TrLo.IDLoja AS VARCHAR(5))+' - '+TrLo.Nome
				ELSE '' 
             END AS TransferenciaLojaOrigemNome

		  ,CASE WHEN P.TransferenciaIDLojaDestino IS NOT NULL
		        THEN CAST(TrLd.IDLoja AS VARCHAR(5))+' - '+TrLd.Nome
				ELSE '' 
             END AS TransferenciaLojaDestinoNome
		  
          ,CASE WHEN     P.[CasamentoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[CasamentoData] ,103)    ELSE '' END AS CasamentoDataTxt						  		  
		  ,CASE WHEN         P.[ObitoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[ObitoData],103)         ELSE '' END AS ObitoDataTxt
		  ,CASE WHEN     P.[IniciacaoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[IniciacaoData],103)     ELSE '' END AS IniciacaoDataTxt		  
		  ,CASE WHEN      P.[ElevacaoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[ElevacaoData],103)      ELSE '' END AS ElevacaoDataTxt
		  ,CASE WHEN     P.[ExaltacaoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[ExaltacaoData],103)     ELSE '' END AS ExaltacaoDataTxt		  		  
		  ,CASE WHEN      P.[FiliacaoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[FiliacaoData],103)      ELSE '' END AS FiliacaoDataTxt
		  ,CASE WHEN P.[RegularizacaoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[RegularizacaoData],103) ELSE '' END AS RegularizacaoDataTxt
		  ,CASE WHEN      P.[RejeicaoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[RejeicaoData],103)      ELSE '' END AS RejeicaoDataTxt 
		  ,CASE WHEN    P.[EliminacaoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[EliminacaoData],103)    ELSE '' END AS EliminacaoDataTxt
		  ,CASE WHEN    P.[InstalacaoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[InstalacaoData],103)    ELSE '' END AS InstalacaoDataTxt
		  ,CASE WHEN  P.[DesligamentoData]>31/12/1899 THEN Convert(VARCHAR(10),P.[DesligamentoData],103)  ELSE '' END AS DesligamentoDataTxt
		  ,CASE WHEN    P.[DataDeInsercao]>31/12/1899 THEN Convert(VARCHAR(10),P.[DataDeInsercao],103)    ELSE '' END AS DataDeInsercaoTxt
          ,CASE WHEN     P.transferenciaData>31/12/1899 THEN Convert(VARCHAR(10),P.transferenciadata ,103)    ELSE '' END AS TransferenciaDataTxt						  		  
		  
	  FROM PessoaDados AS P	  
      LEFT OUTER JOIN [Cidade]          AS C   ON (C.IDCidade = P.NascimentoIDCidade)
      LEFT OUTER JOIN [CidadeEstado]    AS E   ON (E.[IDCidadeEstado]=C.[IDCidadeEstado])
      LEFT OUTER JOIN [PessoaProfissao] AS PF  ON (PF.[IDPessoaProfissao]=P.[IDPessoaProfissao])
      LEFT OUTER JOIN [Loja]            AS Ini ON (Ini.[IDLoja]=P.[IniciacaoIDLoja])
      LEFT OUTER JOIN [Loja]            AS Ele ON (Ele.[IDLoja]=P.[ElevacaoIDLoja])
      LEFT OUTER JOIN [Loja]            AS Exa ON (Exa.[IDLoja]=P.[ExaltacaoIDLoja])
      LEFT OUTER JOIN [Loja]            AS Fil ON (Fil.[IDLoja]=P.[FiliacaoIDloja])
      LEFT OUTER JOIN [Loja]            AS Reg ON (Reg.[IDLoja]=P.[RegularizacaoIDLoja])
      LEFT OUTER JOIN [Loja]            AS Rej ON (Rej.[IDLoja]=P.[RejeicaoIDLoja])
      LEFT OUTER JOIN [Loja]            AS Eli ON (Eli.[IDLoja]=P.[EliminacaoIDloja])
      LEFT OUTER JOIN [Loja]            AS Itl ON (Itl.[IDLoja]=P.[InstalacaoIDloja])
      LEFT OUTER JOIN [Loja]            AS Dlg ON (Dlg.[IDLoja]=P.[DesligamentoIDLoja])
      LEFT OUTER JOIN [Loja]            AS LF  ON (LF.IDLoja=P.IDLojaFilosofica)
      LEFT OUTER JOIN [Loja]            AS TrLO ON (TrLO.IDLoja=P.TransferenciaIDLojaOrigem)
      LEFT OUTER JOIN [Loja]            AS TrLD ON (TrLD.IDLoja=P.TransferenciaIDLojaDestino)
     
	  WHERE (IDPessoa = @IDPessoa)       
  
END
GO
/****** Object:  StoredProcedure [dbo].[RegistroFilAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/09/2009>
-- Description:	<Criação da Atuaização de dados na Tabela RegistroFilosofica>
--
-- Author:		<>
-- Create date: <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RegistroFilAlterar]
	-- Add the parameters for the stored procedure here
	@IDRegistro    INT,
	@Ativo         varchar(1),
    @Registro      INT,
    @DataRegistro  DATETIME=NULL,
    @IDPessoa      INT=NULL,
    @IDLoja        INT=NULL,
    @DataInicial   DATETIME=NULL,
    @DataFinal     DATETIME=NULL,
	@Pago          VARCHAR(1)='0',
    @Valor         NUMERIC(18,2)=0,
    @GrauFilosofico INT=NULL	

	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[RegistroFilosofica]
	   SET Registro      = @Registro
		  ,DataRegistro  = @DataRegistro
		  ,IDPessoa      = @IDPessoa
		  ,IDLoja        = @IDLoja
          ,DataInicial   = @DataInicial
          ,DataFinal     = @DataFinal
          ,Pago          = @Pago
          ,Valor         = @Valor
          ,GrauFilosofico = @GrauFilosofico
          ,Ativo         = @Ativo

	 WHERE IDRegistro   = @IDRegistro

	IF (@IDPessoa>0) AND (@GrauFilosofico is not null)
		BEGIN						
			UPDATE [dbo].PessoaDados 
            SET GrausFilosoficos=Convert(VARCHAR(10),@GRAUFILOSOFICO,103) 
              , IDLojaFilosofica=@IDLoja 
            WHERE [IDPessoa]=@IDPessoa
		END		
 -- END-IF

END
GO
/****** Object:  StoredProcedure [dbo].[RelObreirosAcima65Anos]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <04/10/2009>
-- Description:	<Selecionar os Obreiros COM MAIS de 65 Anos>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author:		<Mario Rossatti>
-- Alteração  : <Alteração do parametros IDLojaEmpresa p/ IDEmpresa>
-- Data       : <07/09/2010>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelObreirosAcima65Anos]
-- Add the parameters for the stored procedure here
			     @IDEmpresa  INT=NULL
			    ,@Loja       VARCHAR(100)= NULL
                ,@Filosofica VARCHAR(1) = NULL
			    
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT 
	 pes.IDPessoa
	,pes.Codigo 
	,pes.Nome
	,DATEDIFF(YEAR,NascimentoData,GETDATE() )AS Idade
    ,CASE WHEN pd.FiliacaoData>01/01/1900 THEN Convert(VARCHAR(10),pd.FiliacaoData ,103)  ELSE '' END AS FiliacaoDataTxt		  	
	,lo.Nome AS LojaNome
	,lo.Codigo AS LojaCodigo
	FROM Pessoa AS pes
	inner join loja as lo     on (lo.IDLoja  =pes.IDLoja)
	inner join PessoaDados pd on (pd.IDPessoa=pes.IDPessoa)

	 
	WHERE   (pes.ativo=0)	    
        AND (lo.Filosofica = @Filosofica)	  	
		AND (lo.IDEmpresa  = @IDEmpresa)	
	    AND (DATEDIFF(YEAR,NascimentoData,GETDATE())>64)
		AND ((@Loja IS NULL) OR (CHARINDEX('|'+CONVERT(varchar(10),pes.IDLoja)+'|',@Loja)>0 ) )      		  
	ORDER BY lo.Codigo,pes.Nome,pes.IDPessoa
	
END
GO
/****** Object:  StoredProcedure [dbo].[RelObreirosMestresInstalados]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <12/10/2009>
-- Description:	<Selecionar os Obreiros Mestres Instalados>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author:		<Mario Rossatti>
-- Alteração  : <Alteração do parametros IDLojaEmpres p/ IDEmpresa>
-- Data       : <07/09/2010>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelObreirosMestresInstalados]
			     @IDEmpresa   INT
			    ,@Loja        VARCHAR(100)= NULL
                ,@Filosofica  VARCHAR(1) = NULL			    
                
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT 
		 pes.Codigo AS PessoaCodigo
		,pes.Nome AS PessoaNome
		,pc.Ano
		,lo.Codigo AS LojaCodigo
		,lo.Nome AS LojaNome
	FROM PessoaCargo AS pc
		INNER JOIN adm AS ad ON (ad.idadm=1)
		INNER JOIN Pessoa AS pes ON ((pes.IDPessoa=pc.IDPessoa) AND (pes.[Ativo]='0'))
		INNER JOIN Loja AS lo ON (lo.IDLoja=pc.IDLoja)
		INNER JOIN PessoaDados AS pd ON (pd.IDPessoa=pc.IDPessoa)
	WHERE (pc.IDCargoTipo=ad.IDCargoTipoVeneravel)
	    AND (lo.Filosofica = @Filosofica)
		AND (lo.IDEmpresa=@IDEmpresa)
		AND ((@Loja IS NULL) OR (CHARINDEX('|'+CONVERT(varchar(10),pes.IDLoja)+'|',@Loja)>0 ) )	  
	
	ORDER BY lo.Nome,lo.IDLoja,pc.Ano DESC
END
GO
/****** Object:  StoredProcedure [dbo].[RelLojaAniversariantesIniciacao]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     : Mario Rossatti
-- Create date: 28/04/2010
-- Versão     : 2010.05.01
-- Description:	Selecionar os Obreiros Aniversariantes de Iniciação do Mes Informado
--
-- Author     : Mario Rossatti
-- Create date: 07/09/2010
-- Versão     : 2010.09.08
-- Description:	Alterar o parametros IDLojaEmpresa para IDEmpresaSelecionar os Obreiros Aniversariantes de Iniciação do Mes Informado
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelLojaAniversariantesIniciacao]
-- Add the parameters for the stored procedure here
			     @IDEmpresa INT
			    ,@Mes		INT
			    ,@Loja		VARCHAR(1000)  =NULL
			    
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	 pes.IDPessoa
	,DAY(pd.IniciacaoData) AS Dia
	,DATEDIFF(YEAR,pd.IniciacaoData,GETDATE() )AS Idade
	,pes.Nome
	,pes.Endereco
	,pes.EnderecoBairro
	,pes.EnderecoCEP
	,cid.Nome AS CidadeNome
	,pes.Email
	,lo.Nome AS LojaNome
	,lo.CodigoAntigo
	,pd.IniciacaoData
	FROM Pessoa AS pes
    LEFT OUTER JOIN PessoaDados AS pd  ON (pd.IDPessoa=pes.IDPessoa)
	LEFT OUTER join cidade      AS cid ON (cid.IDCidade=pes.EnderecoIDCidade)
	LEFT outer join loja        AS LO  on (lo.IDLoja=pes.IDLoja)

	WHERE   (pes.ativo=0)
		AND (lo.IDEmpresa = @IDEmpresa)
		AND (MONTH(pd.IniciacaoData)=@Mes)
        AND ((@Loja IS NULL) OR (CHARINDEX('|'+CONVERT(varchar(10),pes.IDLoja)+'|',@Loja)>0 ) )      	
	  
	ORDER BY lo.CodigoAntigo,pes.IDLoja,Dia,pes.Nome,pes.IDPessoa
	
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroTipoDEPARAIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 24/11/2008
-- DESCRICAO...: Inclusão de dados na Tabela FinanceiroTipoDEPARA
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroTipoDEPARAIncluir]
	-- Add the parameters for the stored procedure here
      @IDFinanceiroTipo  INT 
     ,@CODRECEITA INT=NULL
     ,@Codigo INT=NULL 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[FinanceiroTipoDEPARA]
           (
            [IDFinanceiroTipo]
           ,[CODRECEITA]
           ,[Codigo]
           )
     VALUES
           (      
			 @IDFinanceiroTipo  
			,@CODRECEITA
			,@Codigo
			)
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID	
END
GO
/****** Object:  StoredProcedure [dbo].[RelLojaNumeroDeObreiro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <03/02/20098>
-- Description:	<Selecionar as Lojas com Veneravel,Secretario,Tesoireiro e Numero de Obreiros
--               filtro Por Loja e por Regiao>
--
-- Autor      :	<Mario Rossatti>
-- Alterado em: <23/02/2009>
-- Descrição  :	<Inclusão do Telefone e Endereço do Veneravel>
--
-- Autor      :	<Mario Rossatti>
-- Alterado em: <23/04/2010>
-- Descrição  :	<CodeReview no Where de totalização de Obreiros>
--
-- Autor      :	<Mario Rossatti>
-- Alterado em: <28/04/2010>
-- Versão     : 2010.05.01
-- Descrição  :	<Inclusão do Atributo DiaDeReuniaoNome>
--
-- Autor      :	<Mario Rossatti>
-- Alterado em: <28/04/2010>
-- Versão     : 2010.07.22
-- Descrição  :	<Inclusão da condicaçõ no WHERE para excluir as filosoficas.>
--
-- Autor      :	<Mario Rossatti>
-- Alterado em: <28/04/2010>
-- Versão     : 2010.07.22
-- Descrição  :	<Inclusão da condicaçõ no WHERE para excluir as filosoficas.>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/09/2010>
-- Description:	<Insercao do Atributo IDEmpresa e alteração do Atributo IDLojaEmpresa
--            : para IDPotencia>
--
-- Author:		<Rossatti,Junior>
-- Create date: <07/09/2010>
-- Description:	<Alteração do Atributo IDLojaEmpresa para IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelLojaNumeroDeObreiro]
-- Add the parameters for the stored procedure here
			@IDEmpresa    INT,
			@IDLojaRegiao INT=NULL,
			@IDLoja		  INT=NULL,
			@IDCidade	  INT=NULL,
            @Filosofica   VARCHAR(1) = NULL
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT 
	 lo.IDLoja
	,lo.Nome 
	,ve.Nome AS VeneravelNome
	,ve.Endereco AS VeneravelEndereco
	,ve.EnderecoBairro AS VeneravelEnderecoBairro
	,ve.EnderecoCEP AS VeneravelCEP
	,vete.Telefone AS VeneravelTelefone
	,se.Nome AS SecretarioNome
	,te.Nome AS TesoureiroNome
	,lo.IDLojaRegiao
	,lr.Nome AS LojaRegiaoNome
	,lo.Endereco
	,lo.EnderecoBairro
	,lo.EnderecoComplemento
	,lo.DiaDeReuniao
	,lo.Cep
	,cd.Nome AS CidadeNome
	,(
	  SELECT COUNT(IDLoja) FROM pessoa AS pes 
	  WHERE (pes.IDLoja=lo.IDLoja) and (pes.ativo=0) 
	) as NumeroDeObreiros
	,CASE lo.DiaDeReuniao
		 WHEN 0 THEN 'Não Informado'
		 WHEN 1 THEN 'Domingo      '
		 WHEN 2 THEN 'Segunda-Feira'
		 WHEN 3 THEN 'Terça-Feira  '
		 WHEN 4 THEN 'Quarta-Feira '
		 WHEN 5 THEN 'Quinta-Feira '
		 WHEN 6 THEN 'Sexta-Feira  '
		 WHEN 7 THEN 'Sabado       '
	END AS DiaDeReuniaoNome
		 	 
	FROM loja AS lo
	LEFT OUTER JOIN Pessoa     AS ve   ON ( ve.IDPessoa=lo.IDPessoaVeneravel)
	LEFT OUTER JOIN Telefone   AS vete ON ((ve.IDPessoa=vete.IDPessoa) AND vete.TipoTelefone=0)
	LEFT OUTER JOIN Pessoa     AS se   ON (se.IDPessoa=lo.IDPessoaSecretario)
	LEFT OUTER JOIN Pessoa     AS te   ON (te.IDPessoa=lo.IDPessoaTesoureiro)
	LEFT OUTER JOIN Cidade     AS cd   ON (cd.IDCidade=lo.IDCidade)
	LEFT OUTER JOIN LojaRegiao AS lr   ON (lr.IDLojaRegiao=lo.IDLojaRegiao)
	WHERE
	     (lo.IDEmpresa=@IDEmpresa) 
	AND  (lo.ativo=0) 	
    AND  (lo.Filosofica = @Filosofica)
	AND ((@IDLojaRegiao IS null) OR (lo.IDLojaRegiao=@IDLojaRegiao))
	AND ((@IDLoja IS null)       OR (lo.IDLoja=@IDLoja))
	AND ((@IDCidade IS null)     OR (lo.IDCidade=@IDCidade))
	  
	ORDER BY lr.Nome,lo.IDLojaRegiao,lo.IDLoja
END
GO
/****** Object:  StoredProcedure [dbo].[LojaRegiaoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <01/12/2008>
-- Description:	<Atualizacao de dados na Tabela LojaRegiao>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaRegiaoAlterar]
	-- Add the parameters for the stored procedure here
	@IDLojaRegiao INT,
	@Ativo varchar(1),
	@Nome varchar(100)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE LojaRegiao SET
		Nome=@Nome,
		Ativo=@Ativo		
	WHERE IDLojaRegiao=@IDLojaRegiao
END
GO
/****** Object:  StoredProcedure [dbo].[LojaRegiaoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <01/12/2008>
-- Description:	<Selecionar as Regioes de Lojas>
--
-- Author:		<Rossatti,Junior>
-- Create date: <22/08/2010>
-- Description:	<Inclusão do Atributo IDEmrpesa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaRegiaoSelecionar]
 @IDEmpresa      INT
,@Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDLojaRegiao   INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	
	IF @Ativo IS NULL
	BEGIN
		SET @Ativo = '0'
	END

	SELECT 
	 IDEmpresa
	,IDLojaRegiao
	,IDLojaRegiao AS ID
	,IDLojaRegiao AS Codigo	
	,Nome
	,Ativo
	FROM LojaRegiao
	WHERE (IDEmpresa=@IDEmpresa)
	  AND ((@Ativo IS NULL)        OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)         OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDLojaRegiao IS NULL) OR ([IDLojaRegiao] =@IDLojaRegiao))
	ORDER BY Nome
END
GO
/****** Object:  StoredProcedure [dbo].[LojaRegiaoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <01/12/2008>
-- Description:	<Insercao de dados na Tabela LojaRegiao>
--
-- Author:		<Rossatti,Junior>
-- Create date: <22/08/2010>
-- Description:	<Inclusão do Atributo IDEmrpesa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaRegiaoIncluir]
	-- Add the parameters for the stored procedure here
	@IDEmpresa INT	,
	@Ativo varchar(1) ,
	@Nome varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO LojaRegiao (IDEmpresa,Ativo,Nome) values(@IDEmpresa,@Ativo,@Nome)
	
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoLojaRegiao]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <12/10/2009>
-- Description:	<Selecionar as Regioes de Loja>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoLojaRegiao]
 @Ativo          VARCHAR(1)   = NULL
,@Nome           VARCHAR(100) = NULL
,@IDLojaRegiao   INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 pot.[IDLojaRegiao] AS ID
		,pot.[IDLojaRegiao] AS Codigo
		,pot.[Nome]
        ,pot.[Ativo]        
	FROM [LojaRegiao] AS pot
	WHERE ((@Ativo IS NULL)          OR (pot.Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (pot.Nome LIKE '%'+@Nome + '%'))
	  AND ((@IDLojaRegiao IS NULL)   OR (pot.IDLojaRegiao = @IDLojaRegiao))
	ORDER BY pot.Nome,pot.IDLojaRegiao
END
GO
/****** Object:  StoredProcedure [dbo].[ConvenioIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <24/02/2009>
-- Description:	<Insercao de dados na Tabela Convenio>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ConvenioIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Convenio]
           ([Nome]
           ,[Ativo])
    VALUES
           (@Nome
           ,@Ativo)
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoConvenio]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <24/02/2009>
-- Description:	<Selecionar os Convenios>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoConvenio]
 @Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
,@IDConvenio INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 [IDConvenio] AS ID
		,[IDConvenio] AS Codigo
		,[Nome]
		,[Ativo]
	FROM [dbo].[Convenio]
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDConvenio IS NULL)   OR ([IDConvenio] =@IDConvenio))
	ORDER BY Nome,IDConvenio
END
GO
/****** Object:  StoredProcedure [dbo].[ConvenioSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <24/02/2009>
-- Description:	<Selecionar os Convenios>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao dos Atributos Codigo e ID>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ConvenioSelecionar]
 @Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
,@IDConvenio   INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	       [IDConvenio]
	      ,[IDConvenio] AS ID
	      ,[IDConvenio] AS Codigo
		  ,[Nome]
		  ,[Ativo]
	FROM [dbo].[Convenio]
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDConvenio IS NULL)   OR ([IDConvenio] =@IDConvenio))
	ORDER BY Nome,IDConvenio
END
GO
/****** Object:  StoredProcedure [dbo].[ConvenioAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <24/02/2009>
-- Description:	<Atualizacao de dados na Tabela de Convênio>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[ConvenioAlterar]
	-- Add the parameters for the stored procedure here
	@IDConvenio INT,
	@Ativo varchar(1),
	@Nome varchar(100)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[Convenio]
	   SET [Nome] = @Nome
		  ,[Ativo] = @Ativo
	WHERE IDConvenio=@IDConvenio
 
 END
GO
/****** Object:  StoredProcedure [dbo].[SelecionarCarteiraCunhada]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <24/04/2010>
-- Description:	<Selecionar Informações de Cunhadas para Emissão de Carteiras>
--
-- Author:		<Mario Rossatti>
-- Create date: <15/07/2010>
-- Description:	<Alteração dos Parametros coleção e IDPessoaFamilia, onde na clausula
--            :  where a comparacao era pelo atributo IDPessoaFamilia e agora será por
--            : IDPessoa(obreiro)>
-- Author:		<>
-- Create date: <00/00/0000>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecionarCarteiraCunhada]
				 @IDPessoaFamilia  INT=NULL 
				,@COLECAO   VARCHAR(1000)=NULL
AS
BEGIN

	SELECT	 chd.IDPessoaFamilia
	        ,pes.IDPessoa
	        ,Pes.Codigo AS Cadastro
			,Pes.Nome	AS ObreiroNome		
			,CASE WHEN chd.Nome IS NULL THEN '' ELSE chd.nome END AS CunhadaNome
			,CASE WHEN chd.DataNascimento IS NULL THEN '' ELSE Convert(VARCHAR(10),chd.DataNascimento,103) END AS CunhadaNascimento

		-- Foto 
		 ,CASE WHEN fo.Foto IS NULL  THEN '' ELSE fo.Foto END AS Fotografia
		-- LOJA ATUAL DO OBREIRO --
		 ,CASE WHEN l.nome IS NULL   THEN '' ELSE l.nome+' N.º '+CAST(l.Codigo AS VARCHAR(5)) END AS LojaAtual
		 ,CASE WHEN cl.nome  IS NULL THEN '' ELSE cl.nome+' - '+cel.sigla END AS LojaAtualCidade													
		-- Grao Mestre e Grande Secretario
		 ,CASE WHEN gm.Nome  IS NULL THEN '' ELSE gm.Nome  END AS GraoMestre
		 ,CASE WHEN sre.Nome IS NULL THEN '' ELSE sre.Nome END AS SecretarioRelacoesExteriores

	FROM Pessoa AS Pes
	inner JOIN PessoaFamilia AS chd ON 
	((chd.IDPessoa = pes.IDPessoa) AND (chd.Ativo='0') and (chd.IDPessoaGrauParentesco=3 and chd.sexo='1'))

	-- Loja atual
	LEFT OUTER JOIN Loja            AS L   ON (L.IDLoja = pes.IDLoja)
	LEFT OUTER JOIN Cidade          AS CL  ON (CL.IDCidade = l.IDCidade)
	LEFT OUTER JOIN CidadeEstado    AS CEL ON (CEL.IDCidadeEstado=CL.IDCidadeEstado)		
	-- foto do Familiar
	LEFT OUTER JOIN PessoaFoto AS fo ON 
	((fo.IDPessoa = pes.IDPessoa) AND (fo.Ativo='0') AND (fo.IDPessoaFamilia=chd.IDPessoaFamilia) )

	-- Potencia
	LEFT OUTER JOIN Adm          AS adm   ON (IDAdm=1)
	LEFT OUTER JOIN Cidade       AS pocid ON (pocid.[IDCidade]     = adm.IDCidade)
	LEFT OUTER JOIN CidadeEstado AS poest ON (poest.IDCidadeEstado = adm.IDCidadeEstado)
	LEFT OUTER JOIN Potencia     AS pot   ON (pot.IDPotencia=adm.IDLoja)
	LEFT OUTER JOIN Pessoa       AS gm    ON (gm.IDPessoa=pot.IDPessoaGraoMestre)
	LEFT OUTER JOIN Pessoa       AS sre   ON (sre.IDPessoa=pot.IDPessoaSecretario)

	WHERE (pes.Ativo = '0')
	  AND ((@IDPessoaFamilia IS NULL)  OR (chd.IDPessoa = @IDPessoaFamilia))
	  AND ((@Colecao  IS NULL)	OR (CHARINDEX('|'+CONVERT(varchar(10),chd.IDPessoa)+'|',@COLECAO)>0 ) )	  	  
--	  AND ((@IDPessoaFamilia IS NULL)  OR (chd.IDPessoaFamilia = @IDPessoaFamilia))
--	  AND ((@Colecao  IS NULL)	OR (CHARINDEX('|'+CONVERT(varchar(10),chd.IDPessoaFamilia)+'|',@COLECAO)>0 ) )	  	  
	ORDER BY chd.nome
	
END
GO
/****** Object:  StoredProcedure [dbo].[AdmAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <18/11/2008>
-- Description:	<Atualizacao de dados na Adm, Tabela de Parametrização do Sistema>
--
-- Author:		<Rossatti,Junior>
-- Create date: <03/02/2009>
-- Description:	<Inclusão dos Atributos IDCargoTipoVeneravel
--               ,IDCargoTipoSecreatario,IDCargoTipoOrador>

-- Author:		<Rossatti,Junior>
-- Create date: <18/07/2009>
-- Description:	<Inclusão dos Atributos IDPessoaTipoObreiro
--               ,IDPessoaTipoFornecedor>

-- Author:		<Rossatti,Junior>
-- Create date: <13/09/2009>
-- Description:	<Inclusão do Atributo Placet>
--
-- Author:		<Rossatti,Junior>
-- Create date: <05/11/2009>
-- Description:	<Inclusão do Atributo IDCenso,IDPessoaGrauTipoCandidato,IDPessoaGrauTipoObreiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <09/11/2009>
-- Description:	<Inclusão dos Atributos IDCenso, IDPessoaGrauTipoAP,IDPessoaGrauTipoCM>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[AdmAlterar]
	-- Add the parameters for the stored procedure here
	 @IDAdm					    INT
	,@IDCidadeContinente	    INT = NULL
	,@IDCidadePais			    INT = NULL
	,@IDCidadeEstado		    INT = NULL
	,@IDCidade				    INT = NULL
	,@Mercado				    varchar(1)	   
	,@IDLoja				    INT=NULL
	,@IDCargoTipoVeneravel      INT=NULL
	,@IDCargoTipoOrador         INT=NULL
	,@IDCargoTipoSecretario     INT=NULL
	,@IDPessoaTipoObreiro       INT=NULL
	,@IDPessoaTipoFornecedor    INT=NULL
	,@Placet                    INT=NULL
	,@IDCenso                   INT=NULL
	,@IDPessoaGrauTipoCandidato INT=NULL
	,@IDPessoaGrauTipoObreiro   INT=NULL
	,@IDPessoaGrauTipoAP        INT=NULL
	,@IDPessoaGrauTipoCM        INT=NULL
	,@IDCargoNivelVeneravel     INT=NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[Adm]
	   SET 
		 [IDCidadeContinente]=@IDCidadeContinente
		,[IDCidadePais]=@IDCidadePais
		,[IDCidadeEstado]=@IDCidadeEstado
		,[IDCidade]=@IDCidade
		,[Mercado]=@Mercado
		,[IDLoja]=@IDLoja
		,[IDCargoTipoVeneravel]=@IDCargoTipoVeneravel
		,[IDCargoTipoOrador]=@IDCargoTipoOrador     
		,[IDCargoTipoSecretario]=@IDCargoTipoSecretario		
		,[IDPessoaTipoObreiro]=@IDPessoaTipoObreiro
		,[IDPessoaTipoFornecedor]=@IDPessoaTipoFornecedor
		,[Placet]=@Placet
		,IDCenso=@IDCenso
        ,IDPessoaGrauTipoCandidato=@IDPessoaGrauTipoCandidato
        ,IDPessoaGrauTipoObreiro=@IDPessoaGrauTipoObreiro
        ,IDPessoaGrauTipoAP=@IDPessoaGrauTipoAP
        ,IDPessoaGrauTipoCM=@IDPessoaGrauTipoCM
		,IDCargoNivelVeneravel=@IDCargoNivelVeneravel
	WHERE [IDAdm]=@IDAdm
 
 END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioItensSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <11/01/2009>
-- Description:	<Selecionar os Itens de Patrimonio>

-- Author:		<Rossatti,Junior>
-- Modify date: <03/06/2009>
-- Description:	<Insercao do Campo situação do bem valores possiveis:
--		  		0 -	Bom, 1 - Regular, 2 - Inservível               >

-- Author:		<Rossatti,Junior>
-- Modify date: <22/07/2009>
-- Description:	<Comentar codigo que setava valor default para @Situacao
--              < Incluir opção de  filtro por: IDLotacao,IDPatrimonioItensTipo
--
-- Author:		<Rossatti,Junior>
-- Modify date: <27/07/2009>
-- Description:	< Incluir atributo ValorDeCompra.
--
-- Author     :	<Rossatti,Junior>
-- Modify date: <03/05/2010>
-- Versão     : <2010.05.01>
-- Description:	<Incluir atributo SituacaoNome, retirada de codigo sobre lojas>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioItensSelecionar]
 @Ativo             VARCHAR(1) = NULL
,@IDLoja            INT = NULL 
,@Nome              VARCHAR(100) = NULL
,@IDPatrimonioItens INT = NULL
,@Tombo             INT = NULL
,@Situacao          VARCHAR(1) = NULL
,@IDLotacao INT = NULL
,@IDPatrimonioItensTipo INT = NULL

-- CORPO DA PROCEDURE
AS
BEGIN

	SELECT 
	   pa.IDPatrimonioItens
      ,pa.Nome
      ,pa.Tombo
      ,pa.TomboData
      ,pa.TomboNota
      ,pa.IDLotacao
      ,pa.IDPatrimonioItensTipo
      ,pa.IDPessoaFabricante
      ,pa.IDPessoaFornecedor
      ,pa.ItemInservivelData
      ,pa.Ativo      
      ,pa.Situacao
      ,pl.Nome AS PatrimonioLotacaoNome
      ,tp.Nome AS PatrimonioItensTipoNome
--      ,pa.IDLoja      
--      ,lo.Nome AS LojaNome
      ,0  as IDLoja
      ,'' as LojaNome
      ,pa.ValorDeCompra
      ,CASE pa.situacao 
        WHEN NULL THEN '          '
        WHEN 0    THEN '       Bom'
	    WHEN 1    THEN '   Regular'
		WHEN 2    THEN 'Inservivel'
       END AS SituacaoNome
	FROM dbo.PatrimonioItens            AS pa
	LEFT OUTER JOIN PatrimonioLotacao   As pl ON (pl.IDPatrimonioLotacao   =pa.IDLotacao)
	LEFT OUTER JOIN PatrimonioItensTipo AS tp ON (tp.IDPatrimonioItensTipo =pa.IDPatrimonioItensTipo)
--	LEFT OUTER JOIN Loja                AS lo ON (lo.IDLoja                =pa.IDLoja)
	WHERE ((@Tombo IS NULL)                 OR (pa.Tombo      = @Tombo))
	  AND ((@Ativo IS NULL)                 OR (pa.Ativo      = @Ativo))
--	  AND ((@IDLoja  IS NULL)               OR (pa.IDLoja    = @IDLoja))
	  AND ((@Situacao IS NULL)              OR (pa.Situacao   = @Situacao))
	  AND ((@IDLotacao  IS NULL)            OR (pa.IDLotacao = @IDLotacao))
	  AND ((@IDPatrimonioItensTipo IS NULL) OR (pa.IDPatrimonioItensTipo= @IDPatrimonioItensTipo))
	  AND ((@IDPatrimonioItens IS NULL)     OR (pa.IDPatrimonioItens    = @IDPatrimonioItens))
	  AND ((@Nome IS NULL)                  OR (pa.Nome LIKE '%'+@Nome + '%'))	  
	  
	ORDER BY pa.Nome,pa.IDPatrimonioItens
END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioItensTipoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <11/01/2009>
-- Description:	<Atualizacao de dados na Tabela de Itens de Patrimonio>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioItensTipoAlterar]
	-- Add the parameters for the stored procedure here
	@IDPatrimonioItensTipo INT,
	@Ativo varchar(1),
	@Nome varchar(100)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[PatrimonioItensTipo]
	   SET [Nome] = @Nome
		  ,[Ativo] = @Ativo
	 WHERE IDPatrimonioItensTipo=@IDPatrimonioItensTipo
	 
END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioItensTipoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <11/01/2009>
-- Description:	<Insercao de dados na Tabela de Itens de Patrimonio de Pagamento>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioItensTipoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[PatrimonioItensTipo]
			   ([Nome]
			   ,[Ativo])
		 VALUES
			   (@Nome
			   ,@Ativo)
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioItensTipoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <11/01/2009>
-- Description:	<Selecionar os Tipos de Itens de Patrimonio>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioItensTipoSelecionar]
 @Ativo        VARCHAR(1) = NULL
,@Nome         VARCHAR(100) = NULL
,@IDPatrimonioItensTipo INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT [IDPatrimonioItensTipo]
      ,[Nome]
      ,[Ativo]
	FROM [dbo].[PatrimonioItensTipo]
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDPatrimonioItensTipo IS NULL)   OR ([IDPatrimonioItensTipo] =@IDPatrimonioItensTipo))
	ORDER BY Nome,IDPatrimonioItensTipo
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroDEPARAIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 26/03/2009
-- DESCRICAO...: Inclusão de dados na Tabela FinanceiroDEPARA
--
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 14/04/2010
-- DESCRICAO...: Inclusão do atributo Tipo
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroDEPARAIncluir]
	-- Add the parameters for the stored procedure here
      @IDFinanceiro  INT 
     ,@COD_LANC INT
     ,@TIPO INT = NULL	 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[FinanceiroDEPARA]
           (
            IDFinanceiro
           ,COD_LANC
           ,Tipo
           )
     VALUES
           (      
			 @IDFinanceiro  
			,@COD_LANC
			,@TIPO
			)
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaProfissaoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <09/08/2008>
-- Description:	<Selecionar os Profissaos de Pessoas>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao do Atributo Codigo e ID>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaProfissaoSelecionar]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPessoaProfissao   int = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 IDPessoaProfissao
		,[IDPessoaProfissao] AS ID
		,[IDPessoaProfissao] AS Codigo 
		,Nome
		,Ativo
		,NomeFemenino
		,NomeFemenino AS NomeFeminino
	FROM PessoaProfissao
	WHERE ((@Ativo IS NULL)             OR ([Ativo] = @Ativo))
	  AND ((@Nome IS NULL)              OR ([Nome] LIKE '%'+@Nome + '%'))
	  AND ((@IDPessoaProfissao IS NULL) OR ([IDPessoaProfissao] = @IDPessoaProfissao))
	ORDER BY [Nome],[IDPessoaProfissao]
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaProfissaoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 09/08/2008
-- DESCRICAO...: Inclusão de dados na Tabela PessoaProfissao
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaProfissaoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100),
	@NomeFemenino varchar(100)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PessoaProfissao (Ativo ,Nome,NomeFemenino) 
	                     values(@Ativo,@Nome,@NomeFemenino)

	DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS id	                     
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaProfissaoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 09/08/2008
-- DESCRICAO...: Atualizacao de dados na Tabela PessoaProfissao
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaProfissaoAlterar]
	-- Add the parameters for the stored procedure here
	@IDPessoaProfissao INT = NULL,
	@Ativo varchar(1),
	@Nome varchar(100),
	@NomeFemenino VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE PessoaProfissao SET
		Nome=@Nome,
		Ativo=@Ativo,
		NomeFemenino=@NomeFemenino
	WHERE IDPessoaProfissao=@IDPessoaProfissao
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoPessoaProfissao]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <09/08/2008>
-- Description:	<Procedure para Selecionar as PROFISSOES  para a funcionalidade de Selecao>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoPessoaProfissao]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPessoaProfissao   int = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 IDPessoaProfissao AS ID
		,IDPessoaProfissao AS Codigo
		,Nome
		,Ativo
		,NomeFemenino
	FROM PessoaProfissao
	WHERE ((@Ativo IS NULL)             OR ([Ativo] = @Ativo))
	  AND ((@Nome IS NULL)              OR ([Nome] LIKE '%'+@Nome + '%'))
	  AND ((@IDPessoaProfissao IS NULL) OR ([IDPessoaProfissao] = @IDPessoaProfissao))
	ORDER BY [Nome],[IDPessoaProfissao]
END
GO
/****** Object:  UserDefinedFunction [dbo].[RegistroFilosoficaRetornarProximoRegistro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <17/09/2009>
-- Description:	<Retornar o Proximo Numero de Registro da Tabela RegistroFilosofica>
--
-- Author:		<>
-- Create date: <>
-- Description:	<>
--
-- =============================================
CREATE FUNCTION [dbo].[RegistroFilosoficaRetornarProximoRegistro] ()
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @PROXIMO int
	

	-- Add the T-SQL statements to compute the return value here
--	SELECT @PROXIMO = TOP 1 Registro FROM Registro order BY [Registro] DESC
	SET @PROXIMO = (SELECT TOP 1 Registro FROM RegistroFilosofica order BY [Registro] DESC)
	
	SET @PROXIMO = @PROXIMO+1

	IF (@PROXIMO IS NULL) OR (@PROXIMO=0)
		BEGIN
			SET @PROXIMO = 1
		END

	-- Return the result of the function
	RETURN @PROXIMO

END
GO
/****** Object:  StoredProcedure [dbo].[RegistroFilSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <12/11/2009>
-- Description:	<Selecionar Registros da Tabela RegistroFilosofica>
--
-- Autor: <Mario Rossatti>
-- Data : 16/11/2009
-- Descr: Inclusão do atributo LojaFilosoficaNome
--
--
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RegistroFilSelecionar]
-- Add the parameters for the stored procedure here
				 @Ativo		   VARCHAR(1)=NULL
				,@IDRegistro   INT=NULL
				,@Registro	   INT=NULL 
				,@IDPessoa     INT=NULL 
			    ,@IDLoja	   INT=NULL
				,@DataRegistro DATETIME=null
                ,@GrauFilosofico INT=NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT R.[IDRegistro]
		  ,R.[Registro]
		  ,R.[DataRegistro]
		  ,R.[IDPessoa]
		  ,R.[IDLoja]
		  ,R.[Ativo]
          ,R.[DataInicial]
          ,R.[DataFinal]
          ,R.Pago
          ,R.Valor
          ,R.GrauFilosofico
		  ,pes.Nome AS PessoaNome
		  ,L.nome AS LojaNome
		  ,LF.Nome as LojaFilosoficaNome
		  ,CASE WHEN R.[DataRegistro]>01/01/1900 THEN Convert(VARCHAR(10),R.[DataRegistro] ,103)  ELSE '' END AS DataRegistroTxt		  
		  ,CASE WHEN R.[DataInicial]>01/01/1900  THEN Convert(VARCHAR(10),R.[DataInicial] ,103)   ELSE '' END AS DataInicialTxt		  
		  ,CASE WHEN R.[DataFinal]>01/01/1900    THEN Convert(VARCHAR(10),R.[DataFinal] ,103)     ELSE '' END AS DataFinalTxt
          ,CASE WHEN R.Pago='0' THEN 'Sim' ELSE 'Não' END AS PagoTxt
		 
	FROM [dbo].[RegistroFilosofica] AS R
		LEFT OUTER JOIN [Pessoa] AS pes ON (pes.IDPessoa= R.IDPessoa)
		LEFT OUTER JOIN [Loja]   AS L   ON (L.IDLoja    = pes.IDLoja)
		LEFT OUTER JOIN [Loja]   AS LF  ON (LF.IDLoja   = R.IDLoja)
	
	WHERE ((@Ativo IS NULL)      OR (R.Ativo    = @Ativo))
	  AND ((@IDRegistro IS NULL) OR (R.IDRegistro = @IDRegistro))
	  AND ((@Registro IS NULL)   OR (R.Registro = @Registro))
	  AND ((@IDPessoa IS NULL)   OR (R.IDPessoa = @IDPessoa))
	  AND ((@IDLoja IS NULL)     OR (R.IDLoja   = @IDLoja))
	  AND ((@DataRegistro IS NULL) OR (R.DataRegistro = @DataRegistro))
	  AND ((@GrauFilosofico IS NULL) OR (R.GrauFilosofico = @GrauFilosofico))
  
	ORDER BY R.Registro DESC
  
END
GO
/****** Object:  StoredProcedure [dbo].[AgendaAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <09/08/2010>
-- Description:	<Atualizacao de dados na Tabela Agenda>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[AgendaAlterar]
	-- Add the parameters for the stored procedure here
	@IDAgenda INT ,
	@Ativo VARCHAR(1) = NULL,
	@Titulo VARCHAR(100) = NULL,
	@Texto VARCHAR(2000) = NULL,
	@DataInicio DATETIME = NULL,
	@DataFim DATETIME = NULL,
	@Divulgacao INT = NULL
	
AS
BEGIN
    -- Insert statements for procedure here
	SET NOCOUNT ON;

	IF @Ativo IS NULL
	BEGIN
		SET @Ativo = '0'
	END

	IF @Divulgacao IS NULL
	BEGIN
		SET @Divulgacao = 0
	END

	UPDATE [dbo].[Agenda]
	   SET 
		   Titulo = @Titulo
		  ,Texto = @Texto
		  ,Ativo = @Ativo
		  ,DataInicio = @DataInicio
		  ,DataFim = @DataFim
		  ,Divulgacao = @Divulgacao
	 WHERE IDAgenda=@IDAgenda


END
GO
/****** Object:  StoredProcedure [dbo].[AgendaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <09/08/2010>
-- Description:	<Selecionar Agenda>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[AgendaSelecionar]
	@IDEmpresa INT ,
	@IDAgenda INT = NULL,
	@Ativo VARCHAR(1) = NULL,
	@Titulo VARCHAR(100) = NULL,
	@DataInicio DATETIME = NULL,
	@DataFim DATETIME = NULL,
	@Divulgacao INT = NULL
	
-- CORPO DA PROCEDURE
AS
BEGIN

SELECT aa.IDAgenda
      ,aa.IDAgenda as ID
      ,aa.IDEmpresa
      ,aa.Titulo
      ,aa.Texto
      ,aa.Ativo
      ,aa.DataInicio
      ,aa.DataFim
      ,aa.Divulgacao
  FROM [dbo].[Agenda] as aa
  WHERE  (@IDEmpresa = aa.IDEmpresa)
	AND ((@Ativo IS NULL)      OR (aa.Ativo   =@Ativo) )
	AND ((@IDAgenda IS NULL)   OR (aa.IDAgenda=@IDAgenda) )	  
	AND ((@Divulgacao IS NULL) OR (aa.Divulgacao=@Divulgacao) )
	AND ((@DataInicio IS NULL) OR (aa.DataInicio>=@DataInicio) )
	AND ((@DataFim    IS NULL) OR (aa.DataFim<=@DataFim) )	  
    ORDER BY aa.DataInicio DESC

END
GO
/****** Object:  StoredProcedure [dbo].[AgendaIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <09/08/2010>
-- Description:	<Insercao de Agenda>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[AgendaIncluir]
-- Add the parameters for the stored procedure here
    @IDEmpresa INT ,
	@Ativo VARCHAR(1)= NULL,
	@Titulo VARCHAR(100) = NULL,
	@Texto VARCHAR(2000) = NULL,
	@DataInicio DATETIME = NULL,
	@DataFim DATETIME = NULL,
	@Divulgacao INT = NULL
AS
BEGIN

	IF @Ativo IS NULL
	BEGIN
		SET @Ativo = '0'
	END

	IF @Divulgacao IS NULL
	BEGIN
		SET @Divulgacao = 0
	END

	INSERT INTO [dbo].[Agenda]
           (
           IDEmpresa
           ,Titulo
           ,Texto
           ,Ativo
           ,DataInicio
           ,DataFim
           ,Divulgacao
           )
    VALUES
           (
            @IDEmpresa
           ,@Titulo
           ,@Texto
           ,@Ativo
           ,@DataInicio
           ,@DataFim
           ,@Divulgacao
           )
	           
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID

END
GO
/****** Object:  StoredProcedure [dbo].[PotenciaIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 14/08/2008
-- DESCRICAO...: Inclusão de dados na Tabela Potencia
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 19/01/2010
-- DESCRICAO...: Inclusão dos Atributos [IDPessoaGraoMestre], [IDPessoaSecretario]
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PotenciaIncluir]
	-- Add the parameters for the stored procedure here
      @Nome  varchar(100)
     ,@Ativo varchar(1)
     ,@IDCidadeContinente  INT =NULL
     ,@IDCidadePais INT =NULL
     ,@IDCidadeEstado INT =NULL
     ,@IDCidade INT =NULL
     ,@Endereco varchar(100) =NULL
     ,@Cep varchar(12) =NULL
     ,@Bairro varchar(100) =NULL
     ,@Email varchar(100) =NULL
     ,@Site varchar(100) =NULL
     ,@CaixaPostal varchar(20) =NULL
     ,@NomeVeneravel varchar(100) =NULL
     ,@NomeGraoMestre varchar(100) =NULL
     ,@NomeSecretarioRelacoesExteriores varchar(100) =NULL
     ,@IDPessoaRepresentanteLA INT =NULL
     ,@IDPessoaRepresentanteAQUI INT =NULL
     ,@DataFundacao DATETIME =NULL
     ,@NumeroLojas INT =NULL
     ,@NumeroObreiros INT =NULL
     ,@NumeroMedioObreiros INT =NULL
     ,@IDPessoaGraoMestre int=NULL
	 ,@IDPessoaSecretario int=NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[Potencia]
           ([Nome]
           ,[Ativo]
           ,[IDCidadeContinente]
           ,[IDCidadePais]
           ,[IDCidadeEstado]
           ,[IDCidade]
           ,[Endereco]
           ,[Cep]
           ,[Bairro]
           ,[Email]
           ,[Site]
           ,[CaixaPostal]
           ,[NomeVeneravel]
           ,[NomeGraoMestre]
           ,[NomeSecretarioRelacoesExteriores]
           ,[IDPessoaRepresentanteLA]
           ,[IDPessoaRepresentanteAQUI]
           ,[DataFundacao]
           ,[NumeroLojas]
           ,[NumeroObreiros]
           ,[NumeroMedioObreiros]
		   ,[IDPessoaGraoMestre]
		   ,[IDPessoaSecretario]           
           )
     VALUES
           (      
			@Nome  
			,@Ativo 
			,@IDCidadeContinente  
			,@IDCidadePais 
			,@IDCidadeEstado 
			,@IDCidade 
		    ,@Endereco 
			,@Cep 
			,@Bairro 
			,@Email 
			,@Site 
			,@CaixaPostal 
			,@NomeVeneravel 
			,@NomeGraoMestre 
			,@NomeSecretarioRelacoesExteriores 
			,@IDPessoaRepresentanteLA 
			,@IDPessoaRepresentanteAQUI 
			,@DataFundacao 
			,@NumeroLojas 
		    ,@NumeroObreiros 
			,@NumeroMedioObreiros 
		    ,@IDPessoaGraoMestre
	        ,@IDPessoaSecretario			
			)
	
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS id	
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoPotencia]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <21/09/2008>
-- Description:	<Selecionar as Potencias>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoPotencia]
 @Ativo          VARCHAR(1)   = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPotencia              int = NULL

-- CORPO DA PROCEDURE
AS
BEGIN
SELECT   pot.[IDPotencia] AS ID
		,pot.[Nome]
        ,pot.[Ativo]
        ,pot.[IDPotencia] AS Codigo
	FROM Potencia AS pot
	WHERE ((@Ativo IS NULL)          OR (pot.Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (pot.Nome LIKE '%'+@Nome + '%'))
	  AND ((@IDPotencia IS NULL)     OR (pot.IDPotencia = @IDPotencia))
	ORDER BY pot.Nome,pot.IDPotencia
END
GO
/****** Object:  StoredProcedure [dbo].[RegistroFiliacaoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/01/2010>
-- Description:	<Selecionar Registros da Tabela Registros Filiação>
--            : <esses registro trazem dados sobre os placets em outras potencias>
--------------------------------------------------------------------------------------
--
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RegistroFiliacaoSelecionar]
-- Add the parameters for the stored procedure here
				 @Ativo		   VARCHAR(1)=NULL
				,@IDRegistro   INT=NULL
				,@Registro	   varchar(100)=NULL 
				,@IDPessoa     INT=NULL 
				,@Placet	   INT=NULL 
				,@DataRegistro DATETIME=NULL
				,@IDPotencia   INT=NULL 
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	
		 R.[IDRegistroFiliacao] AS ID 
		,R.[IDRegistro]
		,R.[Registro]
		,R.[DataRegistro]
		,R.[DataLancamento]
		,R.[IDPotencia]
		,R.[Potencia]
		,R.[Loja]
		,R.[Ativo]
		,R.[IDPessoa]
		,pes.Nome AS PessoaNome
		,p.nome   AS PotenciaNome
		,r.[Placet]
		,CASE R.Placet
				WHEN NULL THEN '             '
				WHEN 0	  THEN '             '
				WHEN 1	  THEN 'Iniciação    '
				WHEN 2	  THEN 'Elevação     '
				WHEN 3	  THEN 'Exaltação    '
				WHEN 4	  THEN 'Instalação   '
						  ELSE '             '				
		END AS PlacetNome
		
	   ,CASE WHEN R.[DataRegistro]>01/01/1900   THEN Convert(VARCHAR(10),R.[DataRegistro] ,103)   ELSE '' END AS DataRegistroTxt		  
	   ,CASE WHEN R.[DataLancamento]>01/01/1900 THEN Convert(VARCHAR(10),R.[DataLancamento] ,103) ELSE '' END AS DataLancamentoTxt
		 
	FROM [dbo].[RegistroFiliacao] AS R
		LEFT OUTER JOIN [Pessoa] AS pes ON (pes.IDPessoa= R.IDPessoa)
		LEFT OUTER JOIN [Potencia] AS P ON (P.IDPotencia= R.IDPotencia)
	
	WHERE 
    	  ((@IDRegistro IS NULL)   OR (R.IDRegistro = @IDRegistro))
	  AND ((@Registro IS NULL)     OR (R.Registro = @Registro))
	  AND ((@IDPessoa IS NULL)     OR (R.IDPessoa = @IDPessoa))
	  AND ((@Placet IS NULL)       OR (R.Placet   = @Placet))
	  AND ((@IDPotencia IS NULL)   OR (R.IDPotencia = @IDPotencia))
	  AND ((@DataRegistro IS NULL) OR (R.DataRegistro = @DataRegistro))
  
	ORDER BY R.Placet DESC
  
END
GO
/****** Object:  StoredProcedure [dbo].[TelefoneSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <23/09/2008>
-- Description:	<Selecionar os Telefones>

-- Autor      :	<Mario Rossatti>
-- Alterado em: <23/02/2009>
-- Description:	Inclusão do atributo Emergencia

-- Author:		<Mario Rossatti>
-- Create date: <28/09/2009>
-- Description:	<Inclusão de atributo IDCenso>
--
-- Author     :	Mario Rossatti
-- Create date: 27/04/2010
-- Versão     : 2010.05.01
-- Description:	Inclusão de TipoTelefoneNome
--
-- Author     :	Mario Rossatti
-- Create date: 31/08/2010
-- Versão     : 2010.08.31
-- Description:	Inclusão do Atributo EmergenciaNome
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[TelefoneSelecionar]
 @Ativo VARCHAR(1)
,@Telefone VARCHAR(100) = null
,@IDPessoa INT = NULL
,@IDLoja   INT = NULL
,@IDPotencia INT = NULL
,@Emergencia VARCHAR(1) = NULL
,@IDCenso INT=NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	 Tele.Ativo
		,Tele.Telefone
		,Tele.TipoTelefone
		,Tele.IDPessoa
		,Tele.IDLoja
		,Tele.IDPotencia
		,Tele.IDTelefone
		,'Não informado o Nome' AS Nome
		,Pes.Nome   AS PessoaNome
		,loja.Nome  AS LojaNome
		,Pot.Nome   AS PotenciaNome
		,Tele.Emergencia
		,Tele.IDCenso
		,cns.Nome AS CensoNome		
        ,CASE Tele.TipoTelefone	
		 WHEN 0 THEN 'Comercial  '			
		 WHEN 1 THEN 'Residencial'
         WHEN 2 THEN 'Fax        '
         WHEN 3 THEN 'Celular    '
		 END AS TipoTelefoneNome				        
        ,CASE WHEN tele.Emergencia=1 THEN 'Sim' ELSE 'Não' END AS EmergenciaNome		
        
	FROM Telefone AS Tele
		LEFT OUTER JOIN Pessoa   AS pes  ON (pes.IDPessoa  =Tele.IDPessoa)	
		LEFT OUTER JOIN Loja     AS loja ON (loja.IDLoja   =Tele.IDLoja)
		LEFT OUTER JOIN Potencia AS pot  ON (pot.IDPotencia=Tele.IDPotencia)
		LEFT OUTER JOIN Censo    AS Cns  ON (cns.IDCenso   =Tele.IDCenso)
	WHERE ((@Ativo IS NULL)    OR (Tele.Ativo = @Ativo))
	  AND ((@Telefone IS NULL) OR (Tele.Telefone LIKE '%'+@Telefone + '%'))	  
	  AND ((@IDPessoa IS NULL) OR (Tele.IDPessoa=@IDPessoa))
	  AND ((@IDLoja IS NULL)   OR (Tele.IDLoja  =@IDLoja))
	  AND ((@IDCenso IS NULL)  OR (Tele.IDCenso =@IDCenso))	  
	ORDER BY Tele.Telefone,Tele.IDTelefone
END
GO
/****** Object:  StoredProcedure [dbo].[TelefonePotenciaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <23/09/2008>
-- Description:	<Selecionar os Telefones>

-- Autor      :	<Mario Rossatti>
-- Alterado em: <23/02/2009>
-- Description:	Inclusão do atributo Emergencia

-- Author:		<Mario Rossatti>
-- Create date: <28/09/2009>
-- Description:	<Inclusão de atributo IDCenso>
--
-- Author     :	Mario Rossatti
-- Create date: 27/04/2010
-- Versão     : 2010.05.01
-- Description:	Inclusão de TipoTelefoneNome
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[TelefonePotenciaSelecionar]
 @Ativo VARCHAR(1)
,@Telefone VARCHAR(100) = null
,@IDPotencia INT = NULL
,@IDCenso INT=null
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	 Tele.Ativo
		,Tele.Telefone
		,Tele.TipoTelefone
		,Tele.IDPessoa
		,Tele.IDLoja
		,Tele.IDPotencia
		,Tele.IDTelefone
		,Pot.Nome AS Nome
		,Tele.Emergencia		
		,Tele.[IDCenso]
		,cns.[Nome] AS CensoNome
        ,CASE Tele.TipoTelefone	
		 WHEN 0 THEN 'Comercial  '			
		 WHEN 1 THEN 'Residencial'
         WHEN 2 THEN 'Fax        '
         WHEN 3 THEN 'Celular    '
		 END AS TipoTelefoneNome				        
		
	FROM [Telefone] AS Tele
		LEFT OUTER JOIN Potencia AS pot ON (pot.IDPotencia=Tele.IDPotencia)
		LEFT OUTER JOIN [Censo] AS Cns ON (cns.[IDCenso]=tele.[IDCenso])
	WHERE ((@Ativo IS NULL)      OR (Tele.Ativo = @Ativo))
	  AND ((@Telefone IS NULL)   OR (Tele.Telefone LIKE '%'+@Telefone+ '%'))	  
	  AND ((@IDPotencia IS NULL) OR (Tele.IDPotencia=@IDPotencia))
	  AND ((@IDCenso IS NULL)    OR (Tele.IDCenso=@IDCenso))	  
	  
	  	  
	ORDER BY Tele.Telefone,Tele.IDTelefone
END
GO
/****** Object:  StoredProcedure [dbo].[PotenciaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <21/09/2008>
-- Description:	<Selecionar as Potencias>
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 19/01/2010
-- DESCRICAO...: Inclusão dos Atributos [IDPessoaGraoMestre], [IDPessoaSecretario]
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PotenciaSelecionar]
 @Ativo          VARCHAR(1)   = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPotencia              int = NULL

-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT   
	     pot.[IDPotencia]
	    ,pot.[IDPotencia] AS ID
	    ,pot.[IDPotencia] AS Codigo 
		,pot.[Nome]
        ,pot.[Ativo]
        ,pot.[IDCidadeContinente]
        ,pot.[IDCidadePais]
        ,pot.[IDCidadeEstado]
        ,pot.[IDCidade]
        ,pot.[Endereco]
        ,pot.[Cep]
        ,pot.[Bairro]
        ,pot.[Email]
        ,pot.[Site]
        ,pot.[CaixaPostal]
        ,pot.[IDPessoaRepresentanteLA]
        ,pot.[IDPessoaRepresentanteAQUI]
        ,pot.[DataFundacao]
        ,pot.[NumeroLojas]
        ,pot.[NumeroObreiros]
        ,pot.[NumeroMedioObreiros]	
        ,pot.[IDPessoaGraoMestre]
        ,pot.[IDPessoaSecretario]
        ,cid.[Nome]  AS CidadeNome
        ,est.[Nome]  AS CidadeEstadoNome
        ,pais.[Nome] AS CidadePaisNome
        ,cont.[Nome] AS CidadeContinenteNome
        ,resp.Nome   AS NomeRepresentanteAQUI
        ,CASE WHEN ( NOT pot.[IDPessoaGraoMestre] IS NULL) AND (pot.[IDPessoaGraoMestre]>0) THEN gm.[Nome] ELSE pot.NomeGraoMestre END AS NomeGraoMestre		          
        ,CASE WHEN ( NOT pot.[IDPessoaSecretario] IS NULL) AND (pot.[IDPessoaSecretario]>0) THEN sr.[Nome] ELSE pot.[NomeSecretarioRelacoesExteriores] END AS NomeSecretarioRelacoesExteriores		          
        ,CASE WHEN pot.datafundacao>01/01/1900 THEN Convert(VARCHAR(10),pot.[DataFundacao],103)  ELSE '' END AS DataFundacaoTxt		          
	FROM Potencia AS pot
		LEFT OUTER JOIN Cidade           AS cid  ON (cid.[IDCidade]    = pot.IDCidade)
		LEFT OUTER JOIN CidadeEstado     AS est  ON (est.IDCidadeEstado= cid.IDCidadeEstado)
		LEFT OUTER JOIN CidadePais       AS pais ON (pais.IDCidadePais = est.IDCidadePais)
		LEFT OUTER JOIN CidadeContinente AS cont ON (cont.IDCidadeContinente=pais.IDCidadeContinente)
		LEFT OUTER JOIN Pessoa           AS resp ON (resp.IDPessoa=pot.IDPessoaRepresentanteAQUI)
		LEFT OUTER JOIN Pessoa           AS gm   ON (gm.IDPessoa=pot.IDPessoaGraoMestre)
		LEFT OUTER JOIN Pessoa           AS sr   ON (sr.IDPessoa=pot.IDPessoaSecretario)
	WHERE ((@Ativo IS NULL)          OR (pot.Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (pot.Nome LIKE '%'+@Nome + '%'))
	  AND ((@IDPotencia IS NULL)     OR (pot.IDPotencia = @IDPotencia))
	ORDER BY pot.Nome,pot.IDPotencia
END
GO
/****** Object:  StoredProcedure [dbo].[PotenciaAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 21/09/2008
-- DESCRICAO...: Alterar de dados na Tabela Potencia
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 19/01/2010
-- DESCRICAO...: Inclusão dos Atributos [IDPessoaGraoMestre], [IDPessoaSecretario]
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PotenciaAlterar]
	-- Add the parameters for the stored procedure here
      @IDPotencia INT
     ,@Nome  varchar(100)
     ,@Ativo varchar(1)
     ,@IDCidadeContinente  INT =NULL
     ,@IDCidadePais INT =NULL
     ,@IDCidadeEstado INT =NULL
     ,@IDCidade INT =NULL
     ,@Endereco varchar(100) =NULL
     ,@Cep varchar(12) =NULL
     ,@Bairro varchar(100) =NULL
     ,@Email varchar(100) =NULL
     ,@Site varchar(100) =NULL
     ,@CaixaPostal varchar(20) =NULL
     ,@NomeGraoMestre varchar(100) =NULL
     ,@NomeSecretarioRelacoesExteriores varchar(100) =NULL
     ,@IDPessoaRepresentanteLA INT =NULL
     ,@IDPessoaRepresentanteAQUI INT =NULL
     ,@DataFundacao DATETIME =NULL
     ,@NumeroLojas INT =NULL
     ,@NumeroObreiros INT =NULL
     ,@NumeroMedioObreiros INT =NULL
     ,@IDPessoaGraoMestre int=NULL
	 ,@IDPessoaSecretario int=NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Potencia SET
            [Nome]=@Nome  
           ,[Ativo]=@Ativo
           ,[IDCidadeContinente]=@IDCidadeContinente  
           ,[IDCidadePais]=@IDCidadePais 
           ,[IDCidadeEstado]=@IDCidadeEstado
           ,[IDCidade]=@IDCidade
           ,[Endereco]=@Endereco
           ,[Cep]=@Cep
           ,[Bairro]=@Bairro
           ,[Email]=@Email
           ,[Site]=@Site
           ,[CaixaPostal]=@CaixaPostal
           ,[NomeGraoMestre]=@NomeGraoMestre
           ,[NomeSecretarioRelacoesExteriores]=@NomeSecretarioRelacoesExteriores
           ,[IDPessoaRepresentanteLA]=@IDPessoaRepresentanteLA
           ,[IDPessoaRepresentanteAQUI]=@IDPessoaRepresentanteAQUI
           ,[DataFundacao]=@DataFundacao
           ,[NumeroLojas]=@NumeroLojas
           ,[NumeroObreiros]=@NumeroObreiros
           ,[NumeroMedioObreiros]=@NumeroMedioObreiros
		   ,IDPessoaGraoMestre=@IDPessoaGraoMestre
		   ,IDPessoaSecretario=@IDPessoaSecretario
           
	WHERE IDPotencia=@IDPotencia
END
GO
/****** Object:  StoredProcedure [dbo].[LojaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <27/09/2008>
-- Description:	<Selecionar as Lojas>
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <01/12/2008>
-- Alteração :	<Incluir Chave Estrangeira de região de Loja>
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <04/10/2009>
-- Alteração :	<Incluir Atributo Codigo <int> Null> 
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <15/11/2009>
-- Alteração :	<Incluir Atributo Filosofica varchar(1)> 
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <25/11/2009>
-- Description:	<Inclusao do Atributo ID>
--
-- Author:		<Mario Rossatti>
-- Create date: <18/10/2010>
-- Alteração :	<Incluir Atributo IDEmpresa> 
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaSelecionar]
 @IDEmpresa      INT
,@Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDLoja         int = NULL
,@IDPotencia     INT = NULL
,@IDLojaRegiao	 INT = NULL
,@Codigo         INT = NULL
,@Filosofica     VARCHAR(1) = NULL
-- CORPO DA PROCEDURE
AS
BEGIN

--	IF (@Filosofica IS NULL)
--		BEGIN
--			SET @Filosofica = '0'
--		END

	SELECT 
			 L.IDLoja
			,L.IDLoja AS ID            
			,L.Ativo 
			,L.Nome 
			,L.Endereco 
			,L.EnderecoComplemento 
			,L.EnderecoBairro 
			,L.IDCidade
			,L.Cep 
			,L.Email 
			,L.Site
			,L.DataDeFundacao
			,L.DiaDeReuniao
			,L.IDPessoaVeneravel
			,L.IDPessoaSecretario
			,L.IDPessoaTesoureiro
			,L.Data
			,L.CNPJ
			,L.IDPotencia	
			,cid.Nome+' - '+est.Sigla AS CidadeNome
			,vene.nome AS Veneravel
			,sec.nome  AS Secretario
			,tes.nome  AS Tesoureiro
			,pot.nome  AS PotenciaNome
			,L.IDLojaRegiao
			,L.NomeAntigo
			,l.Codigo
            ,L.Filosofica
            ,CASE WHEN L.Filosofica='0' THEN 'Não' ELSE 'Sim' END AS FilosoficaTxt
	FROM Loja AS L
		LEFT OUTER JOIN Cidade AS cid  ON (cid.IDCidade  = L.IDCidade)
		LEFT OUTER JOIN CidadeEstado AS est  ON (est.IDCidadeEstado  = cid.IDCidadeEstado)
		LEFT OUTER JOIN Pessoa AS Vene ON (Vene.IDPessoa = L.IDPessoaVeneravel)
		LEFT OUTER JOIN Pessoa AS sec  ON (sec.IDPessoa  = L.IDPessoaSecretario)
		LEFT OUTER JOIN Pessoa AS tes  ON (tes.IDPessoa  = L.IDPessoaTesoureiro)
		LEFT OUTER JOIN Potencia AS pot ON (pot.IDPotencia = L.IDPotencia)
	WHERE (l.IDEmpresa=@IDEmpresa)
	  AND ((@Ativo IS NULL)      OR (L.Ativo = @Ativo))
	  AND ((@Nome IS NULL)       OR (L.Nome LIKE '%'+@Nome + '%'))
	  AND ((@IDLoja IS NULL)     OR (L.IDLoja = @IDLoja))
	  AND ((@IDPotencia IS NULL) OR (L.IDPotencia = @IDPotencia))
	  AND ((@Codigo IS NULL)     OR (L.Codigo = @Codigo))
	  AND ((@Filosofica IS NULL) OR (L.Filosofica = @Filosofica))
	ORDER BY L.Nome,L.IDLoja
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeEstadoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <12/08/2008>
-- Description:	<Selecionar os Estados>
--
-- Author:		<Mario Rossatti>
-- Create date: <25/11/2009>
-- Description:	<Inclusao do Atributo ID>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao do Atributo Codigo>
---------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeEstadoSelecionar]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDCidadeEstado int = NULL
,@IDCidadePais   int = NULL
,@Sigla          VARCHAR(20) = NULL
,@Naturalidade   VARCHAR(100) = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		CE.IDCidadeEstado
		,CE.IDCidadeEstado AS ID
		,CE.IDCidadeEstado AS Codigo
		,CE.Nome
		,CE.Naturalidade
		,CE.Ativo
		,CE.IDCidadePais
		,CE.Sigla
		,CP.[Nome] AS CidadePaisNome
	FROM CidadeEstado AS CE
		LEFT OUTER JOIN CidadePais  AS CP  ON (CE.[IDCidadePais] = CP.[IDCidadePais])
	
	WHERE ((@Ativo IS NULL)          OR (CE.Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (CE.Nome LIKE '%'+@Nome + '%'))
	  AND ((@IDCidadeEstado IS NULL) OR (CE.IDCidadeEstado = @IDCidadeEstado))
	  AND ((@IDCidadePais IS NULL)   OR (CE.IDCidadePais = @IDCidadePais))
	  AND ((@Sigla IS NULL)          OR (CE.Sigla = @Sigla))
	  AND ((@Naturalidade IS NULL)   OR (CE.Naturalidade = @Naturalidade))
	ORDER BY CE.Nome,CE.IDCidadeEstado
END
GO
/****** Object:  StoredProcedure [dbo].[CidadePaisSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <27/09/2008>
-- Description:	<Selecionar os Países>
--
-- Author:		<Mario Rossatti>
-- Create date: <25/11/2009>
-- Description:	<Inclusao do Atributo ID>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadePaisSelecionar]
 @Ativo              VARCHAR(1) = NULL
,@Nome               VARCHAR(100) = NULL
,@IDCidadePais       INT = NULL
,@IDCidadeContinente INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 CP.IDCidadePais
		,CP.IDCidadePais AS ID
		,CP.IDCidadePais AS Codigo
		,CP.Nome
		,CP.Ativo
		,CP.Nacionalidade
		,CP.IDCidadeContinente
		,CC.[Nome] AS CidadeContinenteNome
	FROM [CidadePais] AS CP
		LEFT OUTER JOIN [CidadeContinente] AS CC  ON (CC.[IDCidadeContinente] = CP.[IDCidadeContinente])
	
	WHERE ((@Ativo IS NULL)              OR (CP.Ativo = @Ativo))
	  AND ((@Nome IS NULL)               OR (CP.Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDCidadePais IS NULL)       OR (CP.IDCidadePais =@IDCidadePais))
	  AND ((@IDCidadeContinente IS NULL) OR (CP.IDCidadeContinente=@IDCidadeContinente))
	ORDER BY CP.Nome,CP.IDCidadePais
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoCidadePais]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Selecionar os Países>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoCidadePais]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDCidadePais INT = NULL
,@IDCidadeContinente INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 CP.IDCidadePais AS ID
		,CP.IDCidadePais AS Codigo
		,CP.Nome
		,CP.Ativo
	FROM [CidadePais] AS CP
	WHERE ((@Ativo IS NULL)              OR (CP.Ativo = @Ativo))
	  AND ((@Nome IS NULL)               OR (CP.Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDCidadePais IS NULL)       OR (CP.IDCidadePais =@IDCidadePais))
	  AND ((@IDCidadeContinente IS NULL) OR (CP.IDCidadeContinente=@IDCidadeContinente))
	ORDER BY CP.Nome,CP.IDCidadePais
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaSelecionarCarteiraCunhada]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <14/12/2009>
-- Description:	<Selecionar Informações de Cunhadas para Emissão de Carteiras>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Description:	<>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaSelecionarCarteiraCunhada]
				 @Codigo	INT=NULL
				,@IDPessoa  INT=NULL 
				,@COLECAO   VARCHAR(200)=NULL
AS
BEGIN

	SELECT	 P.IDPessoa
	        ,P.Codigo AS Cadastro
			,P.Nome	AS ObreiroNome		
			,CASE WHEN chd.Nome IS NULL THEN '' ELSE chd.nome END AS CunhadaNome
			,CASE WHEN chd.DataNascimento IS NULL THEN '' ELSE Convert(VARCHAR(10),chd.DataNascimento,103) END AS CunhadaNascimento
	FROM Pessoa AS P
	inner JOIN PessoaFamilia AS chd ON 
	((chd.IDPessoa = p.IDPessoa) and (chd.IDPessoaGrauParentesco=3 and chd.sexo='1'))

	WHERE (P.Ativo = '0')
	  AND ((@IDPessoa IS NULL)  OR (P.IDPessoa = @IDPessoa))
	  AND ((@Codigo   IS NULL)  OR (P.Codigo=@Codigo))
	  AND ((@Colecao  IS NULL)	OR (CHARINDEX('|'+CONVERT(varchar(10),p.Codigo)+'|',@COLECAO)>0 ) )	  	  
	ORDER BY P.codigo

	
END
GO
/****** Object:  StoredProcedure [dbo].[TelefonePessoaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <23/09/2008>
-- Description:	<Selecionar os Telefones de Pessoas>

-- Autor      :	<Mario Rossatti>
-- Alterado em: <23/02/2009>
-- Description:	Inclusão do atributo Emergencia

-- Author:		<Mario Rossatti>
-- Create date: <30/08/2009>
-- Description:	<Inclusão de atributo >

-- Author:		<Mario Rossatti>
-- Create date: <28/09/2009>
-- Description:	<Inclusão de atributo IDCenso>
--
-- Author     :	Mario Rossatti
-- Create date: 27/04/2010
-- Versão     : 2010.05.01
-- Description:	Inclusão de TipoTelefoneNome
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[TelefonePessoaSelecionar]
 @Ativo VARCHAR(1)
,@Telefone VARCHAR(100) = null
,@IDPessoa INT = NULL
,@Emergencia VARCHAR(1) = NULL
,@IDCenso INT=null
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	 Tele.Ativo
		,Tele.Telefone
		,Tele.TipoTelefone
		,Tele.IDPessoa
		,Tele.IDLoja
		,Tele.IDPotencia
		,Tele.IDTelefone
		,Pes.Nome AS Nome
		,tele.Emergencia
		,tele.IDCenso
		,cns.[Nome] AS CensoNome		
        ,CASE WHEN tele.Emergencia=1 THEN 'Sim' ELSE 'Não' END AS EmergenciaNome
        ,CASE Tele.TipoTelefone	
		 WHEN 0 THEN 'Comercial  '			
		 WHEN 1 THEN 'Residencial'
         WHEN 2 THEN 'Fax        '
         WHEN 3 THEN 'Celular    '
		 END AS TipoTelefoneNome				        
	FROM [Telefone] AS Tele
		LEFT OUTER JOIN Pessoa AS pes ON (pes.IDPessoa=Tele.IDPessoa)	
		LEFT OUTER JOIN [Censo]  AS Cns  ON (cns.[IDCenso]=tele.[IDCenso])
	WHERE ((@Ativo IS NULL)      OR (Tele.Ativo = @Ativo))
	  AND ((@Telefone IS NULL)   OR (Tele.Telefone LIKE '%'+@Telefone + '%'))	  
	  AND ((@IDPessoa IS NULL)   OR (Tele.IDPessoa =@IDPessoa))
	  AND ((@Emergencia IS NULL) OR (Tele.Emergencia=@Emergencia))
	  AND ((@IDCenso IS NULL)    OR (Tele.IDCenso=@IDCenso))
	ORDER BY Tele.Telefone,Tele.IDTelefone
END
GO
/****** Object:  StoredProcedure [dbo].[RelLojaAniversariantes]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <26/05/2009>
-- Description:	<Selecionar os Obreiros Aniversariantes do Mes Informado>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Correção da clausula WHERE>
-- Data       : <02/08/2009>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @Filosofica>
-- Data       : <25/07/2010>
--
-- Author     :	<Mario Rossatti>
-- Alteração  : <Inclusão do Parametro @IDEmpresa>
-- Data       : <24/08/2010>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RelLojaAniversariantes]
-- Add the parameters for the stored procedure here
 @IDEmpresa     INT
,@Mes			INT
,@Loja			VARCHAR(1000)=NULL
,@Filosofica    VARCHAR(1)   = NULL
			    
-- CORPO DA PROCEDURE
AS
BEGIN

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	SELECT 
	 pes.IDPessoa
	,DAY(pes.[NascimentoData]) AS Dia
	,DATEDIFF(YEAR,pes.[NascimentoData],GETDATE() )AS Idade
	,pes.[Nome] 
	,pes.[Endereco]
	,pes.[EnderecoBairro]
	,pes.[EnderecoCEP]
	,cid.[Nome] AS CidadeNome
	,pes.[Email]
	,lo.[Nome] AS LojaNome
	,lo.CodigoAntigo
	FROM [Pessoa] AS pes
	LEFT OUTER join cidade AS cid ON (cid.[IDCidade]=pes.[EnderecoIDCidade])
	LEFT outer join loja as lo on (lo.[IDLoja]=pes.[IDLoja])
	/*
	inner join PessoaDados pd ON
	(
		 (pd.[IDPessoa]=pes.[IDPessoa])

	 AND (pd.[IniciacaoData] IS NOT NULL)
	 AND ((pd.[EliminacaoIDloja] IS NULL)   OR (pd.[EliminacaoIDloja]='0'))         
	 AND ((pd.[EliminacaoPlacet] IS NULL)   OR (LEN(RTRIM(LTRIM(pd.[EliminacaoPlacet])))<3))
	 AND ((pd.[EliminacaoData] IS null)     OR (YEAR(pd.[EliminacaoData])<1900))
	 AND ((pd.[DesligamentoData] IS NULL)   OR (YEAR(pd.[DesligamentoData])<1900))
	 AND ((pd.[DesligamentoIDLoja] IS NULL) OR (pd.[DesligamentoIDLoja]='0'))
	 AND ((YEAR(pd.[DesligamentoData])<1900) OR (pd.[DesligamentoData] IS null))     
	 AND ((YEAR(pd.[RejeicaoData])<1900)     OR (pd.[RejeicaoData] IS null))     
	 AND ((LEN(RTRIM(LTRIM(pd.[ObitoAtestado])))=0) OR (pd.[ObitoAtestado] IS NULL ))
	 AND ((YEAR(pd.[ObitoData])<1900)        OR (pd.[ObitoData] IS null))	  
	 AND (pd.[Desistencia]=0)    
	 
	 )
	 */
	WHERE   (pes.ativo=0)	
	    AND (lo.IDEmpresa=@IDEmpresa)
        AND (lo.Filosofica = @Filosofica)	  
		AND (MONTH(pes.[NascimentoData])=@Mes)
        AND ((@Loja IS NULL) OR (CHARINDEX('|'+CONVERT(varchar(10),pes.[IDLoja])+'|',@Loja)>0 ) )      	
	ORDER BY lo.CodigoAntigo,pes.[IDLoja],Dia,pes.[Nome],pes.[IDPessoa]
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[PessoaRetornarProximoRegistro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <17/09/2009>
-- Description:	<Retornar o Proximo Numero de Registro da Tabela Registro>
-- =============================================
CREATE FUNCTION [dbo].[PessoaRetornarProximoRegistro] ()
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @PROXIMO int

	-- Add the T-SQL statements to compute the return value here
	SET @PROXIMO = (SELECT TOP 1 Codigo FROM Pessoa order BY [Codigo] DESC)
	
	SET @proximo = @PROXIMO+1
	-- Return the result of the function
	RETURN @PROXIMO

END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoPessoa]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <11/09/2008>
-- Description:	<Procedure para Selecionar os OBREIROS a funcionalidade de Selecao>

-- Author:		<>
-- Create date: <00/00/0000>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoPessoa]
-- Add the parameters for the stored procedure here
				 @Ativo				VARCHAR(1)=NULL
	 			,@Nome				varchar(100)=NULL
				,@IDPessoa          INT=NULL 
			    ,@IDLoja		    int=NULL
			    ,@IDPessoaGrauTipo	int=NULL
			    ,@IDPessoaTipo		int=NULL
			    ,@Codigo			INT=NULL
				
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	
		 P.IDPessoa AS ID
		,P.Nome
		,P.Codigo
		,P.Ativo	

	FROM Pessoa AS P
	
	WHERE ((@Ativo IS NULL)            OR (P.Ativo = @Ativo))
	  AND ((@Nome IS NULL)             OR (P.Nome LIKE '%'+@Nome+'%'))
	  AND ((@IDPessoa IS NULL)         OR (P.IDPessoa = @IDPessoa))
	  AND ((@IDLoja IS NULL)           OR (P.IDLoja = @IDLoja))
	  AND ((@IDPessoaGrauTipo IS NULL) OR (P.IDPessoaGrauTipo = @IDPessoaGrauTipo))
	  AND ((@IDPessoaTipo IS NULL)     OR (P.IDPessoaTipo = @IDPessoaTipo))
	  AND ((@Codigo IS NULL)		   OR (p.[Codigo]=@Codigo))
	ORDER BY P.Nome,P.IDPessoa
	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <29/09/2008>
-- Description:	<Alteracao de dados na Tabela Pessoa>

-- Author:		<Rossatti,Junior>
-- Create date: <02/10/2009>
-- Description:	<Inclusao do Atributo Codigo INT=null>

-- Author:		<Mario Rossatti>
-- Create date: <08/11/2009>
-- Description:	<Inclusão do Atributo DataCadastro>

-- Author:		<>
-- Create date: <00/00/0000>
-- Description:	<>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaAlterar]
-- Add the parameters for the stored procedure here
				@IDPessoa INT
				,@Ativo VARCHAR(1)= null	
				,@Nome  varchar(100) =NULL
				,@CPFCNPJ  varchar(20) =NULL
				,@Sexo  varchar(1) =NULL
				,@RGIE  varchar(20) =NULL
				,@Natureza varchar(1) =NULL
				,@EnderecoIDCidade int =NULL
				,@Endereco varchar(100) =NULL
				,@EnderecoBairro varchar(100) =NULL
				,@EnderecoCEP varchar(12) =NULL
				,@IDPessoaTipo int =NULL
				,@IDPessoaGrauTipo int =NULL
				,@Email varchar(100) =NULL
				,@NascimentoData datetime =NULL
				,@IDLoja INT=NULL
				,@Codigo INT=NULL
				,@DataCadastro datetime =NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Pessoa SET 
		 Ativo=@Ativo
		,Nome=@Nome
		,CPFCNPJ=@CPFCNPJ
		,Sexo=@Sexo
		,RGIE=@RGIE
		,Natureza=@Natureza
		,EnderecoIDCidade=@EnderecoIDCidade
		,Endereco=@Endereco
		,EnderecoBairro=@EnderecoBairro
		,EnderecoCEP=@EnderecoCEP
		,IDPessoaTipo=@IDPessoaTipo
		,IDPessoaGrauTipo=@IDPessoaGrauTipo
		,Email=@Email
		,NascimentoData=@NascimentoData
		,IDLoja=@IDLoja
		,Codigo=@Codigo
		,DataCadastro=@DataCadastro

	WHERE IDPessoa=@IDPessoa
	           
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaPlacetSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <12/09/2008>
-- Description:	<Selecionar Placet dos Obreiros>
--				< Valores do PlacetTipo: 
--				0 - Não Informado
--				1 - Iniciação
--				2 - Elevacao
--				3 - Exaltação
--				4 - Instalação
--				5 - Desligamento
--				6 -	Filiação
--				7 - Regularização
--				8 - Eliminação
--				9 - Rejeição
--------------------------------------------------------------------------------------
-- 
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaPlacetSelecionar]
-- Add the parameters for the stored procedure here
				 @Ativo				VARCHAR(1)=NULL
				,@IDPessoa          INT=NULL 
				,@Placet			INT=NULL 
				,@PlacetTipo		INT=NULL
			    ,@IDLoja		    int=NULL
				
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT [IDPessoaPlacet]
		,P.[IDPessoa]
		,P.[IDLoja]
		,P.[Data]
		,P.[Placet]
		,P.[PlacetTipo]
		,P.[Ativo]
		,L.[Nome] AS LojaNome
		,pes.[Nome] AS PessoaNome
		,CASE P.PlacetTipo
			WHEN NULL   THEN 'Não Informado'
			WHEN 0		THEN 'Não Informado'
			WHEN 1		THEN 'Iniciação'
			WHEN 2		THEN 'Elevacao'
			WHEN 3		THEN 'Exaltação'
			WHEN 4		THEN 'Instalação'
			WHEN 5		THEN 'Desligamento'
			WHEN 6		THEN 'Filiação'
			WHEN 7		THEN 'Regularização'
			WHEN 8		THEN 'Eliminação'
			WHEN 9		THEN 'Rejeição'
			ELSE  'Não Informado'
		 END AS PlacetTipoNome
		
	FROM [dbo].[PessoaPlacet] AS P
		LEFT OUTER JOIN [Loja] AS L  ON (L.IDLoja = P.IDLoja)
		LEFT OUTER JOIN [Pessoa] AS pes ON (pes.[IDPessoa]=P.IDPessoa)
	
	WHERE ((@Ativo IS NULL)      OR (P.Ativo    = @Ativo))
	  AND ((@IDPessoa IS NULL)   OR (P.IDPessoa = @IDPessoa))
	  AND ((@Placet IS NULL)     OR (P.Placet   = @Placet))
	  AND ((@IDLoja IS NULL)     OR (P.IDLoja   = @IDLoja))
	  AND ((@PlacetTipo IS NULL) OR (P.PlacetTipo = @PlacetTipo))
	ORDER BY P.IDPessoa,P.Placet
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaEnderecoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <27/09/2008>
-- Description:	<Selecionar os Enderecos da Pessoa>
--------------------------------------------------------------------------------------
-- 
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaEnderecoSelecionar]
-- Add the parameters for the stored procedure here
				 @Ativo		       VARCHAR(1)=NULL
				,@IDPessoaEndereco INT=NULL
				,@IDPessoa         INT=NULL 
				,@DataInclusao     DATETIME=null
				,@DataDesativacao  DATETIME=null
-- CORPO DA PROCEDURE
AS
BEGIN

	SELECT	 ED.[IDPessoaEndereco]
			,ED.[IDPessoa]
			,ED.[Ativo]
			,ED.[Endereco]
			,ED.[EnderecoBairro]
			,ED.[EnderecoIDCidade]
			,ED.[DataInclusao]
			,ED.[DataDesativacao]
			,pes.[Nome] AS PessoaNome
			,cid.[Nome] AS CidadeNome
	FROM [dbo].[PessoaEndereco] AS ED
		LEFT OUTER JOIN [Pessoa] AS pes ON (pes.IDPessoa= ED.IDPessoa)
		LEFT OUTER JOIN [Cidade] AS cid ON (cid.[IDCidade] = ed.EnderecoIDCidade)
	
	WHERE ((@Ativo IS NULL)            OR (ED.Ativo    = @Ativo))
	  AND ((@IDPessoa IS NULL)         OR (ED.IDPessoa = @IDPessoa))
	  AND ((@IDPessoaEndereco IS NULL) OR (ED.IDPessoaEndereco = @IDPessoaEndereco))
	  AND ((@DataInclusao IS NULL)     OR (ED.DataInclusao = @DataInclusao))
	  AND ((@DataDesativacao IS NULL)  OR (ED.DataDesativacao = @DataDesativacao))
  
	ORDER BY ED.IDPessoa,ED.ATIVO,ed.DataDesativacao,ED.IDPessoaEndereco DESC
  
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaCargoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <02/08/2008>
-- Description:	<Insercao de cargos de obreiros>
--
-- Author:		<Mario Rossatti>
-- Create date: <06/01/2010>
-- Description:	<Inclusão dos Atributos DataInicio e DataFim>
--              
-- Author:		<Mario Rossatti>
-- Create date: <28/02/2010>
-- Description:	<Inclusão do Atributo IDCenso>
--              
-- Author:		<Mario Rossatti>
-- Create date: <16/07/2010>
-- Description:	<Inclusão do Atributo Ativo>
--              
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaCargoIncluir]
-- Add the parameters for the stored procedure here
 @IDPessoa  int
,@IDCargoTipo int
,@IDCargoNivel int
,@IDLoja int
,@Ano varchar(4) = NULL
,@Atual varchar(1) = NULL	
,@DataInicio DATETIME = NULL
,@DataFim DATETIME = NULL
,@IDCenso INT = NULL
AS
BEGIN

	-- DESABILITANDO O CARGO ATUAL DO OBREIRO
	if @Atual IS NOT NULL AND @Atual='0'
		BEGIN
			UPDATE [PessoaCargo] SET Atual='1' WHERE IDPessoa=@IDPessoa AND Atual='0'
		END
		
	INSERT INTO [dbo].[PessoaCargo]
			   ([IDPessoa]
			   ,[IDCargoTipo]
			   ,[IDCargoNivel]
			   ,[IDLoja]
			   ,[Ano]
			   ,[Atual]
			   ,[DataInicio]
			   ,[DataFim]
			   ,IDCenso
			   ,Ativo)
		 VALUES
			   (@IDPessoa
			   ,@IDCargoTipo
			   ,@IDCargoNivel
			   ,@IDLoja
			   ,@Ano
			   ,@Atual
			   ,@DataInicio
			   ,@DataFim
			   ,@IDCenso
			   ,'0') -- Ativo = 0
	           
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaCargoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Atualizacao de Cargos dos Obreiros>
--
-- Author:		<Mario Rossatti>
-- Create date: <06/01/2010>
-- Description:	<Inclusão dos Atributos DataInicio e DataFim>
--              
-- Author:		<Mario Rossatti>
-- Create date: <28/02/2010>
-- Description:	<Inclusão do Atributo IDCenso>
--              
-- Author:		<Mario Rossatti>
-- Create date: <16/07/2010>
-- Description:	<Inclusão do Atributo Ativo>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaCargoAlterar]
	-- Add the parameters for the stored procedure here
 @IDPessoaCargo INT
,@IDPessoa  int
,@IDCargoTipo int
,@IDCargoNivel int
,@IDLoja int
,@Ano varchar(4) = NULL
,@Atual varchar(1) = NULL	
,@DataInicio DATETIME = NULL
,@DataFim DATETIME = NULL
,@IDCenso INT = NULL
,@Ativo varchar(1) = NULL
AS
BEGIN

	IF @ATIVO IS NULL
	BEGIN
		SET @ATIVO = '0'
	END
	
	IF @ATIVO='1'
	BEGIN
		SET @Atual = '1'
	END

	UPDATE [dbo].[PessoaCargo]
	   SET [IDPessoa] = @IDPessoa
		  ,[IDCargoTipo] = @IDCargoTipo
		  ,[IDCargoNivel] = @IDCargoNivel
		  ,[IDLoja] = @IDLoja
		  ,[Ano] = @Ano
		  ,[Atual] = @Atual
		  ,[DataInicio]=@DataInicio
		  ,[DataFim]=@DataFim
		  ,IDCenso=@IDCenso
		  ,Ativo = @Ativo
	 WHERE IDPessoaCargo=@IDPessoaCargo
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaSemaforoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/08/2010>
-- Description:	<Selecionar os Valores da Tabela EmpresaSemaforo>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaSemaforoSelecionar]
@IDEmpresa INT 
AS
BEGIN
	SELECT sem.ID
		  ,sem.IDEmpresa
	FROM dbo.EmpresaSemaforo as sem
	WHERE sem.IDEmpresa=@IDEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[BoletimAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <18/11/2009>
-- Description:	<Atualizacao de dados na Tabela Boletim>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[BoletimAlterar]
	-- Add the parameters for the stored procedure here
	@IDBoletim INT,
    @Mes INT=NULL,
    @Ano INT=NULL,  
	@Ativo varchar(1)
	
AS
BEGIN
    -- Insert statements for procedure here
	SET NOCOUNT ON;
	IF @Ano IS NULL
		BEGIN
			SET @Ano = 0
		END
	IF @Mes IS NULL
		BEGIN
			SET @Mes = 0
		END

	UPDATE [dbo].[Boletim]
	SET	Mes = @Mes
	   ,Ano = @Ano
       ,Ativo = @Ativo
	WHERE IDBoletim=@IDBoletim

END
GO
/****** Object:  StoredProcedure [dbo].[BoletimIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <18/11/2009>
-- Description:	<Insercao de Boletins>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[BoletimIncluir]
-- Add the parameters for the stored procedure here
    @Mes INT=NULL,
    @Ano INT=NULL,  
	@Ativo varchar(1)
AS
BEGIN

	IF @Ano IS NULL
		BEGIN
			SET @Ano = 0
		END
	IF @Mes IS NULL
		BEGIN
			SET @Mes = 0
		END

	INSERT INTO [dbo].[Boletim]
			   ([Mes]
				,[Ano]
				,[Ativo])
		 VALUES
				(@Mes
				,@Ano
				,@Ativo)
	           
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID

END
GO
/****** Object:  UserDefinedFunction [dbo].[BoletimRetornarNome]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <20/11/2009>
-- Description:	<Retornar o Nome do Boletim que é montado através de um Case>
-- Utilizadores: 
--              BoletimSelecionar
--              RegistroSelecionar
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <18/01/2010>
-- Description:	Ajuste na forma de retorna nome, inclundo zero em meses < 10
--------------------------------------------------------------------------------------
-- Author:		<>
-- Create date: <>
-- Description:	<>
--------------------------------------------------------------------------------------
CREATE FUNCTION [dbo].[BoletimRetornarNome](@IDBoletim INT)
RETURNS VARCHAR(23)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @RETORNO VARCHAR(23)

	IF @IDBoletim=0
		BEGIN
			SET @RETORNO = ''
		END
	ELSE
		BEGIN
			
			SET @RETORNO = 
			(
				SELECT 
 				CAST(bo.Ano  as VARCHAR(4))+' - '+
				CAST(CASE bo.Mes
					WHEN NULL THEN '              '
					WHEN 0    THEN '              '
					WHEN 1    THEN '01 - Janeiro  '
					WHEN 2    THEN '02 - Fevereiro'
					WHEN 3    THEN '03 - Março    '
					WHEN 4    THEN '04 - Abril    '
					WHEN 5    THEN '05 - Maio     '
					WHEN 6    THEN '06 - Junho    '
					WHEN 7    THEN '07 - Julho    '
					WHEN 8    THEN '08 - Agosto   '
					WHEN 9    THEN '09 - Setembro '
					WHEN 10   THEN '10 - Outubro  '
					WHEN 11   THEN '11 - Novembro '
					WHEN 12   THEN '12 - Dezembro '
							  ELSE 'Não Informado '
				END AS VARCHAR(16))
				FROM [Boletim] AS bo
				WHERE bo.IDBoletim=@IDBoletim
			)					
		END
	

	IF @RETORNO IS NULL
		BEGIN
			SET @RETORNO = ''
		END

	-- Return the result of the function
	RETURN @RETORNO

END
GO
/****** Object:  UserDefinedFunction [dbo].[BoletimRetornarNomeRelatorio]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <24/02/2010>
-- Description:	<Retornar o Nome do Boletim que é montado através de um Case>
-- Utilizadores: 
--              BoletimSelecionar
--              RegistroSelecionar
--------------------------------------------------------------------------------------
-- Author:		<>
-- Create date: <>
-- Description:	<>
--------------------------------------------------------------------------------------
create FUNCTION [dbo].[BoletimRetornarNomeRelatorio](@IDBoletim INT)
RETURNS VARCHAR(23)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @RETORNO VARCHAR(23)

	IF @IDBoletim=0
		BEGIN
			SET @RETORNO = ''
		END
	ELSE
		BEGIN
			
			SET @RETORNO = 
			(
				SELECT 
				CAST(CASE bo.Mes
					WHEN NULL THEN '         '
					WHEN 0    THEN '         '
					WHEN 1    THEN 'Janeiro  '
					WHEN 2    THEN 'Fevereiro'
					WHEN 3    THEN 'Março    '
					WHEN 4    THEN 'Abril    '
					WHEN 5    THEN 'Maio     '
					WHEN 6    THEN 'Junho    '
					WHEN 7    THEN 'Julho    '
					WHEN 8    THEN 'Agosto   '
					WHEN 9    THEN 'Setembro '
					WHEN 10   THEN 'Outubro  '
					WHEN 11   THEN 'Novembro '
					WHEN 12   THEN 'Dezembro '
							  ELSE 'Não Infor'
				END AS VARCHAR(09))
 				+' de '+CAST(bo.Ano  as VARCHAR(4))
				
				FROM [Boletim] AS bo
				WHERE bo.IDBoletim=@IDBoletim
			)					
		END
	

	IF @RETORNO IS NULL
		BEGIN
			SET @RETORNO = ''
		END

	-- Return the result of the function
	RETURN @RETORNO

END
GO
/****** Object:  UserDefinedFunction [dbo].[RegistroRetornarProximoRegistro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <17/09/2009>
-- Description:	<Retornar o Proximo Numero de Registro da Tabela Registro>
--
-- Author:		<Rossatti Junior>
-- Create date: <09/11/2009>
-- Description:	<Ajuste na verificacao do valor do atributo @PROXIMO>
--
-- =============================================
CREATE FUNCTION [dbo].[RegistroRetornarProximoRegistro] ()
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @PROXIMO int
	

	-- Add the T-SQL statements to compute the return value here
--	SELECT @PROXIMO = TOP 1 Registro FROM Registro order BY [Registro] DESC
	SET @PROXIMO = (SELECT TOP 1 Registro FROM Registro order BY [Registro] DESC)
	
	SET @PROXIMO = @PROXIMO+1

	IF (@PROXIMO IS NULL) OR (@PROXIMO=0)
		BEGIN
			SET @PROXIMO = 1
		END

	-- Return the result of the function
	RETURN @PROXIMO

END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoLoja]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Procedure para Selecionar as LOJAS para a funcionalidade de Selecao>
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: < / / >
-- Alteração :	<> 
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoLoja]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDLoja         int = NULL
,@IDPotencia     INT = NULL
,@IDLojaRegiao	 INT = NULL
,@Codigo         INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 L.IDLoja AS ID          
		,L.Codigo
		,L.Nome 
		,L.Ativo 
	FROM Loja AS L
	WHERE ((@Ativo IS NULL)      OR (L.Ativo = @Ativo))
	  AND ((@Nome IS NULL)       OR (L.Nome LIKE '%'+@Nome + '%'))
	  AND ((@IDLoja IS NULL)     OR (L.IDLoja = @IDLoja))
	  AND ((@IDPotencia IS NULL) OR (L.IDPotencia = @IDPotencia))
	  AND ((@Codigo IS NULL)     OR (L.Codigo = @Codigo))
	ORDER BY L.Nome,L.IDLoja
END
GO
/****** Object:  StoredProcedure [dbo].[LojaAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 27/09/2008
-- DESCRICAO...: Atualizacao de dados na Tabela Loja
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 01/12/2008
-- DESCRICAO...: Inclusão do Atributo da Tabela LojaRegiao (IDLojaRegiao)
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <04/10/2009>
-- Alteração :	<Incluir Atributo Codigo <int> Null> 
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <15/11/2009>
-- Alteração :	<Incluir Atributo Filosofica <varchar(1)> 
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <10/03/2010>
-- Alteração :	<Incluir Atributo IDPotencia> 
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaAlterar]
-- Add the parameters for the stored procedure here
			@IDLoja  INT =NULL
           ,@Ativo VARCHAR(1) =NULL
           ,@Nome  varchar(100) =NULL
           ,@Endereco  varchar(100) =NULL
           ,@EnderecoComplemento  varchar(100) =NULL
           ,@EnderecoBairro  varchar(100) =NULL
           ,@IDCidade  INT =NULL
           ,@Cep  varchar(8) =NULL
           ,@Email  varchar(100) =NULL
           ,@Site varchar(100) =NULL
           ,@DataDeFundacao  DATETIME =NULL
           ,@DiaDeReuniao  INT =NULL
           ,@IDPessoaVeneravel  INT =NULL
           ,@IDPessoaSecretario INT =NULL
           ,@IDPessoaTesoureiro  INT =NULL
           ,@Data  DATETIME =NULL
           ,@CNPJ  varchar(18) =NULL
           ,@IDLojaRegiao  INT	=NULL
           ,@Codigo INT=NULL
           ,@Filosofica varchar(1)=NULL
	       ,@IDPotencia INT=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF (@Filosofica IS NULL)
		BEGIN
			SET @Filosofica = '0'
		END

    -- Insert statements for procedure here
	UPDATE Loja SET
            Ativo=@Ativo 
           ,Nome=@Nome  
           ,Endereco=@Endereco  
           ,EnderecoComplemento=@EnderecoComplemento  
           ,EnderecoBairro=@EnderecoBairro  
           ,IDCidade=@IDCidade  
           ,Cep=@Cep  
           ,Email=@Email  
           ,Site = @Site 
           ,DataDeFundacao=@DataDeFundacao  
           ,DiaDeReuniao=@DiaDeReuniao  
           ,IDPessoaVeneravel=@IDPessoaVeneravel  
           ,IDPessoaSecretario=@IDPessoaSecretario 
           ,IDPessoaTesoureiro=@IDPessoaTesoureiro  
           ,Data=@Data 
           ,CNPJ=@CNPJ 
           ,IDLojaRegiao=@IDLojaRegiao 
		   ,nomeantigo=(CONVERT(varchar(10),codigoantigo)+' '+@Nome)
		   ,Codigo=@Codigo
           ,Filosofica=@Filosofica
           -- quando o sistema estiver mandando o codigo da potencia
           -- retira-se o comentario abaixo:
           --,IDPotencia=@IDPotencia
		   	
	WHERE IDLoja=@IDLoja
END
GO
/****** Object:  UserDefinedFunction [dbo].[LojaRetornarProximoRegistro]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <04/10/2009>
-- Description:	<Retornar o Proximo Numero de Registro da Tabela Loja>
-- =============================================
CREATE FUNCTION [dbo].[LojaRetornarProximoRegistro] ()
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @PROXIMO int

	-- Add the T-SQL statements to compute the return value here
	SET @PROXIMO = (SELECT TOP 1 Codigo FROM Loja order BY [Codigo] DESC)
	
	SET @proximo = @PROXIMO+1
	-- Return the result of the function
	RETURN @PROXIMO

END
GO
/****** Object:  StoredProcedure [dbo].[SolicitacaoSiteSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <29/06/2009>
-- Description:	<Selecionar as Solicitações efetuadas pelo Site>
--
-- Alter date:  <13/07/2009>
-- Description:	<Inclusao do atributo LojaNome>
--
-- Author:		<Mario Rossatti>
-- Create date: <02/09/2010>
-- Description:	<Inclusao do campo DataSessao>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SolicitacaoSiteSelecionar]
 @IDEmpresa             INT 
,@Ativo                 VARCHAR(1) = NULL
,@IDSolicitacaoSite     int        = NULL
,@IDSolicitacaoSiteItem INT        = NULL
,@Status                VARCHAR(1) = NULL
,@StatusData            DATETIME   = NULL

-- CORPO DA PROCEDURE
AS
BEGIN
	
	SELECT 
	       ss.IDSolicitacaoSite
		  ,ss.IDEmpresa
		  ,ss.IDLoja
		  ,ss.DataInclusao
		  ,ss.IDObreiro
		  ,ss.Descricao
		  ,ss.Ativo
		  ,ss.IDSolicitacaoSiteItem
		  ,ss.Status
		  ,ss.StatusData
		  ,si.Nome AS SolicitacaoSiteItemNome
		  ,lo.Nome AS LojaNome
		  ,ss.DataSessao		  
          ,CONVERT(varchar(10),ss.DataSessao,103) as DataSessaoTxt		  
          ,CONVERT(varchar(10),ss.StatusData,103) as StatusDataTxt		  
          ,CONVERT(varchar(10),ss.DataInclusao,103) as DataInclusaoTxt
          
	  FROM dbo.SolicitacaoSite ss
	  LEFT OUTER JOIN SolicitacaoSiteItem si ON (si.IDSolicitacaoSiteItem=ss.IDSolicitacaoSiteItem)
	  LEFT OUTER JOIN Loja lo on (lo.IDLoja=ss.IDLoja)

		WHERE ss.IDEmpresa=@IDEmpresa
		  AND ((@Ativo IS NULL)                 OR (ss.[Ativo] = @Ativo))
		  AND ((@IDSolicitacaoSiteItem IS NULL) OR (ss.[IDSolicitacaoSiteItem]=@IDSolicitacaoSiteItem))
		  AND ((@IDSolicitacaoSite IS NULL)     OR (ss.[IDSolicitacaoSite]    =@IDSolicitacaoSite))
		  AND ((@Status IS NULL)                OR (ss.[Status]               =@Status))
		  AND ((@StatusData IS NULL)            OR (ss.[StatusData]           =@StatusData))
		ORDER BY ss.IDSolicitacaoSite
	  
END
GO
/****** Object:  StoredProcedure [dbo].[LojaObreiroSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <20/04/2010>
-- Description:	<Selecionar As Lojas e o Numero Total de Obreiro Ativos em Um Mes>
--
-- Author:		<Mario Rossatti>
-- Create date: <13/08/2010>
-- Description:	<Inclusão do Atributo de Data>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/09/2010>
-- Description:	<Insercao do Atributo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaObreiroSelecionar]
    @IDEmpresa     INT,
	@Ativo         VARCHAR(1) = NULL,
	@IDLojaObreiro INT = NULL,
	@IDLoja        INT = NULL,
	@Ano           INT = NULL,
	@Mes           INT = NULL,
	@Data          DATETIME = NULL
	
-- CORPO DA PROCEDURE
AS
BEGIN

	SELECT lo.IDEmpresa
	      ,lo.IDLojaObreiro AS ID
	      ,lo.IDLoja
		  ,lo.Mes
		  ,lo.Ano
		  ,lo.Ativo
		  ,lo.Total
		  ,lo.data
		  ,l.Nome as NomeLoja
		  ,dbo.RetornarNomeDoMes(lo.Mes) AS NomeDoMes
	FROM dbo.LojaObreiro as lo
	LEFT OUTER JOIN Loja l ON (l.IDLoja = lo.IDLoja)	
	WHERE   (lo.IDEmpresa=@IDEmpresa)
	  AND ( (@Ativo IS NULL)  OR (lo.Ativo  =@Ativo) )
	  AND ( (@IDLoja IS NULL) OR (lo.IDLoja =@IDLoja) )	  
	  AND ( (@Ano IS NULL)    OR (lo.Ano    =@Ano) )
	  AND ( (@Mes IS NULL)    OR (lo.Mes    =@Mes) )
	  AND ( (@IDLojaObreiro IS NULL) OR (lo.IDLojaObreiro=@IDLojaObreiro) )	  
	  AND ( (@Data IS NULL)   OR (lo.Data=@Data) )
	  
    ORDER BY NomeLoja, lo.IDLoja , lo.Ano DESC, lo.Mes DESC , IDLojaObreiro

END
GO
/****** Object:  StoredProcedure [dbo].[TelefoneLojaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <23/09/2008>
-- Description:	<Selecionar os Telefones das Lojas>
--
-- Author     :	Mario Rossatti
-- Create date: 27/04/2010
-- Versão     : 2010.05.01
-- Description:	Inclusão de TipoTelefoneNome
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[TelefoneLojaSelecionar]
 @Ativo VARCHAR(1)
,@Telefone VARCHAR(100) = null
,@IDLoja   INT = NULL
,@IDCenso INT=null
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	Tele.Ativo
		,Tele.Telefone
		,Tele.TipoTelefone
		,Tele.IDPessoa
		,Tele.IDLoja
		,Tele.IDPotencia
		,Tele.IDTelefone
		,loja.Nome AS Nome
		,Tele.Emergencia
		,cns.Nome AS CensoNome
		,tele.[IDCenso]
        ,CASE Tele.TipoTelefone	
		 WHEN 0 THEN 'Comercial  '			
		 WHEN 1 THEN 'Residencial'
         WHEN 2 THEN 'Fax        '
         WHEN 3 THEN 'Celular    '
		 END AS TipoTelefoneNome				        
		
	FROM [Telefone] AS Tele
		LEFT OUTER JOIN [Censo] AS Cns  ON (cns.[IDCenso]=tele.[IDCenso])
		LEFT OUTER JOIN Loja    AS loja ON (loja.IDLoja=Tele.IDLoja)
	WHERE ((@Ativo IS NULL)    OR (Tele.Ativo = @Ativo))
	  AND ((@Telefone IS NULL) OR (Tele.Telefone LIKE '%'+@Telefone + '%'))	  
	  AND ((@IDLoja IS NULL)   OR (Tele.IDLoja=@IDLoja))
	  AND ((@IDCenso IS NULL)  OR (Tele.IDCenso=@IDCenso))	  	  
	ORDER BY Tele.Telefone,Tele.IDTelefone
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaPlacetVerificarPlacet]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================================================
-- Author:		<Mario Rossatti>
-- Create date: <13/09/2009>
-- Description:	<Verificar Se o Placet é Utilizado>
-- ================================================================================
CREATE PROCEDURE [dbo].[PessoaPlacetVerificarPlacet]
	-- Add the parameters for the stored procedure here
	@Placet INT 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT placet FROM pessoaplacet WHERE placet=@Placet
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaPlacetIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/09/2009>
-- Description:	<Insercao de dados na Tabela PessoaPlacet>
--				< Valores do PlacetTipo: 
--				0 - Não Informado
--				1 - Iniciação
--				2 - Elevacao
--				3 - Exaltação
--				4 - Instalação
--				5 - Desligamento
--				6 -	Filiação
--				7 - Regularização
--				8 - Eliminação
--				9 - Rejeição
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaPlacetIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo      varchar(1),
	@IDPessoa   INT,
	@IDLoja     INT,
	@Placet     INT,
    @Data       DATETIME,
    @PlacetTipo INT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

-- Inclui o Novo Placet
	INSERT INTO [dbo].[PessoaPlacet]
           ([IDPessoa]
           ,[IDLoja]
           ,[Data]
           ,[Placet]
           ,[PlacetTipo]
           ,[Ativo])
     VALUES
           (@IDPessoa
           ,@IDLoja
           ,@Data
           ,@Placet
           ,@PlacetTipo
           ,@Ativo)
--  Guarda o ID incluido
	DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	

-- Atualiza a Tabela de parametros com o valor do Ultimo Placet	
	UPDATE [dbo].[Adm] SET [Placet]=@Placet WHERE [IDAdm]=1

-- Desativar o Placet de mesmo tipo, pois só pode haver um placet ativo de um mesmo tipo
	UPDATE [dbo].[PessoaPlacet] SET [Ativo] = '1'
	 WHERE IDPessoa=@IDPessoa AND PlacetTipo=@PlacetTipo

-- TRECHO PROVISORIO (INICIO)
-- Este Trecho de Codigo sera excliodo posteriormente
-- Ele Atualiza a Tabela Pessoa Dados

	    -- Iniciação
	IF @PlacetTipo=1      UPDATE [dbo].PessoaDados SET [IniciacaoPlacet]    =@Placet, [IniciacaoData]    =@Data, [IniciacaoIDLoja]    =@IDLoja WHERE [IDPessoa]=@IDPessoa		
		-- 'Elevacao'
	ELSE IF @PlacetTipo=2 UPDATE [dbo].PessoaDados SET [ElevacaoPlacet]     =@Placet, [ElevacaoData]     =@Data, [ElevacaoIDLoja]     =@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Exaltação'
	ELSE IF @PlacetTipo=3 UPDATE [dbo].PessoaDados SET [ExaltacaoPlacet]    =@Placet, [ExaltacaoData]    =@Data, [ExaltacaoIDLoja]    =@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Instalação'
	ELSE IF @PlacetTipo=4 UPDATE [dbo].PessoaDados SET [InstalacaoPlacet]   =@Placet, [InstalacaoData]   =@Data, [InstalacaoIDloja]   =@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Desligamento'
	ELSE IF @PlacetTipo=5 UPDATE [dbo].PessoaDados SET [DesligamentoPlacet] =@Placet, [DesligamentoData] =@Data, [DesligamentoIDLoja] =@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Filiação'
	ELSE IF @PlacetTipo=6 UPDATE [dbo].PessoaDados SET [FiliacaoPlacet]     =@Placet, [FiliacaoData]     =@Data, [FiliacaoIDloja]     =@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Regularização'
	ELSE IF @PlacetTipo=7 UPDATE [dbo].PessoaDados SET [RegularizacaoPlacet]=@Placet, [RegularizacaoData]=@Data, [RegularizacaoIDLoja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Eliminação'
	ELSE IF @PlacetTipo=8 UPDATE [dbo].PessoaDados SET [EliminacaoPlacet]   =@Placet, [EliminacaoData]   =@Data, [ElevacaoIDLoja]     =@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Rejeição'
	ELSE IF @PlacetTipo=9 UPDATE [dbo].PessoaDados SET [RejeicaoPlacet]     =@Placet, [RejeicaoData]     =@Data, [RejeicaoIDLoja]     =@IDLoja WHERE [IDPessoa]=@IDPessoa
	
/*		
	CASE @PlacetTipo	    
		WHEN 1	THEN UPDATE [dbo].PessoaDados SET [IniciacaoPlacet]=@Placet, [IniciacaoData]=@Data,[IniciacaoIDLoja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Elevacao'
		WHEN 2	THEN UPDATE [dbo].PessoaDados SET [ElevacaoPlacet]=@Placet,[ElevacaoData]=@Data,[ElevacaoIDLoja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Exaltação'
		WHEN 3	THEN UPDATE [dbo].PessoaDados SET [ExaltacaoPlacet]=@Placet, [ExaltacaoData]=@Data, [ExaltacaoIDLoja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Instalação'
		WHEN 4	THEN UPDATE [dbo].PessoaDados SET [InstalacaoPlacet]=@Placet, [InstalacaoData]=@Data,[InstalacaoIDloja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Desligamento'
		WHEN 5	THEN UPDATE [dbo].PessoaDados SET [DesligamentoPlacet]=@Placet, [DesligamentoData]=@Data, [DesligamentoIDLoja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Filiação'
		WHEN 6	THEN UPDATE [dbo].PessoaDados SET [FiliacaoPlacet]=@Placet,[FiliacaoData]=@Data, [FiliacaoIDloja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Regularização'
		WHEN 7	THEN UPDATE [dbo].PessoaDados SET [RegularizacaoPlacet]@Placet, [RegularizacaoData]=@Data,[RegularizacaoIDLoja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Eliminação'
		WHEN 8	THEN UPDATE [dbo].PessoaDados SET [EliminacaoPlacet]=@Placet,[EliminacaoData]=@Data,[ElevacaoIDLoja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
		-- 'Rejeição'
		WHEN 9	THEN UPDATE [dbo].PessoaDados SET [RejeicaoPlacet]=@Placet, [RejeicaoData]=@Data, [RejeicaoIDLoja]=@IDLoja WHERE [IDPessoa]=@IDPessoa
	END
*/	
-- TRECHO PROVISORIO (FIM)
	--- Retorna o ID Incluido
	 SELECT @ID AS id
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaPlacetAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/09/2009>
-- Description:	<Alteração de dados na Tabela PessoaPlacet>
-- Description:	<Tabela de Placet dos Obreiros>
--				< Valores do PlacetTipo: 
--				0 - Não Informado
--				1 - Iniciação
--				2 - Elevacao
--				3 - Exaltação
--				4 - Instalação
--				5 - Desligamento
--				6 -	Filiação
--				7 - Regularização
--				8 - Eliminação
--				9 - Rejeição
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaPlacetAlterar]
	-- Add the parameters for the stored procedure here
	@IDPessoaPlacet INT,
	@Ativo    varchar(1),
	@IDPessoa int,
	@IDLoja   INT,
	@Placet   INT,
    @Data     DATETIME,
    @PlacetTipo INT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[PessoaPlacet]
	   SET [IDPessoa]   = @IDPessoa
		  ,[IDLoja]     = @IDLoja 
		  ,[Data]       = @Data
		  ,[Placet]     = @Placet
		  ,[PlacetTipo] = @PlacetTipo
		  ,[Ativo]      = @Ativo
	 WHERE IDPessoaPlacet=@IDPessoaPlacet
	 
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaTelefoneIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <30/08/2010>
-- Description:	<Insercao de dados na Tabela de Telefones de Empresas>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaTelefoneIncluir]
	-- Add the parameters for the stored procedure here
	 @Ativo varchar(1) 
	,@IDEmpresa INT
	,@Telefone varchar(100)
	,@TipoTelefone INT
	,@Emergencia VARCHAR(1) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO EmpresaTelefone(
	Ativo,  Telefone, TipoTelefone, IDEmpresa, Emergencia) 
	values(
	@Ativo,@Telefone,@TipoTelefone,@IDEmpresa,@Emergencia)
	
    DECLARE @ID INT
    SET @ID = SCOPE_IDENTITY()	
    SELECT @ID AS ID
    
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaTelefoneExcluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 30/08/2010
-- DESCRICAO...: Exclusão Lógica de Registro
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaTelefoneExcluir]
-- Add the parameters for the stored procedure here
	 @IDEmpresaTelefone INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE EmpresaTelefone SET
		 Ativo='1'
	WHERE IDEmpresaTelefone=@IDEmpresaTelefone
	
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaTelefoneAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 30/08/2010
-- DESCRICAO...: Atualizacao de dados na Tabela de Telefones das Empresas
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaTelefoneAlterar]
-- Add the parameters for the stored procedure here
	 @IDEmpresaTelefone INT
	,@Ativo varchar(1) 
	,@Telefone varchar(100)
	,@TipoTelefone INT
	,@Emergencia VARCHAR(1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE EmpresaTelefone SET
		 Ativo       =@Ativo
		,Telefone    =@Telefone
		,TipoTelefone=@TipoTelefone
		,Emergencia  =@Emergencia
	WHERE IDEmpresaTelefone  =@IDEmpresaTelefone	
END
GO
/****** Object:  StoredProcedure [dbo].[TelefoneAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 23/09/2008
-- DESCRICAO...: Atualizacao de dados na Tabela de Telefones
--
-- Autor      :	<Mario Rossatti>
-- Alterado em: <23/02/2009>
-- Description:	Inclusão do atributo Emergencia
--
-- Author:		<Mario Rossatti>
-- Create date: <28/09/2009>
-- Description:	<Inclusão de atributo IDCenso>
--
-- Author     :	<Mario Rossatti>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Inclusão de atributo IDEmpresa>
--
-- Author     :	<Mario Rossatti>
-- Create date: <12/08/2010>
-- Versão     : <2010.08.16>
-- Description:	<Inclusão de atributo IDPessoaFamilia>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[TelefoneAlterar]
-- Add the parameters for the stored procedure here
	 @IDTelefone INT
	,@Ativo varchar(1) 
	,@Telefone varchar(100)
	,@TipoTelefone INT
	,@IDPessoa INT = NULL
	,@IDLoja INT = NULL	
	,@IDPotencia INT = NULL
	,@Emergencia VARCHAR(1) = NULL
	,@IDCenso INT=NULL	
	,@IDEmpresa INT=NULL	
	,@IDPessoaFamilia INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE Telefone SET
		 Ativo       =@Ativo
		,Telefone    =@Telefone
		,TipoTelefone=@TipoTelefone
		,IDPessoa    =@IDPessoa
		,IDPotencia  =@IDPotencia
		,IDLoja      =@IDLoja 
		,Emergencia  =@Emergencia
		,IDCenso     =@IDCenso
		,IDEmpresa   =@IDEmpresa
		,IDPessoaFamilia=@IDPessoaFamilia
	WHERE IDTelefone  =@IDTelefone	
END
GO
/****** Object:  StoredProcedure [dbo].[TelefoneIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <09/08/2008>
-- Description:	<Insercao de dados na Tabela Tipos de Pessoa>
--
-- Autor      :	<Mario Rossatti>
-- Alterado em: <23/02/2009>
-- Description:	Inclusão do atributo Emergencia
--
-- Author:		<Mario Rossatti>
-- Create date: <28/09/2009>
-- Description:	<Inclusão de atributo IDCenso>
--
-- Author     :	<Mario Rossatti>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Inclusão de atributo IDEmpresa>
--
-- Author     :	<Mario Rossatti>
-- Create date: <12/08/2010>
-- Versão     : <2010.08.16>
-- Description:	<Inclusão de atributo IDPessoaFamilia>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[TelefoneIncluir]
	-- Add the parameters for the stored procedure here
	 @Ativo varchar(1) 
	,@Telefone varchar(100)
	,@TipoTelefone INT
	,@IDPessoa INT = NULL
	,@IDPotencia INT = NULL
	,@IDLoja INT = NULL
	,@Emergencia VARCHAR(1) = NULL
	,@IDCenso INT=NULL	
	,@IDEmpresa INT=NULL
	,@IDPessoaFamilia INT = NULL			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Telefone(
	Ativo,  Telefone, TipoTelefone, IDPessoa, IDPotencia, IDLoja, Emergencia,IDCenso,IDEmpresa,IDPessoaFamilia) 
	values(
	@Ativo,@Telefone,@TipoTelefone,@IDPessoa,@IDPotencia,@IDLoja,@Emergencia,@IDCenso,@IDEmpresa,@IDPessoaFamilia)
	
    DECLARE @ID INT
    SET @ID = SCOPE_IDENTITY()	
    SELECT @ID AS ID
    
END
GO
/****** Object:  StoredProcedure [dbo].[TelefoneExcluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 05/11/2009
-- DESCRICAO...: Exclusão Lógica de Registro
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[TelefoneExcluir]
-- Add the parameters for the stored procedure here
	 @IDTelefone INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE Telefone SET
		 Ativo='1'
	WHERE IDTelefone=@IDTelefone
	
END
GO
/****** Object:  StoredProcedure [dbo].[TelefonePessoaFamiliaSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	Mario Rossatti
-- Create date: 12/08/2010
-- Versão     : 2010.08.16
-- Description:	Criação da Procedure
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[TelefonePessoaFamiliaSelecionar]
 @Ativo VARCHAR(1)
,@Telefone VARCHAR(100) = null
,@IDPessoaFamilia INT = NULL
,@Emergencia VARCHAR(1) = NULL
,@IDCenso INT=null
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT	 
	     Tele.Ativo
		,Tele.Telefone
		,Tele.TipoTelefone
		--,Tele.IDPessoa
		,Tele.IDPessoaFamilia as IDPessoa
		,Tele.IDLoja
		,Tele.IDPotencia
		,Tele.IDTelefone
		--,Pes.Nome AS Nome
		,fa.Nome as Nome
		,tele.Emergencia
		,tele.IDCenso
		,cns.Nome AS CensoNome		
        ,CASE WHEN tele.Emergencia=1 THEN 'Sim' ELSE 'Não' END AS EmergenciaNome
        ,CASE Tele.TipoTelefone	
		 WHEN 0 THEN 'Comercial  '			
		 WHEN 1 THEN 'Residencial'
         WHEN 2 THEN 'Fax        '
         WHEN 3 THEN 'Celular    '
		 END AS TipoTelefoneNome				        
	FROM Telefone AS Tele
--		LEFT OUTER JOIN Pessoa AS pes ON (pes.IDPessoa=Tele.IDPessoa)	
		LEFT OUTER JOIN PessoaFamilia AS fa ON (fa.IDPessoaFamilia=Tele.IDPessoaFamilia)	
		LEFT OUTER JOIN Censo  AS Cns ON (cns.IDCenso=tele.IDCenso)
	WHERE ((@Ativo IS NULL)           OR (Tele.Ativo = @Ativo))
	  AND ((@Telefone IS NULL)        OR (Tele.Telefone LIKE '%'+@Telefone + '%'))	  
	  AND ((@IDPessoaFamilia IS NULL) OR (Tele.IDPessoaFamilia =@IDPessoaFamilia))
	  AND ((@Emergencia IS NULL)      OR (Tele.Emergencia=@Emergencia))
	  AND ((@IDCenso IS NULL)         OR (Tele.IDCenso=@IDCenso))
	ORDER BY Tele.Telefone,Tele.IDTelefone
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaEnderecoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <27/09/2009>
-- Description:	<Atualizacao de dados na Tabela PessoaEndereco>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaEnderecoAlterar]
	-- Add the parameters for the stored procedure here
			@IDPessoaEndereco INT
           ,@IDPessoa INT=NULL
           ,@Ativo VARCHAR(1)=NULL
           ,@Endereco  VARCHAR(200)=NULL
           ,@EnderecoBairro VARCHAR(100)=NULL
           ,@EnderecoIDCidade INT=NULL
           ,@DataInclusao DATETIME=NULL
           ,@DataDesativacao DATETIME=NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[PessoaEndereco]	
		SET [IDPessoa] = @IDPessoa
		,[Ativo] = @Ativo
		,[Endereco] = @Endereco
		,[EnderecoBairro] = @EnderecoBairro
		,[EnderecoIDCidade] = @EnderecoIDCidade
		,[DataInclusao] = @DataInclusao
		,[DataDesativacao] = @DataDesativacao
	WHERE IDPessoaEndereco=@IDPessoaEndereco
 
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaEnderecoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <27/09/2009>
-- Description:	<Insercao de dados na PessoaEndereco>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaEnderecoIncluir]
	-- Add the parameters for the stored procedure here
            
            @IDPessoa INT=NULL
           ,@Ativo VARCHAR(1)=NULL
           ,@Endereco  VARCHAR(200)=NULL
           ,@EnderecoBairro VARCHAR(100)=NULL
           ,@EnderecoIDCidade INT=NULL
           ,@DataInclusao DATETIME=NULL
           ,@DataDesativacao DATETIME=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE PessoaEndereco SET Ativo='1', DataDesativacao=GETDATE() where IDPessoa=@IDPessoa AND Ativo='0'	

	-- Inclui o Novo Endereco          
	INSERT INTO [dbo].[PessoaEndereco]
           (
            [IDPessoa]
           ,[Ativo]
           ,[Endereco]
           ,[EnderecoBairro]
           ,[EnderecoIDCidade]
           ,[DataInclusao]
           ,[DataDesativacao])
     VALUES
           (            
            @IDPessoa
           ,@Ativo
           ,@Endereco
           ,@EnderecoBairro
           ,@EnderecoIDCidade
           ,@DataInclusao
           ,@DataDesativacao
           )
 -- Guarda o ID incluido
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
 -- Retorna o ID Incluido
	SELECT @ID AS id	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaFamiliaIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <19/08/2008>
-- Description:	<Insercao de dados na Tabela Pessoa Familia>
--
-- Author:		<Mario Rossatti>
-- Create date: <25/02/2009>
-- Description:	<Inclusão dos atributos Endereco,enderecoBairro,EnderecoIDCidade>
--
-- Author:		<Mario Rossatti>
-- Create date: <17/03/2009>
-- Description:	<Inclusão dos atributos  peculio>
--
-- Author:		<Mario Rossatti>
-- Create date: <28/09/2009>
-- Description:	<Inclusão de atributo IDCenso>
--
-- Author:		<Mario Rossatti>
-- Create date: <12/08/2010>
-- Description:	<Inclusão de atributo Email>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaFamiliaIncluir]
-- Add the parameters for the stored procedure here
     @Ativo VARCHAR(1) 
    ,@IDPessoa int
    ,@Nome varchar(100)=NULL
    ,@IDPessoaGrauParentesco INT=NULL
    ,@DataNascimento DATETIME=NULL
	,@Sexo varchar(1) = NULL
    ,@IDPessoaProfissao INT = NULL
    ,@Endereco VARCHAR(100) = NULL
    ,@EnderecoBairro VARCHAR(100) = NULL
    ,@EnderecoIDCidade INT = NULL
    ,@Peculio VARCHAR(1) = Null
	,@IDCenso INT = NULL    
	,@Email VARCHAR(100) = NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO dbo.PessoaFamilia
			   (
			    IDPessoa
			   ,Ativo
			   ,Nome
			   ,Sexo
			   ,IDPessoaGrauParentesco
			   ,IDPessoaProfissao
			   ,DataNascimento
			   ,Endereco
			   ,EnderecoBairro
			   ,EnderecoIDCidade
			   ,Peculio
			   ,IDCenso
			   ,Email
			   )
		 VALUES
			   (
				 @IDPessoa
				,@Ativo	
			    ,@Nome
			    ,@Sexo
			    ,@IDPessoaGrauParentesco
			    ,@IDPessoaProfissao
			    ,@DataNascimento
			    ,@Endereco
			    ,@EnderecoBairro
			    ,@EnderecoIDCidade
			    ,@Peculio
			    ,@IDCenso
			    ,@Email
			   )
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaFamiliaAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 03/10/2008
-- DESCRICAO...: Atualizacao de dados na Tabela PessoaFamilia
--
-- Author:		<Mario Rossatti>
-- Create date: <25/02/2009>
-- Description:	<Inclusão dos atributos Endereco,enderecoBairro,EnderecoIDCidade e peculio>
--
-- Author:		<Mario Rossatti>
-- Create date: <17/03/2009>
-- Description:	<Inclusão dos atributos Peculio>
--
-- Author:		<Mario Rossatti>
-- Create date: <28/09/2009>
-- Description:	<Inclusão de atributo IDCenso>
--
-- Author:		<Mario Rossatti>
-- Create date: <12/08/2010>
-- Description:	<Inclusão de atributo Email>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaFamiliaAlterar]
	-- Add the parameters for the stored procedure here
	 @IDPessoaFamilia INT
	,@Ativo varchar(1)
	,@IDPessoa INT = NULL
    ,@Nome varchar(100) = NULL
    ,@IDPessoaGrauParentesco INT = NULL
    ,@DataNascimento DATETIME = NULL
    ,@Sexo varchar(1) = NULL
    ,@IDPessoaProfissao INT = NULL
	,@Endereco VARCHAR(100) = NULL
    ,@EnderecoBairro VARCHAR(100) = NULL
    ,@EnderecoIDCidade INT = NULL
    ,@Peculio VARCHAR(1) = NULL    
	,@IDCenso INT = NULL        
	,@Email VARCHAR(100) = NULL
AS
BEGIN
	UPDATE dbo.PessoaFamilia
	   SET IDPessoa = @IDPessoa
		  ,Nome = @Nome
		  ,IDPessoaGrauParentesco = @IDPessoaGrauParentesco
		  ,DataNascimento = @DataNascimento
		  ,Sexo = @Sexo
		  ,IDPessoaProfissao = @IDPessoaProfissao
		  ,Ativo = @Ativo
		  ,Endereco= @Endereco
		  ,EnderecoBairro = @EnderecoBairro
		  ,EnderecoIDCidade = @EnderecoIDCidade
		  ,Peculio = @Peculio
		  ,IDCenso = @IDCenso
		  ,Email = @Email
	 WHERE IDPessoaFamilia = @IDPessoaFamilia	 
 END
GO
/****** Object:  StoredProcedure [dbo].[PessoaFamiliaExcluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ========================================================================================
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 05/11/2009
-- DESCRICAO...: Exclusão Logica de Registro
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaFamiliaExcluir]
	-- Add the parameters for the stored procedure here
	 @IDPessoaFamilia INT
AS
BEGIN
	UPDATE [dbo].[PessoaFamilia]
	   SET [Ativo] = '1'
	 WHERE IDPessoaFamilia = @IDPessoaFamilia	 
 END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioItensAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <11/01/2009>
-- Description:	<Atualizacao de dados na Tabela de Itens de Patrimonio>

-- Author:		<Rossatti,Junior>
-- Modify date: <03/06/2009>
-- Description:	<Insercao do Campo situação do bem valores possiveis:
--		  		0 -	Bom, 1 - Regular, 2 - Inservível               >
--
-- Author:		<Rossatti,Junior>
-- Modify date: <22/07/2009>
-- Description:	< Incluir atributo IDLoja
--
-- Author:		<Rossatti,Junior>
-- Modify date: <27/07/2009>
-- Description:	< Incluir atributo ValorDeCompra
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioItensAlterar]
	-- Add the parameters for the stored procedure here
	 @IDPatrimonioItens [int]
	,@Ativo varchar(1)
	,@Nome varchar(100) 
	,@Tombo [int] 
	,@TomboData [datetime] 
	,@TomboNota [varchar](50)
	,@IDLotacao [int] 
	,@IDPatrimonioItensTipo [int] 
	,@IDPessoaFabricante [int] 
	,@IDPessoaFornecedor [int] 
	,@ItemInservivelData [datetime] 
	,@Situacao VARCHAR(1)
	,@IDLoja [int] 
	,@ValorDeCompra decimal(18,2) = 0  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @ValorDeCompra IS NULL 
		BEGIN
			SET @ValorDeCompra = 0
		END
  --ENDIF
  
	UPDATE [dbo].[PatrimonioItens]
	   SET	[Nome]   = @Nome
			,[Ativo] = @Ativo
			,[Tombo] = @Tombo
			,[TomboData] = @TomboData
			,[TomboNota] = @TomboNota
			,[IDLotacao] = @IDLotacao
			,[IDPatrimonioItensTipo] = @IDPatrimonioItensTipo
			,[IDPessoaFabricante] = @IDPessoaFabricante
			,[IDPessoaFornecedor] = @IDPessoaFornecedor
			,[ItemInservivelData] = @ItemInservivelData
			,[Situacao]     = @Situacao
			,[IDLoja]       = @IDLoja
			,[ValorDeCompra]= @ValorDeCompra
		  
	 WHERE IDPatrimonioItens=@IDPatrimonioItens
	 
END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioItensIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <11/01/2009>
-- Description:	<Insercao de dados na Tabela de Itens de Patrimonio>

-- Author:		<Rossatti,Junior>
-- Modify date: <03/06/2009>
-- Description:	<Insercao do Campo situação do bem valores possiveis:
--		  		0 -	Bom, 1 - Regular, 2 - Inservível               >
--
-- Author:		<Rossatti,Junior>
-- Modify date: <22/07/2009>
-- Description:	< Incluir atributo IDLoja
--
-- Author:		<Rossatti,Junior>
-- Modify date: <27/07/2009>
-- Description:	< Incluir atributo ValorDeCompra
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioItensIncluir]
	-- Add the parameters for the stored procedure here
		 @Ativo varchar(1) 
		,@Nome varchar(100)
		,@Tombo [int] 
		,@TomboData [datetime] 
		,@TomboNota [varchar](50)
		,@IDLotacao [int] 
		,@IDPatrimonioItensTipo [int] 
		,@IDPessoaFabricante [int] 
		,@IDPessoaFornecedor [int] 
		,@ItemInservivelData [datetime] 
		,@Situacao varchar(1)
		,@IDLoja [int]
		,@ValorDeCompra decimal(18,2) = 0  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @Situacao IS NULL
		BEGIN
			SET @situacao='0'
		END
		
	IF @ValorDeCompra IS NULL 
		BEGIN
			SET @ValorDeCompra = 0
		END
  --ENDIF
		
	INSERT INTO [dbo].[PatrimonioItens]
			   (
				 [Nome]
				,[Tombo]
			    ,[TomboData]
				,[TomboNota]
				,[IDLotacao]
				,[IDPatrimonioItensTipo]
				,[IDPessoaFabricante]
				,[IDPessoaFornecedor]
				,[ItemInservivelData]			   
			    ,[Ativo]
			    ,[Situacao]
			    ,[IDLoja]
			    ,[ValorDeCompra]
			   )
		 VALUES
			   (
				 @Nome
				,@Tombo
			    ,@TomboData
				,@TomboNota
				,@IDLotacao
				,@IDPatrimonioItensTipo
				,@IDPessoaFabricante
				,@IDPessoaFornecedor
				,@ItemInservivelData			   
			    ,@Ativo	   
			    ,@Situacao
			    ,@IDLoja
			    ,@ValorDeCompra
			   )
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaFotolAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <01/03/2009>
-- Description:	<Atualizacao de dados na Tabela PessoaFoto>
--
-- Author:		<Mario Rossatti>
-- Create date: <22/04/2010>
-- Description:	<Incluir Atributo IDPessoaFamilia>
--
-- Author:		<Mario Rossatti>
-- Create date: <24/08/2010>
-- Description:	<Incluir Atributo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaFotolAlterar]
	-- Add the parameters for the stored procedure here
	 @IDPessoaFoto INT = NULL
	,@IDPessoa INT = NULL
	,@IDPessoaFamilia INT = NULL
    ,@IDEmpresa INT = NULL
			
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[PessoaFoto]
	   SET [Ativo] = '1'
	WHERE ((@IDPessoaFoto IS NULL)    OR (IDPessoaFoto=@IDPessoaFoto))
	  AND ((@IDPessoa IS NULL)        OR (IDPessoa=@IDPessoa))
	  AND ((@IDPessoaFamilia IS NULL) OR (IDPessoaFamilia=@IDPessoaFamilia))
	  AND ((@IDEmpresa IS NULL)       OR (IDEmpresa=@IDEmpresa))

 END
GO
/****** Object:  StoredProcedure [dbo].[PessoaFotoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <01/03/2008>
-- Description:	<Insercao de dados na Tabela Pessoa Foto>
--
-- Author:		<Mario Rossatti>
-- Create date: <22/04/2010>
-- Description:	<Incluir Atributo IDPessoaFamilia>
--
-- Author:		<Mario Rossatti>
-- Create date: <24/08/2010>
-- Description:	<Incluir Atributo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaFotoIncluir]
	-- Add the parameters for the stored procedure here
	 @Ativo varchar(1)
	,@IDPessoa INT = NULL
	,@IDPessoaFamilia INT = NULL
    ,@IDEmpresa INT = NULL
	,@Foto     IMAGE
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[PessoaFoto]
           (
            IDPessoa
           ,Ativo
           ,FotoData
           ,Foto
           ,IDPessoaFamilia
           ,IDEmpresa
           )
    VALUES
           (
            @IDPessoa
           ,@Ativo
           ,GETDATE()
           ,@Foto
           ,@IDPessoaFamilia
           ,@IDEmpresa
           )
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaFotoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <01/03/2009>
-- Description:	<Selecionar as Fotografias da Pessoa>
--
-- Author:		<Mario Rossatti>
-- Create date: <22/04/2010>
-- Description:	<Incluir Atributo IDPessoaFamilia>
--
-- Author:		<Mario Rossatti>
-- Create date: <24/08/2010>
-- Description:	<Incluir Atributo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaFotoSelecionar]
 @Ativo        VARCHAR(1) = NULL
,@IDPessoa     INT = NULL
,@IDPessoaFoto INT = NULL
,@IDPessoaFamilia INT = NULL
,@IDEmpresa INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT [IDPessoaFoto]
		  ,[IDPessoa]
		  ,[Ativo]
		  ,[Foto]
		  ,[FotoData]
		  ,[IDPessoaFamilia]
		  ,[IDEmpresa]
	FROM [dbo].[PessoaFoto]
	WHERE ((@Ativo IS NULL)        OR (Ativo       = @Ativo))
	  AND ((@IDPessoa IS NULL)     OR (IDPessoa    = @IDPessoa))	  
	  AND ((@IDPessoaFoto IS NULL) OR (IDPessoaFoto= @IDPessoaFoto))
	  AND ((@IDPessoaFamilia IS NULL) OR (IDPessoaFamilia= @IDPessoaFamilia))
	  AND ((@IDEmpresa IS NULL) OR (IDEmpresa= @IDEmpresa))
	ORDER BY [IDPessoa],[IDPessoaFoto],[FotoData]
END
GO
/****** Object:  StoredProcedure [dbo].[SolicitacaoSiteIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		Mario Rossatti
-- Create date: 17/08/2010
-- Versão     : 2010.08.17
-- Description:	Incluir Solicitações vinda do Site
--
-- Author:		<Mario Rossatti>
-- Create date: <02/09/2010>
-- Description:	<Inclusao do campo DataSessao e Atributo DataSessao>
--
-- Author     :	
-- Create date: 
-- Versão     : 
-- Description:	
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SolicitacaoSiteIncluir]
 @IDEmpresa INT
,@IDLoja INT
,@IDSolicitacaoSiteItem INT
,@Descricao VARCHAR(200) = NULL
,@IDObreiro INT = NULL
,@DataSessao DATETIME = NULL

-- CORPO DA PROCEDURE
AS
BEGIN

	INSERT INTO dbo.SolicitacaoSite
           (IDEmpresa
           ,IDLoja
           ,DataInclusao
           ,IDObreiro
           ,Descricao
           ,Ativo
           ,IDSolicitacaoSiteItem
           ,Status
           ,StatusData
           ,DataSessao)
     VALUES
           (@IDEmpresa 
           ,@IDLoja
           ,GETDATE()
           ,@IDObreiro
           ,@Descricao
           ,'0'
           ,@IDSolicitacaoSiteItem
           ,0
           ,GETDATE()
           ,@DataSessao)
           
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID           
	 
END
GO
/****** Object:  StoredProcedure [dbo].[SolicitacaoSiteItemIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	Mario Rossatti
-- Create date: 
-- Versão     : 
-- Description:	Inclusão de Itens de solicitações a serem efetuadas pelo site
--
-- Author:		Mario Rossatti
-- Create date: 17/08/2010
-- Versão     : 2010.08.17
-- Description:	Incluir Atributo IDEmpresa
--------------------------------------------------------------------------------------
CREATE PROC [dbo].[SolicitacaoSiteItemIncluir]
(
    @IDEmpresa INT,
    @Nome VARCHAR(100), 
    @Ativo VARCHAR(1), 
    @IDFinanceiroTipo INT
)
 
AS
BEGIN
 

SET NOCOUNT ON
SET ANSI_WARNINGS OFF
INSERT INTO [SolicitacaoSiteItem]
(
    [Nome], 
    [Ativo], 
    [IDFinanceiroTipo], 
    [IDEmpresa] 
)
VALUES
(
    @Nome, 
    @Ativo, 
    @IDFinanceiroTipo, 
    @IDEmpresa 
)
 
    DECLARE @ID INT
    SET @ID = SCOPE_IDENTITY()	
    SELECT @ID AS ID
  
END
GO
/****** Object:  StoredProcedure [dbo].[SolicitacaoSiteItemExcluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------
 
CREATE PROC [dbo].[SolicitacaoSiteItemExcluir]
(@IDSolicitacaoSiteItem INT)
 
AS
BEGIN
 
SET NOCOUNT ON
SET ANSI_WARNINGS OFF

 UPDATE [SolicitacaoSiteItem] SET
    [Ativo]  = '1'
 WHERE 
 ([IDSolicitacaoSiteItem] = @IDSolicitacaoSiteItem)
 
END
GO
/****** Object:  StoredProcedure [dbo].[SolicitacaoSiteItemAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author     :	Mario Rossatti
-- Create date: 
-- Versão     : 
-- Description:	Alteração de Itens de solicitações a serem efetuadas pelo site
--
-- Author:		Mario Rossatti
-- Create date: 17/08/2010
-- Versão     : 2010.08.17
-- Description:	Incluir Atributo IDEmpresa
--------------------------------------------------------------------------------------
CREATE PROC [dbo].[SolicitacaoSiteItemAlterar]
(
    @IDEmpresa INT,
    @IDSolicitacaoSiteItem INT, 
    @Nome VARCHAR(100), 
    @Ativo VARCHAR(1), 
    @IDFinanceiroTipo INT 
)
 
AS
BEGIN
 
SET NOCOUNT ON
SET ANSI_WARNINGS OFF
 UPDATE SolicitacaoSiteItem SET
    Nome             = @Nome,
    Ativo            = @Ativo,
    IDFinanceiroTipo = @IDFinanceiroTipo,
    IDEmpresa        = @IDEmpresa 
 WHERE 
 (IDSolicitacaoSiteItem = @IDSolicitacaoSiteItem)  
 
END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioLotacaoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <13/01/2009>
-- Description:	<Selecionar as Lotacoes de Patrimonio>
--
-- Author     :	<Rossatti,Junior>
-- Modify date: <03/05/2010>
-- Versão     : <2010.05.01>
-- Description:	<Incluir atributo SituacaoNome, retirada de codigo sobre lojas>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioLotacaoSelecionar]
 @Ativo          VARCHAR(1)   = NULL
,@Nome           VARCHAR(100) = NULL
,@IDPatrimonioLotacao     INT = NULL
,@IDLoja				INT = null
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	 pl.IDPatrimonioLotacao
	,pl.IDPatrimonioLotacao as ID
	,pl.Nome
	,pl.Ativo
    ,0 as IDLoja
    ,'' as LojaNome
--	,pl.IDLoja
--	,lo.Nome AS LojaNome
	FROM PatrimonioLotacao  AS pl
--	LEFT OUTER JOIN Loja	AS lo ON (lo.IDLoja	= pl.IDLoja)
	
	WHERE ((@Ativo IS NULL)         OR (pl.Ativo = @Ativo))
	  AND ((@Nome IS NULL)          OR (pl.Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDPatrimonioLotacao IS NULL)   OR (pl.IDPatrimonioLotacao =@IDPatrimonioLotacao))
--	  AND ((@IDLoja IS NULL)		OR (pl.IDLoja =@IDLoja))
	  
	ORDER BY pl.Nome
END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioLotacaoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/01/2009>
-- Description:	<Atualizacao de dados na Tabela de Lotacao de Patrimonio >
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioLotacaoAlterar]
	-- Add the parameters for the stored procedure here
	@IDPatrimonioLotacao INT,
	@Ativo varchar(1),
	@Nome varchar(80),
	@IDLoja int   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE PatrimonioLotacao SET
		Nome=@Nome,
		Ativo=@Ativo,
		IDLoja=@IDLoja		
	WHERE IDPatrimonioLotacao=@IDPatrimonioLotacao
END
GO
/****** Object:  StoredProcedure [dbo].[PatrimonioLotacaoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/01/2009>
-- Description:	<Insercao de dados na Tabela Lotacao de Patrimonio>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PatrimonioLotacaoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100),
	@IDLoja int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PatrimonioLotacao (Ativo,Nome,IDLoja) values(@Ativo,@Nome,@IDLoja)
	
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	--- RETURN @ID
	 SELECT @ID AS id
END
GO
/****** Object:  StoredProcedure [dbo].[RegistroFiliacaoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/09/2009>
-- Description:	<Insercao de dados na Tabela RegistrosFilicao>
--
--------------------------------------------------------------------------------------
--
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
create PROCEDURE [dbo].[RegistroFiliacaoIncluir]
-- Add the parameters for the stored procedure here
	 @Ativo        varchar(1)
    ,@IDPessoa     INT
    ,@IDRegistro   INT
	,@Registro     VARCHAR(100)=null
    ,@DataRegistro DATETIME=null
    ,@Placet       INT=null
    ,@IDPotencia   INT=null 
    ,@Potencia     varchar(100)=null
    ,@Loja         varchar(100)=null
AS
BEGIN

	-- Verifica se o Numero do Registro foi INformado
	IF (@REGISTRO IS NULL)
		BEGIN
			SET @REGISTRO = '0'
		END
  --END-IF

INSERT INTO [dbo].[RegistroFiliacao]
           ([IDRegistro]
           ,[Placet]
           ,[Registro]
           ,[DataRegistro]
           ,[DataLancamento]
           ,[IDPotencia]
           ,[Potencia]
           ,[Loja]
           ,[Ativo]
           ,[IDPessoa])
     VALUES
           (
            @IDRegistro
           ,@Placet
           ,@Registro
           ,@DataRegistro
           ,GETDATE()
           ,@IDPotencia
           ,@Potencia
           ,@Loja
           ,@Ativo
           ,@IDPessoa
           )
           
--  Guarda o ID incluido
	DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS id	 
END
GO
/****** Object:  StoredProcedure [dbo].[RegistroFiliacaoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <07/01/2010>
-- Description:	<Insercao de dados na Tabela RegistroFilicao>
--
--------------------------------------------------------------------------------------
--
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RegistroFiliacaoAlterar]
	-- Add the parameters for the stored procedure here
	 @IDRegistroFiliacao INT
	,@IDRegistro    INT
    ,@IDPessoa      INT
	,@Ativo         varchar(1)
    ,@Registro      VARCHAR(100)=NULL
    ,@DataRegistro  DATETIME=NULL
    ,@IDPotencia    INT=NULL
    ,@Placet        INT=null
    ,@Potencia      varchar(100)=null
    ,@Loja          varchar(100)=null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[RegistroFiliacao]
	   SET [Registro]      = @Registro
		  ,[DataRegistro]  = @DataRegistro
		  ,[IDPessoa]      = @IDPessoa
		  ,[Placet]        = @Placet
		  ,[DataLancamento]= GETDATE()
		  ,[Ativo]         = @Ativo
		  ,[IDPotencia]    = @IDPotencia
		  ,[Potencia]      = @Potencia
		  ,[Loja]          = @Loja

	 WHERE IDRegistroFiliacao = @IDRegistroFiliacao


  
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoCidadeEstado]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Selecionar os Estados>
---------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoCidadeEstado]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDCidadeEstado int = NULL
,@IDCidadePais   int = NULL
,@Sigla          VARCHAR(20) = NULL
,@Naturalidade   VARCHAR(100) = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 CE.IDCidadeEstado AS ID
		,CE.Sigla AS Codigo
		,CE.Nome
		,CE.Ativo
	FROM CidadeEstado AS CE
	
	WHERE ((@Ativo IS NULL)          OR (CE.Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (CE.Nome LIKE '%'+@Nome + '%'))
	  AND ((@IDCidadeEstado IS NULL) OR (CE.IDCidadeEstado = @IDCidadeEstado))
	  AND ((@IDCidadePais IS NULL)   OR (CE.IDCidadePais = @IDCidadePais))
	  AND ((@Sigla IS NULL)          OR (CE.Sigla = @Sigla))
	  AND ((@Naturalidade IS NULL)   OR (CE.Naturalidade = @Naturalidade))
	ORDER BY CE.Nome,CE.IDCidadeEstado
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <27/09/2008>
-- Description:	<Selecionar as Cidades>
--
-- Author:		<Mario Rossatti>
-- Create date: <25/11/2009>
-- Description:	<Inclusao do Atributo ID>
--
-- Author:		<Mario Rossatti>
-- Create date: <21/02/2010>
-- Description:	<Inclusao do Atributo Codigo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeSelecionar]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL 
,@IDCidade       int = NULL 
,@IDCidadeEstado int = NULL

-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 C.IDCidade
		,C.IDCidade AS ID
		,C.IDCidade AS Codigo
		,C.Nome
		,C.Ativo
		,C.IDCidadeEstado
		,C.Cep
		,CE.[Nome] AS CidadeEstadoNome
	FROM Cidade AS C
		LEFT OUTER JOIN CidadeEstado AS CE ON (CE.IDCidadeEstado = C.IDCidadeEstado)

	WHERE ((@Ativo IS NULL)			 OR (C.Ativo = @Ativo))
	  AND ((@Nome IS NULL)			 OR (C.Nome LIKE @Nome + '%'))
	  AND ((@IDCidade IS NULL)		 OR (C.IDCidade = @IDCidade))
	  AND ((@IDCidadeEstado IS NULL) OR (C.IDCidadeEstado = @IDCidadeEstado))
	ORDER BY C.Nome,C.IDCidade
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoCidade]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Selecionar as Cidades>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoCidade]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL 
,@IDCidade       int = NULL 
,@IDCidadeEstado int = NULL

-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
		 C.IDCidade AS ID
		,C.IDCidade AS Codigo 
		,C.Nome
		,C.Ativo
	FROM Cidade AS C
	WHERE ((@Ativo IS NULL)			 OR (C.Ativo = @Ativo))
	  AND ((@Nome IS NULL)			 OR (C.Nome LIKE @Nome + '%'))
	  AND ((@IDCidade IS NULL)		 OR (C.IDCidade = @IDCidade))
	  AND ((@IDCidadeEstado IS NULL) OR (C.IDCidadeEstado = @IDCidadeEstado))
	ORDER BY C.Nome,C.IDCidade
END
GO
/****** Object:  StoredProcedure [dbo].[CensoAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <02/04/2009>
-- Description:	<Atualizacao de dados na Tabela Censo>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CensoAlterar]
	-- Add the parameters for the stored procedure here
	 
	 @Ativo varchar(1) = NULL
	,@Nome varchar(100)= NULL
	,@Ano INT = NULL
	,@DataInicio DATETIME = NULL
	,@DataFim DATETIME = NULL
	,@IDCenso INT
	    
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[Censo]
	   SET [Nome] = @Nome
		  ,[Ativo] = @Ativo
		  ,[Ano] = @Ano
		  ,[DataInicio]=@DataInicio
		  ,[DataFim]=@DataFim		  
	WHERE IDCenso=@IDCenso
	 
 END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoCenso]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <07/10/2009>
-- Description:	<Selecionar os Censos>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoCenso]
 @Ativo   VARCHAR(1) = NULL
,@Nome    VARCHAR(100) = NULL
,@Ano     INT = NULL
,@DataInicio  DATETIME = NULL
,@DataFim  DATETIME = NULL
,@IDCenso  INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT
		 [IDCenso] AS ID
		,[Ano] AS Codigo
	    ,[Nome]
		,[Ativo]
	FROM [dbo].[Censo]
	WHERE ((@Ativo IS NULL)      OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)       OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@Ano IS NULL)        OR (Ano=@Ano))
	  AND ((@IDCenso IS NULL)    OR (IDCenso=@IDCenso))
	  AND ((@Datainicio IS NULL) OR (Datainicio=@DataInicio))
	  AND ((@DataFim IS NULL)    OR (DataFim=@DataFim))
	ORDER BY Nome,IDCenso
END
GO
/****** Object:  StoredProcedure [dbo].[CensoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <02/04/2009>
-- Description:	<Insercao de dados na Tabela Cago Nivel>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CensoIncluir]
	-- Add the parameters for the stored procedure here
            @Nome VARCHAR(100) = NULL
           ,@Ativo VARCHAR(1)  = NULL
           ,@Ano INT = NULL
           ,@DataInicio DATETIME = NULL
           ,@DataFim DATETIME = NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Censo]
           ([Nome]
           ,[Ativo]
           ,[Ano]
           ,[DataInicio]
           ,[DataFim])
    VALUES
           (
            @Nome
           ,@Ativo
           ,@Ano
           ,@DataInicio
           ,@DataFim
           )
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[CensoSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <02/04/2009>
-- Description:	<Selecionar os Censos>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CensoSelecionar]
 @Ativo   VARCHAR(1) = NULL
,@Nome    VARCHAR(100) = NULL
,@Ano     INT = NULL
,@DataInicio  DATETIME = NULL
,@DataFim  DATETIME = NULL
,@IDCenso  INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT   [IDCenso]
		,[Nome]
		,[Ativo]
		,[Ano]
		,[Datainicio]
		,[DataFim]
	FROM [dbo].[Censo]
	WHERE ((@Ativo IS NULL)      OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)       OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@Ano IS NULL)        OR (Ano=@Ano))
	  AND ((@IDCenso IS NULL)    OR (IDCenso=@IDCenso))
	  AND ((@Datainicio IS NULL) OR (Datainicio=@DataInicio))
	  AND ((@DataFim IS NULL)    OR (DataFim=@DataFim))
	ORDER BY Nome,Ano,IDCenso,Datainicio
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeContinenteAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <18/02/2008>
-- Description:	<Atualizacao de dados na Tabela CidadeContinente>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeContinenteAlterar]
	-- Add the parameters for the stored procedure here
	@IDCidadeContinente INT,
	@Ativo varchar(1),
	@Nome varchar(100)   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE CidadeContinente SET
		Nome=@Nome,
		Ativo=@Ativo		
	WHERE IDCidadeContinente=@IDCidadeContinente
END
GO
/****** Object:  StoredProcedure [dbo].[SelecaoCidadeContinente]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <02/08/2008>
-- Description:	<Selecionar os Continentes>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SelecaoCidadeContinente]
 @Ativo          VARCHAR(1) = NULL
,@Nome           VARCHAR(100) = NULL
,@IDCidadeContinente INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT 
	  IDCidadeContinente AS ID
	 ,IDCidadeContinente AS Codigo
	 ,Nome
	 ,Ativo
	FROM CidadeContinente
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDCidadeContinente IS NULL)   OR ([IDCidadeContinente] =@IDCidadeContinente))
	ORDER BY Nome
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeContinenteIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <02/08/2008>
-- Description:	<Insercao de dados na Tabela CidadeContinente>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeContinenteIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO CidadeContinente (Ativo,Nome) values(@Ativo,@Nome)
	
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[CidadeContinenteSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <02/08/2008>
-- Description:	<Selecionar os Continentes>
--
-- Author:		<Mario Rossatti>
-- Create date: <25/11/2009>
-- Description:	<Inclusao do Atributo ID>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[CidadeContinenteSelecionar]
 @Ativo              VARCHAR(1) = NULL
,@Nome               VARCHAR(100) = NULL
,@IDCidadeContinente INT = NULL
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT IDCidadeContinente
	,IDCidadeContinente AS ID
	,IDCidadeContinente AS Codigo
	,Nome
	,Ativo
	FROM CidadeContinente
	WHERE ((@Ativo IS NULL)          OR (Ativo = @Ativo))
	  AND ((@Nome IS NULL)           OR (Nome LIKE '%'+@Nome + '%'))	  
	  AND ((@IDCidadeContinente IS NULL)   OR ([IDCidadeContinente] =@IDCidadeContinente))
	ORDER BY Nome
END
GO
/****** Object:  StoredProcedure [dbo].[LojaObreiroAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <20/04/2010>
-- Description:	<Insercao de Numero de Obreiros Ativos por Loja em uma determinado Mês>
--------------------------------------------------------------------------------------
Create PROCEDURE [dbo].[LojaObreiroAlterar]
	-- Add the parameters for the stored procedure here
	@IDLojaObreiro INT,
	@IDLoja INT,
    @Mes INT=NULL,
    @Ano INT=NULL,  
    @Total INT=NULL,
	@Ativo varchar(1)
	
AS
BEGIN
    -- Insert statements for procedure here
	SET NOCOUNT ON;
	IF @Ano IS NULL
		BEGIN
			SET @Ano = 0
		END
	IF @Mes IS NULL
		BEGIN
			SET @Mes = 0
		END

	IF @Total IS NULL
		BEGIN
			SET @Total = 0
		END

	UPDATE [dbo].[LojaObreiro]
	SET	IDLoja=@IDLoja
	   ,Mes = @Mes
	   ,Ano = @Ano
	   ,Total = @Total
       ,Ativo = @Ativo
	WHERE IDLojaObreiro=@IDLojaObreiro

END
GO
/****** Object:  StoredProcedure [dbo].[LojaObreiroExcluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <22/04/2010>
-- Description:	<Exclusão de Registros da Tabela Loja Obreiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/09/2010>
-- Description:	<Insercao do Atributo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaObreiroExcluir]
	-- Add the parameters for the stored procedure here
	@IDEmpresa INT,
	@IDLojaObreiro INT = NULL,
	@IDLoja INT = NULL,
    @Mes INT=NULL,
    @Ano INT=NULL,
    @Data datetime = NULL
	
AS
BEGIN
    -- Insert statements for procedure here
	SET NOCOUNT ON;

	UPDATE [dbo].[LojaObreiro]
	SET	Ativo = '1'
	WHERE
	        (IDEmpresa = @IDEmpresa) 
	  AND ( (@IDLojaObreiro IS NULL) OR (IDLojaObreiro=@IDLojaObreiro) )	  
	  AND ( (@IDLoja IS NULL) OR (IDLoja=@IDLoja) )	  
	  AND ( (@Ano IS NULL)    OR (Ano=@Ano) )
	  AND ( (@Mes IS NULL)    OR (Mes=@Mes) )
	  AND ( (@Data IS NULL)   OR (Data=@Data) )

END
GO
/****** Object:  StoredProcedure [dbo].[LojaObreiroIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <20/04/2010>
-- Description:	<Insercao de Numero de Obreiros Ativos por Loja>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/09/2010>
-- Description:	<Insercao do Atributo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaObreiroIncluir]
-- Add the parameters for the stored procedure here
    @IDEmpresa INT,
    @IDLoja INT,
    @Mes INT = NULL,
    @Ano INT = NULL,  
    @Total INT = NULL,
	@Ativo varchar(1) = NULL,
	@Data datetime = NULL
AS
BEGIN

	IF @Ano IS NULL
	BEGIN
		SET @Ano = 0
	END
	
	IF @Mes IS NULL
	BEGIN
		SET @Mes = 0
	END
	
	IF @Total IS NULL
	BEGIN
		SET @Mes = 0
	END

	IF @Ativo IS NULL
	BEGIN
		SET @Ativo = '0'
	END

	INSERT INTO [dbo].[LojaObreiro]
			   (
			     IDEmpresa
				,IDLoja
				,Mes
				,Ano
				,Total
				,Ativo
				,Data
			    )
		 VALUES
				(
				 @IDEmpresa
				,@IDLoja
				,@Mes
				,@Ano
				,@Total
				,@Ativo
				,@Data
				)
	           
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID

END
GO
/****** Object:  StoredProcedure [dbo].[PessoaIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <18/08/2008>
-- Description:	<Insercao de dados na Tabela Pessoa>
--
-- Author:		<Rossatti,Junior>
-- Create date: <02/10/2009>
-- Description:	<Inclusao do Atributo Codigo INT=null>
--
-- Author:		<Mario Rossatti>
-- Create date: <08/11/2009>
-- Description:	<Inclusão do Atributo DataCadastro>
--
-- Author:		<Mario Rossatti>
-- Create date: <11/02/2010>
-- Description:	<modificação no retorna da procedure para retornar tambem o codigo do obreiro>
--
-- Author:		<Mario Rossatti>
-- Create date: <18/08/2010>
-- Description:	<Inclusão do Atributo IDEmpresa>
--
-- Author:		<>
-- Create date: <00/00/0000>
-- Description:	<>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaIncluir]
-- Add the parameters for the stored procedure here
                @IDEmpresa INT
			   ,@Ativo  varchar(1) =null
			   ,@Nome  varchar(100) =NULL
			   ,@CPFCNPJ  varchar(20) =NULL
			   ,@Sexo  varchar(1) =NULL
			   ,@RGIE  varchar(20) =NULL
			   ,@Natureza varchar(1) =NULL
			   ,@EnderecoIDCidade int =NULL
			   ,@Endereco varchar(100) =NULL
			   ,@EnderecoBairro varchar(100) =NULL
			   ,@EnderecoCEP varchar(12) =NULL
			   ,@IDPessoaTipo int =NULL
			   ,@IDPessoaGrauTipo int =NULL
			   ,@Email varchar(100) =NULL
			   ,@NascimentoData datetime =NULL
			   ,@IDLoja int =NULL
			   ,@Codigo int =NULL
               ,@DataCadastro datetime =NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF (@Codigo IS NULL) OR (@Codigo=0) 
		BEGIN
		 SET @Codigo = dbo.[PessoaRetornarProximoRegistro]()
		END
		
	INSERT INTO dbo.Pessoa
			   (
			    IDEmpresa
			   ,Ativo
			   ,Nome
			   ,CPFCNPJ
			   ,Sexo
			   ,RGIE
			   ,Natureza
			   ,EnderecoIDCidade
			   ,Endereco
			   ,EnderecoBairro
			   ,EnderecoCEP
			   ,IDPessoaTipo
			   ,IDPessoaGrauTipo
			   ,Email
			   ,NascimentoData
			   ,IDLoja
			   ,Codigo
               ,DataCadastro
               )
		 VALUES
			   (
			    @IDEmpresa			    
			   ,@Ativo
			   ,@Nome
			   ,@CPFCNPJ
			   ,@Sexo
			   ,@RGIE
			   ,@Natureza
			   ,@EnderecoIDCidade
			   ,@Endereco
			   ,@EnderecoBairro
			   ,@EnderecoCEP
			   ,@IDPessoaTipo
			   ,@IDPessoaGrauTipo
			   ,@Email
			   ,@NascimentoData
			   ,@IDLoja
			   ,@Codigo
               ,@DataCadastro
			   )
	           
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID, @Codigo AS CODIGO
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroTipoIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <04/11/2008>
-- Description:	<Insercao de dados na Tabela de Tipos Financeiros>
--
-- Author:		<Rossatti,Junior>
-- Modify date: <02/06/2009>
-- Description:	<Inclusão do Campo TipoQuitacao ( 0 - Parcial, 1 - Total )>
--
-- Author:		<Rossatti,Junior>
-- Modify date: <05/07/2010>
-- Description:	<Inclusão do Campo Codigo>
--
-- Author:		<Rossatti,Junior>
-- Modify date: <18/08/2010>
-- Description:	<Inclusão do Campo IDEmpresa>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroTipoIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo varchar(1) ,
	@Nome varchar(100),
	@Tipo VARCHAR(1),
	@Valor DECIMAL(18,2),
	@TipoQuitacao VARCHAR(1),
	@Codigo INT = NULL,	
	@IDEmpresa INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
   IF @TipoQuitacao IS NULL
	BEGIN
		SET @TipoQuitacao='0' 	
	END 

	--DECLARE @Codigo INT
	IF (@Codigo IS NULL) OR (@Codigo=0) 
	BEGIN
		SET @Codigo = dbo.[FinanceiroTipoRetornarProximoRegistro]()
	END
      	
	SET NOCOUNT ON;
	INSERT INTO dbo.FinanceiroTipo
			   (
			    IDEmpresa
			   ,Nome
			   ,Ativo
			   ,Tipo
			   ,Valor
			   ,TipoQuitacao
			   ,Codigo
			   )
		 VALUES
			   (
				@IDEmpresa
			   ,@Nome
			   ,@Ativo
			   ,@Tipo
			   ,@Valor
			   ,@TipoQuitacao
			   ,@Codigo
			   )
	 DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	
	 SELECT @ID AS ID
	 
END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <05/06/2010>
-- Versão     : <2010.06.07>
-- Description:	<Insercao de dados na Tabela Empresa>
--
-- Author     :	<>
-- Create date: <00/00/0000>
-- Versão     : <>
-- Description:	<>

--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[EmpresaIncluir]
-- Add the parameters for the stored procedure here
			    @IDEmpresa INT
			   ,@Ativo  varchar(1) =null
			   ,@Nome  varchar(100) =NULL
			   ,@NomeFantasia  varchar(100) =NULL
			   ,@CPFCNPJ  varchar(20) =NULL
			   ,@RGIE  varchar(20) =NULL
			   ,@Natureza varchar(1) =NULL
			   ,@EnderecoIDCidade int =NULL
			   ,@Endereco varchar(100) =NULL
			   ,@EnderecoBairro varchar(100) =NULL
			   ,@EnderecoCEP varchar(12) =NULL
			   ,@Email varchar(100) =NULL
			   ,@NascimentoData datetime =NULL
               ,@DataCadastro datetime =NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF (@IDEmpresa IS NULL) OR (@IDEmpresa=0) 
	BEGIN
		SET @IDEmpresa = dbo.[EmpresaRetornarProximoRegistro]()
	END
		
	INSERT INTO [dbo].[Empresa]
			   ([IDEmpresa]
			   ,[Ativo]
			   ,[Nome]
			   ,[NomeFantasia]
			   ,[CPFCNPJ]
			   ,[RGIE]
			   ,[Natureza]
			   ,[EnderecoIDCidade]
			   ,[Endereco]
			   ,[EnderecoBairro]
			   ,[EnderecoCEP]
			   ,[Email]
			   ,[NascimentoData]
               ,[DataCadastro])
		 VALUES
			   (
			    @IDEmpresa
			   ,@Ativo
			   ,@Nome
			   ,@NomeFantasia
			   ,@CPFCNPJ
			   ,@RGIE
			   ,@Natureza
			   ,@EnderecoIDCidade
			   ,@Endereco
			   ,@EnderecoBairro
			   ,@EnderecoCEP
			   ,@Email
			   ,@NascimentoData
               ,@DataCadastro
			   )
	           
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID
	
	Insert into dbo.EmpresaDetalhe (IDEmpresa,Mensagem1,Mensagem2,logo,Recibo,nota) values(@IDEmpresa,'','',NULL,0,0)	
	
END
GO
/****** Object:  StoredProcedure [dbo].[PessoaDadosAtualizar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <28/01/2010>
-- Description:	<Atualização de Dados na Tabela PessoaDados>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/02/2010>
-- Description:	<Inclusao dos atributos de IDBoletim em todas as opçoes de registro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <16/02/2010>
-- Description:	<Inclusao dos atributos de IDBoletim em todas as opçoes de registro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <16/02/2010>
-- Description:	<Inclusao de novos codigos para o parametro @Operacao>
--              <16 - BIR Boletim Interno de Regularizacao>
--
-- Author:		<Rossatti,Junior>
-- Create date: <16/03/2010>
-- Description:	<Atualização do Tipo de Grau do Obreiro qdo o parametro @Operacao for = a 1>
--
-- Author:		<Rossatti Junior>
-- Create date: <07/07/2010>
-- Description:	<Ao Incluir uma Instalacao, atualizar o veneravel da loja>
--              <>
-- Author:		<>
-- Create date: <>
-- Description:	<>
--              <>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[PessoaDadosAtualizar]
	-- Add the parameters for the stored procedure here
	@TipoExecucao  INT,  -- 0 Zero significa, Atualizar PessoaDados depois de uma Inclusão, 1 depois de Alteração
	@Registro      INT,
    @DataRegistro  DATETIME,
    @Data          DATETIME,
    @IDPessoa      INT,
    @IDLoja        INT,
    @Ritual        INT,
    @Lei           INT,
    @Diploma       INT,
    @Placet        INT,
    @Regularidade  INT,
    @Desligamento  INT,
    @IDLojaDestino INT,    
    @IDBoletim     INT,
    @Observacao    TEXT,
    @DataInicial   DATETIME,
    @DataFinal     DATETIME,
    @Operacao      INT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @IDBoletim IS NULL
		BEGIN
			SET @IDBoletim = 0
		END
  --END-IF

	-- CANDIDATO
	IF @Operacao = 1
	BEGIN
		UPDATE [dbo].PessoaDados SET 
			[RegularizacaoPlacet]=@Registro, 
			[RegularizacaoData]=@DataRegistro, 
			[RegularizacaoIDLoja]=@IDLoja , 
			RegularizacaoIDBoletim=@IDBoletim 
		WHERE [IDPessoa]=@IDPessoa
		UPDATE [dbo].Pessoa SET IDPessoaGrauTipo=(select IDPessoaGrauTipoCandidato from Adm where IDAdm=1)	WHERE [IDPessoa]=@IDPessoa	
	END

	-- INICIAÇÃO DE APRENDIZ
	IF @Operacao = 2
	BEGIN
--		IF @Placet=1 
--		BEGIN
			UPDATE [dbo].PessoaDados SET 
				[IniciacaoPlacet]=@Registro, 
				[IniciacaoData]=@DataRegistro, 
				[IniciacaoIDLoja]=@IDLoja, 
				[IniciacaoIDBoletim]=@IDBoletim 
			WHERE [IDPessoa]=@IDPessoa		
			UPDATE [dbo].Pessoa SET IDPessoaGrauTipo=(select IDPessoaGrauTipoAP from Adm where IDAdm=1) WHERE [IDPessoa]=@IDPessoa
--		END
	END
  		
	-- ELEVAÇÃO À COMPANHEIRO
	IF @Operacao = 3
	BEGIN
--		IF @Placet=2 
--		BEGIN
			UPDATE [dbo].PessoaDados SET 
				[ElevacaoPlacet]=@Registro,
				[ElevacaoData]=@DataRegistro, 
				[ElevacaoIDLoja]=@IDLoja, 
				[ElevacaoIDBoletim]=@IDBoletim 
			WHERE [IDPessoa]=@IDPessoa
			UPDATE [dbo].Pessoa SET IDPessoaGrauTipo=(select IDPessoaGrauTipoCM from Adm where IDAdm=1) WHERE [IDPessoa]=@IDPessoa
--		END
	END
	-- EXALTACAO À MESTRE
	IF @Operacao = 4
	BEGIN
--		IF @Placet=3 
--		BEGIN
			UPDATE [dbo].PessoaDados SET 
				[ExaltacaoPlacet]=@Registro, 
				[ExaltacaoData]=@DataRegistro, 
				[ExaltacaoIDLoja]=@IDLoja, 
				[ExaltacaoIDBoletim]=@IDBoletim 
			WHERE [IDPessoa]=@IDPessoa
			UPDATE [dbo].Pessoa SET IDPessoaGrauTipo=(select IDPessoaGrauTipoObreiro from Adm where IDAdm=1) WHERE [IDPessoa]=@IDPessoa
--		END
	END
	-- INSTALAÇÃO À VENERAVEL
	IF @Operacao = 5
	BEGIN
--		IF @Placet=6 
--		BEGIN
			UPDATE [dbo].PessoaDados SET 
					  InstalacaoPlacet   =@Registro
					, InstalacaoData=@DataRegistro
					, InstalacaoIDloja=@IDLoja
					, InstalacaoDataInicial=@DataInicial
					, InstalacaoDataFinal=@DataFinal 
					, [InstalacaoIDBoletim]=@IDBoletim
			WHERE [IDPessoa]=@IDPessoa

			-- Calculando o Ano da Gestao
			DECLARE @Ano INT
			SET @Ano = year(@DataInicial)
			
			DECLARE @AnoTxt varchar(4)	
			SET @AnoTxt = Convert(VARCHAR(4),@Ano ,103)					

			IF @TipoExecucao=0 -- Inclusao
			BEGIN
				-- Buscando ID de CARGO de Veneravel
				DECLARE @IDVeneravelCargo INT
				SET @IDVeneravelCargo = (Select IDCargoTipoVeneravel FROM Adm WHERE IDAdm=1 )
			
				-- Buscando ID de NIVEL de Veneravel
				DECLARE @IDVeneravelNivel INT
				SET @IDVeneravelNivel = (Select IDCargoNivelVeneravel FROM Adm WHERE IDAdm=1 )
				
				-- Incluir Novo cargo para o Veneravel				
				EXEC PessoaCargoIncluir @IDPessoa, @IDVeneravelCargo,@IDVeneravelNivel,@IDLoja,@AnoTxt,'0',@DataInicial,@DataFinal,NULL 
				
				-- Atualizar Loja com novo veneravel.
				update Loja set IDPessoaVeneravel=@IDPessoa where IDLoja=@IDLoja
				
			END
			ELSE
			BEGIN
				UPDATE PessoaCargo SET 
					 DataInicio=@DataInicial
					,DataFim=@DataFinal 
					,Ano=@AnoTxt
					,IDLoja=@IDLoja
				WHERE IDPessoa=@IDPessoa AND Atual='0'			
			END
--		END		
	END
	
	-- FILIAÇÃO DE APRENDIZ - ESPERA BOLETIM
	IF @Operacao = 6
	BEGIN
		UPDATE [dbo].PessoaDados SET 
			[RegularizacaoPlacet]=@Registro, 
			[RegularizacaoData]=@DataRegistro, 
			[RegularizacaoIDLoja]=@IDLoja,
			[RegularizacaoIDBoletim]=@IDBoletim 
		WHERE [IDPessoa]=@IDPessoa
	END
	-- FILIAÇÃO DE APRENDIZ
	IF @Operacao = 7
	BEGIN
		UPDATE [dbo].PessoaDados SET 
			[FiliacaoPlacet]=@Registro, 
			[FiliacaoData]=@DataRegistro,
			[FiliacaoIDloja]=@IDLoja,
			[FiliacaoIDBoletim]=@IDBoletim 
		WHERE [IDPessoa]=@IDPessoa
		UPDATE [dbo].Pessoa SET IDPessoaGrauTipo=(select IDPessoaGrauTipoAP from Adm where IDAdm=1) WHERE [IDPessoa]=@IDPessoa
	END
	-- FILIAÇÃO DE COMPANHEIRO
	IF @Operacao = 8
	BEGIN
		UPDATE [dbo].PessoaDados SET 
			[FiliacaoPlacet]=@Registro,
			[FiliacaoData]=@DataRegistro, 
			[FiliacaoIDloja]=@IDLoja,
			[FiliacaoIDBoletim]=@IDBoletim
		WHERE [IDPessoa]=@IDPessoa
		UPDATE [dbo].Pessoa SET IDPessoaGrauTipo=(select IDPessoaGrauTipoCM from Adm where IDAdm=1) WHERE [IDPessoa]=@IDPessoa
	END
	-- FILIAÇÃO DE MESTRE
	IF @Operacao = 9
	BEGIN
		UPDATE [dbo].PessoaDados SET 
			[FiliacaoPlacet]=@Registro, 
			[FiliacaoData]=@DataRegistro, 
			[FiliacaoIDloja]=@IDLoja,
			[FiliacaoIDBoletim]=@IDBoletim
		WHERE [IDPessoa]=@IDPessoa
		UPDATE [dbo].Pessoa SET IDPessoaGrauTipo=(select IDPessoaGrauTipoObreiro from Adm where IDAdm=1) WHERE [IDPessoa]=@IDPessoa
	END
	-- FILIAÇÃO DE VENERAVEL
	IF @Operacao = 10
	BEGIN
		UPDATE [dbo].PessoaDados SET 
			[FiliacaoPlacet]=@Registro, 
			[FiliacaoData]=@DataRegistro, 
			[FiliacaoIDloja]=@IDLoja,
			[FiliacaoIDBoletim]=@IDBoletim		
		WHERE [IDPessoa]=@IDPessoa
		UPDATE [dbo].Pessoa SET IDPessoaGrauTipo=(select IDPessoaGrauTipoObreiro from Adm where IDAdm=1) WHERE [IDPessoa]=@IDPessoa
	END
	-- REGULARIZAÇÃO
	IF @Operacao = 11
	BEGIN
		UPDATE [dbo].PessoaDados SET 
			[RegularizacaoPlacet]=@Registro, 
			[RegularizacaoData]=@DataRegistro, 
			[RegularizacaoIDLoja]=@IDLoja,
			[RegularizacaoIDBoletim]=@IDBoletim
		WHERE [IDPessoa]=@IDPessoa
		IF (@IDLoja IS NOT NULL) AND (@IDLoja <>0)
			BEGIN
				UPDATE [dbo].Pessoa SET Ativo='0', IDLoja=@idLoja WHERE [IDPessoa]=@IDPessoa
			END
		ELSE
			BEGIN
				UPDATE [dbo].Pessoa SET Ativo='0' WHERE [IDPessoa]=@IDPessoa
			END
	----END-IF
		
	END
	-- TRANSFERÊNCIA
	IF @Operacao = 12
	BEGIN
		UPDATE PessoaDados SET 
			 TransferenciaPlacet=@Registro
			,TransferenciaData=@DataRegistro
			,TransferenciaIDLojaOrigem=@IDLoja
			,TransferenciaIDLojaDestino=@IDLojaDestino
			,[TransferenciaIDBoletim]=@IDBoletim
		WHERE [IDPessoa]=@IDPessoa

		UPDATE PESSOA SET [IDLoja]=@IDLojaDestino WHERE [IDPessoa]=@IDPessoa				
	
	END
	-- DESLIGAMENTO
	IF @Operacao = 13
	BEGIN
		-- 'Eliminação'
		IF      @Desligamento=4 UPDATE PessoaDados SET [EliminacaoPlacet]  =@Registro, [EliminacaoData]   =@DataRegistro, [EliminacaoIDloja]  =@IDLoja, [EliminacaoIDBoletim]=@IDBoletim WHERE [IDPessoa]=@IDPessoa
		-- 'Rejeição'
		ELSE IF @Desligamento=5 UPDATE PessoaDados SET [RejeicaoPlacet]    =@Registro, [RejeicaoData]     =@DataRegistro, [RejeicaoIDLoja]     =@IDLoja, [RejeicaoIDBoletim]=@IDBoletim WHERE [IDPessoa]=@IDPessoa	
		-- 'Suspensão'
		--ELSE IF @Desligamento=6 UPDATE PessoaDados SET [DesligamentoPlacet]=@Registro, [DesligamentoData] =@DataRegistro, [DesligamentoIDLoja] =@IDLoja WHERE [IDPessoa]=@IDPessoa
        -- 'Demais opções'
		ELSE UPDATE [dbo].PessoaDados SET [DesligamentoPlacet] =@Registro, [DesligamentoData] =@DataRegistro, [DesligamentoIDLoja] =@IDLoja, [DesligamentoIDBoletim]=@IDBoletim WHERE [IDPessoa]=@IDPessoa

		UPDATE Pessoa  SET Ativo='1' WHERE IDPessoa=@IDPessoa
	END
	-- LICENCA
	IF @Operacao = 14
	BEGIN
		UPDATE PessoaDados SET 
			LicencaPlacet=@Registro, 
			LicencaDataInicial =@DataInicial,
			LicencaDataFinal =@DataFinal,
			LicencaIDLoja =@IDLoja,
			[LicencaIDBoletim]=@IDBoletim
		WHERE IDPessoa=@IDPessoa	
	END
/*	
	-- PASSAPORTE MAÇONICO
	IF @Operacao = 15
	BEGIN
	END
	
	-- BIR - Boletim Interno de Regularizacao
	IF @Operacao = 16
	BEGIN
	END
*/
END
GO
/****** Object:  StoredProcedure [dbo].[FinanceiroIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <05/11/2008>
-- Description:	<Insercao de dados na Tabela Financeiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <22/04/2010>
-- Description:	<Inclusão do Atributo Pago>
--
-- Author:		<Rossatti,Junior>
-- Create date: <01/05/2010>
-- Description:	<Inclusão do Atributo Boleto>
--
-- Author:		<Rossatti,Junior>
-- Create date: <06/07/2010>
-- Description:	<Inclusão do Atributo IDFinanceiroPai>
--            : <usado em lancamentos de creditos para indicar o debito sendo pago.>
--
-- Author:		<Rossatti,Junior>
-- Create date: <04/08/2010>
-- Description:	<Alteração do Atributo IDLojaEmpresa para IDEmpresa>
--
-- Author:		<Rossatti,Junior>
-- Create date: <22/10/2010>
-- Description:	<Inclusão do Atributo TipoContas onde 0 -Contas a Receber e 1 contas a Pagar>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[FinanceiroIncluir]
	-- Add the parameters for the stored procedure here
 @IDEmpresa INT
,@TipoContas INT 
,@Ativo varchar(1)
,@Operacao INT
,@IDPessoa  INT = NULL
,@IDLoja  INT = NULL
,@DataInclusao DATETIME = NULL
,@IDFinanceiroTipo  INT = NULL
,@IDFinanceiroForma INT = NULL
,@Quantidade INT = 1
,@ValorUnitario decimal(18,2)= 0
,@ValorTotal decimal(18,2) = 0
,@IDObreiro INT = NULL 
,@Observacao VARCHAR(200) = NULL
,@Tipo INT=NULL	
,@Pago VARCHAR(1) = NULL
,@Boleto varchar(50) = NULL
,@IDFinanceiroPai INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF @PAGO IS NULL
	BEGIN
		SET @PAGO = '0'
	END
	
	IF @Boleto IS NULL
	BEGIN
		SET @Boleto = ''
	END

	IF @IDFinanceiroPai IS NULL
	BEGIN
		SET @IDFinanceiroPai = 0
	END
	
	INSERT INTO dbo.Financeiro
			   (IDEmpresa
			   ,Operacao
			   ,IDPessoa
			   ,IDLoja
			   ,DataInclusao
			   ,IDFinanceiroTipo
			   ,IDFinanceiroForma
			   ,Quantidade
			   ,ValorUnitario
			   ,ValorTotal
			   ,IDObreiro
			   ,Ativo
			   ,Observacao
			   ,Tipo
			   ,Pago
			   ,Boleto
			   ,IDFinanceiroPai
			   ,TipoContas
			   )
		 VALUES
			   (
			    @IDEmpresa
			   ,@Operacao
			   ,@IDPessoa
			   ,@IDLoja
			   ,@DataInclusao
			   ,@IDFinanceiroTipo
			   ,@IDFinanceiroForma
			   ,@Quantidade
			   ,@ValorUnitario
			   ,@ValorTotal
			   ,@IDObreiro
			   ,@Ativo
			   ,@Observacao
			   ,@Tipo
			   ,@Pago
			   ,@Boleto
			   ,@IDFinanceiroPai
			   ,@TipoContas
			   )
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	
	IF (@Operacao=1) 
	BEGIN
		IF @IDFinanceiroPai=0
		BEGIN
			UPDATE FInanceiro SET IDFinanceiroPai = @ID WHERE IDFinanceiro=@ID
		END
		ELSE
		--IF(@IDFinanceiroPai>0)
		BEGIN
			EXECUTE dbo.FinanceiroPagar @IDFinanceiroPai
		END
	END
		
	SELECT @ID AS ID
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[EmpresaRetornarProximaNota]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <05/06/2010>
-- Description:	<Retornar a Proxima Nota>
-- =============================================
CREATE FUNCTION [dbo].[EmpresaRetornarProximaNota] ( @ID INT )
RETURNS INT
AS
BEGIN
	-- Declare the return variable here
	DECLARE @PROXIMO int

	-- Add the T-SQL statements to compute the return value here
	SET @PROXIMO = (SELECT TOP 1 Nota FROM EmpresaDetalhe where IDEmpresa=@ID order BY Nota DESC)
	
	SET @PROXIMO = @PROXIMO+1
	
	execute EmpresaAlterarNota @ID,@PROXIMO
	
	-- Return the result of the function
	RETURN @PROXIMO

END
GO
/****** Object:  StoredProcedure [dbo].[EmpresaRetornarProximoRecibo]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Rossatti Junior>
-- Create date: <05/06/2010>
-- Description:	<Retornar o Proximo Recibo>
-- =============================================
CREATE PROCEDURE [dbo].[EmpresaRetornarProximoRecibo] ( @IDEmpresa INT )
AS
BEGIN
	-- Declare the return variable here
	DECLARE @PROXIMO int

	-- Add the T-SQL statements to compute the return value here
	SET @PROXIMO = (SELECT TOP 1 Recibo FROM EmpresaDetalhe where IDEmpresa=@IDEmpresa order BY Recibo DESC)
	
	SET @PROXIMO = @PROXIMO+1
	
	execute EmpresaAlterarRecibo @IDEmpresa,@PROXIMO
		
	-- Return the result of the function
	SELECT @PROXIMO AS RECIBO

END
GO
/****** Object:  StoredProcedure [dbo].[RegistroFilIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/11/2009>
-- Description:	<Criação da Procedure de Insercao de dados na Tabela Registro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <>
-- Description:	<>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RegistroFilIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo         varchar(1),
	@Registro      INT=null,
    @DataRegistro  DATETIME=null,
    @IDPessoa      INT=NULL,
    @IDLoja        INT=NULL,
    @DataInicial   DATETIME=NULL,
    @DataFinal     DATETIME=NULL,
	@PAGO          VARCHAR(1)='0',
    @VALOR         NUMERIC(18,2)=0,
    @GRAUFILOSOFICO INT=NULL	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- Busca o Numero do Proximo Registro Incluso
	IF (@REGISTRO IS NULL) OR (@REGISTRO=0)
		BEGIN
			SET @REGISTRO = DBO.[RegistroFilosoficaRetornarProximoRegistro]()

			IF (@REGISTRO IS NULL) OR (@REGISTRO=0)
				BEGIN
					SET @REGISTRO = 1
				END
		END
  --END-IF
	
	-- Inclui o Novo Registro          
	INSERT INTO [dbo].[RegistroFilosofica]
			   ([Registro]
			   ,[DataRegistro]
			   ,[IDPessoa]
			   ,[IDLoja]
			   ,[Ativo]
               ,[DataInicial]
               ,[DataFinal] 
               ,[Pago]
               ,[Valor]
               ,[GrauFilosofico]
)
		 VALUES (
			   @Registro,
			   @DataRegistro,
			   @IDPessoa,
			   @IDLoja,
			   @Ativo,
			   @DataInicial,
               @DataFinal,
               @Pago,
               @Valor,
               @GrauFilosofico
)           
           
--  Guarda o ID incluido
	DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	

	IF (@IDPessoa>0) AND (@GrauFilosofico is not null)
		BEGIN						
			UPDATE [dbo].PessoaDados 
            SET GrausFilosoficos=Convert(VARCHAR(10),@GRAUFILOSOFICO,103)
              , IDLojaFilosofica=@IDLoja 
            WHERE [IDPessoa]=@IDPessoa
		END		
 -- END-IF
			
	--- Retorna o ID Incluido
	 SELECT @ID AS id
END
GO
/****** Object:  StoredProcedure [dbo].[LojaIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 17/08/2008
-- DESCRICAO...: Inclusão de dados na Tabela Loja
--------------------------------------------------------------------------------------
-- AUTOR.......: Rossatti,Junior
-- DATA CRIACAO: 01/12/2008
-- DESCRICAO...: Inclusão do Atributo da Regiao de Tabela (IDLojaRegiao)
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <04/10/2009>
-- Alteração :	<Incluir Atributo Codigo <int> Null> 
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <15/11/2009>
-- Alteração :	<Incluir Atributo Filosofica varchar(1)> 
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <18/10/2010>
-- Alteração :	<Incluir Atributo IDEmpresa> 
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[LojaIncluir]
	-- Add the parameters for the stored procedure here
            @IDEmpresa INT 
           ,@Ativo VARCHAR(1) =NULL
           ,@Nome  varchar(100) =NULL
           ,@Endereco  varchar(100) =NULL
           ,@EnderecoComplemento  varchar(100) =NULL
           ,@EnderecoBairro  varchar(100) =NULL
           ,@IDCidade  INT =NULL
           ,@Cep  varchar(8) =NULL
           ,@Email  varchar(100) =NULL
           ,@Site varchar(100) =NULL
           ,@DataDeFundacao  DATETIME =NULL
           ,@DiaDeReuniao  INT =NULL
           ,@IDPessoaVeneravel  INT =NULL
           ,@IDPessoaSecretario INT =NULL
           ,@IDPessoaTesoureiro  INT =NULL
           ,@Data  DATETIME =NULL
           ,@CNPJ  varchar(18) =NULL
           ,@IDPotencia  INT =NULL
           ,@IDLojaRegiao INT =NULL
           ,@Codigo INT=NULL
           ,@Filosofica varchar(1)=NULL	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF (@Codigo IS NULL) OR (@Codigo=0) 
	BEGIN
		SET @Codigo = dbo.[LojaRetornarProximoRegistro]()
	END

	IF (@Filosofica IS NULL)
	BEGIN
		SET @Filosofica = '0'
	END

	INSERT INTO dbo.Loja
           (
            IDEmpresa   
		   ,Ativo
           ,Nome
           ,Endereco
           ,EnderecoComplemento
           ,EnderecoBairro
           ,IDCidade
           ,Cep
           ,Email
           ,Site
           ,DataDeFundacao
           ,DiaDeReuniao
           ,IDPessoaVeneravel
           ,IDPessoaSecretario
           ,IDPessoaTesoureiro
           ,Data
           ,CNPJ
           ,IDPotencia
           ,IDLojaRegiao
           ,Codigo
           ,Filosofica
           )
     VALUES
           (
            @IDEmpresa
		   ,@Ativo
           ,@Nome
           ,@Endereco
           ,@EnderecoComplemento
           ,@EnderecoBairro
           ,@IDCidade
           ,@Cep
           ,@Email
           ,@Site
           ,@DataDeFundacao
           ,@DiaDeReuniao
           ,@IDPessoaVeneravel
           ,@IDPessoaSecretario
           ,@IDPessoaTesoureiro
           ,@Data
           ,@CNPJ 
           ,@IDPotencia
           ,@IDLojaRegiao
           ,@Codigo
           ,@Filosofica
           )
           
	DECLARE @ID INT
	SET @ID = SCOPE_IDENTITY()	
	SELECT @ID AS ID
END
GO
/****** Object:  StoredProcedure [dbo].[RegistroSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <15/09/2008>
-- Description:	<Selecionar Registros de Placet e Outros>
--------------------------------------------------------------------------------------
--
-- Author:		<Rossatti,Junior>
-- Create date: <12/10/2009>
-- Description:	<Retirar do Atributo Placet os Valores 
-- [InstalacaoPlacet],[DesligamentoPlacet],[EliminacaoPlacet],[RejeicaoPlacet]>
--
-- Author:		<Rossatti,Junior>
-- Create date: <11/11/2009>
-- Description:	<Inclusão dos Atributos DataInicial e DataFinal>
--
-- Author:		<Rossatti,Junior>
-- Create date: <20/11/2009>
-- Description:	<Renomear Atributo Boletim para IDBoletim, Incluir o Atributo BoletimNome>
--
-- Author:		<Rossatti,Junior>
-- Create date: <28/01/2010>
-- Description:	<Inclusao do Atributo Operacao>
--
--
-- Author:		<Rossatti,Junior>
-- Create date: <11/02/2010>
-- Description:	<Inclusao do Parametro Operacao>
--
-- Author:		<Rossatti,Junior>
-- Create date: <22/02/2010>
-- Description:	<Inclusao do Codigo da Loja no atributo Nome da Loja>
--
-- Autor: 
-- Data : 
-- Descr: 
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RegistroSelecionar]
-- Add the parameters for the stored procedure here
				 @Ativo		   VARCHAR(1)=NULL
				,@IDPessoa     INT=NULL 
 				,@Operacao     INT=NULL  
				,@IDRegistro   INT=NULL
				,@Registro	   INT=NULL 
			    ,@IDLoja	   INT=NULL
				,@Placet	   INT=NULL 
				,@DataRegistro DATETIME=NULL
				,@IDBoletim    INT=NULL  
-- CORPO DA PROCEDURE
AS
BEGIN
	SELECT R.IDRegistro AS ID 
	      ,R.IDRegistro
		  ,R.Registro
		  ,R.DataRegistro
		  ,R.Data
		  ,R.Tipo
		  ,R.IDPessoa
		  ,R.IDLoja
		  ,R.Ritual
		  ,R.Lei
		  ,R.Diploma
		  ,R.Placet
		  ,R.Regularidade
		  ,R.Desligamento
		  ,R.IDLojaDestino
		  ,R.Observacao
		  ,R.Ativo
          ,R.DataInicial
          ,R.DataFinal
          ,R.Operacao
		  ,pes.Nome AS PessoaNome
		  ,pes.Codigo AS PessoaCodigo
		  ,l.nome+' N.º '+CAST(l.Codigo AS VARCHAR(5)) AS LojaNome
		  ,ld.nome+' N.º '+CAST(ld.Codigo AS VARCHAR(5)) AS LojaDestinoNome
		  ,R.IDBoletim
		  ,dbo.[BoletimRetornarNome](R.IDBoletim) AS BoletimNome
		  , CASE R.Tipo
				WHEN NULL THEN '             '
				WHEN 0    THEN '             '
				WHEN 1    THEN 'Obreiro      '
				WHEN 2    THEN 'Institucional'
				          ELSE 'Não Informado'
		    END AS TipoNome
		  	      
		  , CASE R.Ritual 
				WHEN NULL THEN '                    '
				WHEN 0	  THEN '                    '
				WHEN 1	  THEN 'AP                  '
				WHEN 2	  THEN 'CM                  '
				WHEN 3	  THEN 'MM                  '
				WHEN 4	  THEN 'MI                  '
				WHEN 5	  THEN 'ESPECIAL            '
				WHEN 6	  THEN 'AP/CM/MM/MI/ESPECIAL'
				WHEN 7	  THEN 'AP/CM/MM/MI         '
				WHEN 8	  THEN 'AP/CM/MM            '
				WHEN 9	  THEN 'AP/CM               '
				WHEN 10	  THEN 'AP/MM               '
				WHEN 11	  THEN 'AP/MI               '
				WHEN 12	  THEN 'AP/ESPECIAL         '
				WHEN 13	  THEN 'AP/MM/MI/ESPECIAL   '
				WHEN 14	  THEN 'AP/MM/MI            '
				WHEN 15	  THEN 'AP/MI/ESPECIAL      '
				WHEN 16	  THEN 'AP/ESPECIAL/MM      '
				WHEN 17	  THEN 'AP/CM/MM/ESPECIAL   '
				WHEN 18	  THEN 'AP/CM/MI            '
				WHEN 19	  THEN 'AP/CM/MI/ESPECIAL   '
				WHEN 20	  THEN 'AP/CM/ESPECIAL      '
				WHEN 21	  THEN 'CM/MM/MI/ESPECIAL   '
				WHEN 22	  THEN 'CM/MM/MI            '
				WHEN 23	  THEN 'CM/MM               '
				WHEN 24	  THEN 'CM/MM               '
				WHEN 25	  THEN 'CM/MI               '
				WHEN 26	  THEN 'CM/ESPECIAL         '
				WHEN 27	  THEN 'CM/MM/ESPECIAL      '
				WHEN 28	  THEN 'CM/MI/ESPECIAL      '
				WHEN 29	  THEN 'MM/MI/ESPECIAL      '
				WHEN 30	  THEN 'MM/ESPECIAL         '
				WHEN 31	  THEN 'MM/MI               '
				WHEN 32	  THEN 'MI/ESPECIAL         '
				WHEN 33	  THEN 'LOWTON              '
				WHEN 34   THEN 'LIVRO REGISTRO      '			
						  ELSE '                    '
			END AS RitualNome
		 
		 , CASE R.Lei
				WHEN NULL THEN '                   '
				WHEN 0	  THEN '                   '
				WHEN 1	  THEN 'Constituição/Regul.'
				WHEN 2	  THEN 'Código             '
				WHEN 3	  THEN 'Const/Código       '
				WHEN 4	  THEN 'Diversos           '
				WHEN 5	  THEN 'Estatuto           '
				WHEN 6	  THEN 'Livro Registro     '
						  ELSE 'Não Informado      '
			END AS LeiNome

		 , CASE R.Diploma
				WHEN NULL THEN '                             '
				WHEN 0	  THEN '                             '
				WHEN 1	  THEN 'R. Conjugal                  '
				WHEN 2	  THEN 'Cargos Ocupados              '
				WHEN 3	  THEN 'Lowton                       '
				WHEN 4	  THEN 'Maçom Benemérito             '
				WHEN 5	  THEN 'Maçom Emérito                '
				WHEN 6	  THEN 'Membro Honorário             '
				WHEN 7	  THEN 'Mestre Instalado             '
				WHEN 8	  THEN 'Grande Representante         '
				WHEN 9	  THEN 'Certificado                  '
				WHEN 10	  THEN 'Mestre Maçom                 '
				WHEN 11	  THEN 'Passaport Maçônico           '
				WHEN 12	  THEN 'Trofeu Jubileu de Prata      '
				WHEN 13	  THEN 'Carta Const. Provisória      '
				WHEN 14	  THEN 'Carta Constitutiva Permanente'
				WHEN 15	  THEN '2ª Via Carta Constitutiva    '
				WHEN 16	  THEN 'Garante Amizade              '
				WHEN 17	  THEN 'Veneravel                    '
				WHEN 18	  THEN 'Edroim Reverdito              '
						  ELSE '                             '
			END AS DiplomaNome

		 , CASE R.Placet
				WHEN NULL THEN '             '
				WHEN 0	  THEN '             '
				WHEN 1	  THEN 'Iniciação    '
				WHEN 2	  THEN 'Elevação     '
				WHEN 3	  THEN 'Exaltação    '
				WHEN 4	  THEN 'Filiação     '
				WHEN 5	  THEN 'Regularização'
				WHEN 6	  THEN 'Instalação   '
--				WHEN 7	  THEN 'Desligamento '
--				WHEN 8	  THEN 'Eliminação   '
--				WHEN 9	  THEN 'Rejeição     '				
						  ELSE '             '				
			END AS PlacetNome
	
		, CASE R.Regularidade
				WHEN NULL THEN '              '
				WHEN 0	  THEN '              '
				WHEN 1	  THEN 'Licença       '
				WHEN 2	  THEN 'Transferência '
				WHEN 3	  THEN 'B.I           '
				WHEN 4	  THEN 'B.I.R.        '
				WHEN 5	  THEN 'B.I.F.        '
				WHEN 6	  THEN 'Lic.Prorrogada'				
						  ELSE '              '				
			END AS RegularidadeNome
			
		, CASE R.Desligamento
				WHEN NULL THEN '                        '
				WHEN 0	  THEN '                        '
				WHEN 1	  THEN 'CERTIFICADO DE GRAU     '
				WHEN 2	  THEN 'QUITE PLACET            '
				WHEN 3	  THEN 'QUITE PLACET - Ex.Oficio'
				WHEN 4	  THEN 'ELIMINAÇÃO              '
				WHEN 5	  THEN 'REJEIÇÃO                '
				WHEN 6	  THEN 'SUSPENSO                '
				WHEN 7    THEN 'DESISTÊNCIA             '
						  ELSE '                        '				
			END AS DesligamentoNome
			
		  ,CASE WHEN R.DataRegistro>01/01/1900 THEN Convert(VARCHAR(10),R.[DataRegistro] ,103)  ELSE '' END AS DataRegistroTxt		  
		  ,CASE WHEN R.Data>01/01/1900         THEN Convert(VARCHAR(10),R.[Data] ,103)          ELSE '' END AS DataTxt

		  ,CASE WHEN R.DataInicial>01/01/1900 THEN Convert(VARCHAR(10),R.[DataInicial] ,103)  ELSE '' END AS DataInicialTxt		  
		  ,CASE WHEN R.DataFinal>01/01/1900   THEN Convert(VARCHAR(10),R.[DataFinal] ,103)    ELSE '' END AS DataFinalTxt

		  ,CASE R.Operacao
			WHEN NULL THEN '                                     '
			WHEN  1   THEN 'BOLETIM DE CANDIDATO À INICIAÇÃO     '
			WHEN  2   THEN 'INICIAÇÃO DE APRENDIZ                '
			WHEN  3   THEN 'ELEVAÇÃO À COMPANHEIRO               '
			WHEN  4   THEN 'EXALTAÇÃO À MESTRE MAÇOM             '
			WHEN  5   THEN 'INSTALAÇÃO DE VENERÁVEL              '
			WHEN  6   THEN 'BOLETIM DE FILIAÇÃO DE APRENDIZ (BIF)'
			WHEN  7   THEN 'FILIAÇÃO DE APRENDIZ                 '
			WHEN  8   THEN 'FILIAÇÃO DE COMPANHEIRO              '
			WHEN  9   THEN 'FILIAÇÃO DE MESTRE MAÇOM             '
			WHEN 10   THEN 'FILIAÇÃO DE VENERÁVEL                '
			WHEN 11   THEN 'REGULARIZAÇÃO                        '
			WHEN 12   THEN 'TRANSFERÊNCIA                        '
			WHEN 13   THEN 'DESLIGAMENTO                         '
			WHEN 14   THEN 'LICENÇA                              '
			WHEN 15   THEN 'PASSAPORTE MAÇÔNICO                  '
			WHEN 16   THEN 'BOLETIM DE REGULARIZAÇÃO (BIR)       '
			ELSE           '                                     '				
			END AS OperacaoNome
			,cid.Nome+' - '+est.[Sigla] AS LojaCidadeNome

		 
	FROM [dbo].[Registro] AS R
		LEFT OUTER JOIN [Pessoa] AS pes ON (pes.IDPessoa= R.IDPessoa)
		LEFT OUTER JOIN [Loja]   AS L   ON (L.IDLoja    = R.IDLoja)
		LEFT OUTER JOIN [Loja]   AS LD  ON (LD.IDLoja   = R.IDLojaDestino)
		LEFT OUTER JOIN Cidade           AS cid  ON (cid.[IDCidade]    = l.IDCidade)
		LEFT OUTER JOIN CidadeEstado     AS est  ON (est.IDCidadeEstado= cid.IDCidadeEstado)
	
	WHERE ((@Ativo IS NULL)      OR (R.Ativo    = @Ativo))
	  AND ((@IDRegistro IS NULL) OR (R.IDRegistro = @IDRegistro))
	  AND ((@Registro IS NULL)   OR (R.Registro = @Registro))
	  AND ((@IDPessoa IS NULL)   OR (R.IDPessoa = @IDPessoa))
	  AND ((@Placet IS NULL)     OR (R.Placet   = @Placet))
	  AND ((@IDLoja IS NULL)     OR (R.IDLoja   = @IDLoja))
	  AND ((@DataRegistro IS NULL) OR (R.DataRegistro = @DataRegistro))
	  AND ((@IDBoletim IS NULL) OR (R.IDBoletim = @IDBoletim))
	  AND ((@Operacao IS NULL)  OR (R.Operacao  = @Operacao))
  
	ORDER BY R.Registro DESC,R.DataRegistro desc
  
END
GO
/****** Object:  StoredProcedure [dbo].[BoletimSelecionar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <18/11/2009>
-- Description:	<Selecionar Boletins>
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <18/01/2010>
-- Description:	Inclusão do Atributo Codigo
--------------------------------------------------------------------------------------
-- Author:		<Mario Rossatti>
-- Create date: <24/02/2010>
-- Description:	Inclusão do Atributo NomeParaRelatorio
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[BoletimSelecionar]
	@Ativo VARCHAR(1) = NULL,
	@IDBoletim INT = NULL,
	@Ano INT = NULL,
	@Mes INT = NULL,
	@Codigo INT = NULL
	
-- CORPO DA PROCEDURE
AS
BEGIN

	SELECT bo.[IDBoletim] AS ID
	      ,bo.[IDBoletim]
		  ,bo.[Mes]
		  ,bo.[Ano]
		  ,bo.[Ativo]
		  ,dbo.[BoletimRetornarNome](bo.[IDBoletim]) AS Nome
		  ,bo.[IDBoletim] AS Codigo
		  ,dbo.[BoletimRetornarNomeRelatorio](bo.[IDBoletim]) AS NomeParaRelatorio
	FROM [dbo].[Boletim] as bo
	WHERE ( (@Ativo IS NULL)     OR (bo.Ativo    =@Ativo) )
	  AND ( (@IDBoletim IS NULL) OR (bo.IDBoletim=@IDBoletim) )	  
	  AND ( (@Ano IS NULL)       OR (bo.Ano      =@Ano) )
	  AND ( (@Mes IS NULL)       OR (bo.Mes      =@Mes) )
	  AND ( (@Codigo IS NULL)    OR ([IDBoletim] = @Codigo))
	  
    ORDER BY Nome DESC

END
GO
/****** Object:  StoredProcedure [dbo].[RegistroIncluir]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/09/2009>
-- Description:	<Insercao de dados na Tabela Registro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <12/10/2009>
-- Description:	<Retirar do Atributo Placet os Valores 
-- [InstalacaoPlacet],[DesligamentoPlacet],[EliminacaoPlacet],[RejeicaoPlacet]>
--
-- Author:		<Rossatti,Junior>
-- Create date: <09/11/2009>
-- Description:	<Ajuste no IF de vericacao do valor de @REGISTRO>
--
-- Author:		<Rossatti,Junior>
-- Create date: <10/11/2009>
-- Description:	<Ajuste NA Atualizacao Automatica do grau do Obreiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <11/11/2009>
-- Description:	<Inclusão dos Atributos DataInicial e DataFinal>
--
-- Author:		<Rossatti,Junior>
-- Create date: <17/11/2009>
-- Description:	<Ajuste na Atualização de Desligamento>
--
-- Author:		<Rossatti,Junior>
-- Create date: <20/11/2009>
-- Description:	<Renomear Atributo Boletim para IDBoletim>
--
-- Author:		<Rossatti,Junior>
-- Create date: <15/01/2010>
-- Description:	<Ao efetuar transferencia, alterar o IDLoja do Obreiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <28/01/2010>
-- Description:	<Atualizacao do registro PessoaDados para regularizacao de candidato>
--              <Inclusao do Aributo Operacao>
--
-- Author:		<Rossatti,Junior>
-- Create date: <28/01/2010>
-- Description:	<Inclusao da chamada a Procedure PessoaDadosAtualizar>
--              <Inclusao do Aributo Operacao>
--
-- Author:		<Rossatti,Junior>
-- Create date: <16/02/2010>
-- Description:	<Inclusao de novos codigos para o parametro @Operacao>
--              <16 - BIR Boletim Interno de Regularizacao>
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RegistroIncluir]
	-- Add the parameters for the stored procedure here
	@Ativo         varchar(1),
	@Registro      INT=null,
    @DataRegistro  DATETIME=null,
    @Tipo          INT,
    @IDPessoa      INT=NULL,
    @IDLoja        INT=NULL,
    @Ritual        INT,
    @Lei           INT,
    @Diploma       INT,
    @Placet        INT,
    @Regularidade  INT,
    @Desligamento  INT,
    @IDLojaDestino INT=NULL,
    @Data          DATETIME=NULL,
    @IDBoletim     INT=NULL,
    @Observacao    TEXT=NULL,
    @DataInicial   DATETIME=NULL,
    @DataFinal     DATETIME=NULL,
    @Operacao      INT=NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- TRECHO DE VALORES DEFAULT 
	-- ESTE TRECHO DE CODIGO SER PARA COLOCAR VALOR DEFAULT EM 
	-- PARAMETROS QUE VÊEM NULOS
	IF (@Operacao IS NULL)
		BEGIN
			SET @Operacao = 0
		END
  --END-IF
	IF @Observacao IS NULL
		BEGIN
			SET @Observacao = ''
		END
  --END-IF
			
	IF @DataInicial IS NULL
		BEGIN
			SET @DataInicial = 0
		END
  --END-IF

	IF @DataFinal IS NULL
		BEGIN
			SET @DataFinal = 0
		END
  --END-IF
	-- Busca o Numero do Proximo Registro Incluso
	IF (@REGISTRO IS NULL) OR (@REGISTRO=0)
		BEGIN
			SET @REGISTRO = DBO.[RegistroRetornarProximoRegistro]()

			IF (@REGISTRO IS NULL) OR (@REGISTRO=0)
				BEGIN
					SET @REGISTRO = 1
				END
		END
  --END-IF
	IF @Data IS NULL
		BEGIN
			SET @Data =GETDATE() 
		END
  --END-IF
	IF @IDBoletim IS NULL
		BEGIN
			SET @IDBoletim = 0
		END
  --END-IF

	IF @IDLojaDestino IS NULL
		BEGIN
			SET @IDLojaDestino = 0
		END
  --END-IF
 
  
/*
	IF @ IS NULL
		BEGIN
			SET @ = 
		END
  --END-IF
*/	
  
--- FIM DO TRECHO DE VALORES DEFAULT

	-- Incluir o Novo Registro          
	INSERT INTO [dbo].[Registro]
			   ([Registro]
			   ,[DataRegistro]
			   ,[Tipo]
			   ,[IDPessoa]
			   ,[IDLoja]
			   ,[Ritual]
			   ,[Lei]
			   ,[Diploma]
			   ,[Placet]
			   ,[Regularidade]
			   ,[Desligamento]
			   ,[IDLojaDestino]
			   ,[Data]
			   ,[Observacao]
			   ,[IDBoletim]
			   ,[Ativo]
               ,[DataInicial]
               ,[DataFinal] 
               ,[Operacao]
               )
		 VALUES (
			   @Registro,
			   @DataRegistro,
			   @Tipo,
			   @IDPessoa,
			   @IDLoja,
			   @Ritual,
			   @Lei,
			   @Diploma,
			   @Placet, 
			   @Regularidade,
			   @Desligamento,
			   @IDLojaDestino, 
			   @Data,
			   @Observacao,
			   @IDBoletim,
			   @Ativo,
			   @DataInicial,
               @DataFinal,
               @Operacao
               )           
           
--  Guarda o ID incluido
	DECLARE @ID INT
	 SET @ID = SCOPE_IDENTITY()	

-- Este Trecho Atualiza a Tabela Pessoa Dados.
	IF (@IDPessoa>0) and (@Operacao >0)
	BEGIN
		EXECUTE PessoaDadosAtualizar 
						0, -- 0 Zero significa, Atualizar PessoaDados depois de uma Inclusão
						@Registro,
						@DataRegistro,
						@Data,
						@IDPessoa ,
						@IDLoja,
						@Ritual,
						@Lei,
						@Diploma,
						@Placet,
						@Regularidade,
						@Desligamento,
						@IDLojaDestino,
						@IDBoletim,
						@Observacao,
						@DataInicial,
						@DataFinal,
						@Operacao
		
	END			
 -- END-IF
			
--- Retorna o ID Incluido
	 SELECT @ID AS id
END
GO
/****** Object:  StoredProcedure [dbo].[RegistroAlterar]    Script Date: 09/07/2010 14:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------------------------
-- Author:		<Rossatti,Junior>
-- Create date: <12/09/2009>
-- Description:	<Insercao de dados na Tabela Registro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <12/10/2009>
-- Description:	<Retirar do Atributo Placet os Valores 
-- [InstalacaoPlacet],[DesligamentoPlacet],[EliminacaoPlacet],[RejeicaoPlacet]>
--
-- Author:		<Rossatti,Junior>
-- Create date: <10/11/2009>
-- Description:	<Ajuste NA Atualizacao Automatica do grau do Obreiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <11/11/2009>
-- Description:	<Inclusão dos Atributos DataInicial e DataFinal>
--
-- Author:		<Rossatti,Junior>
-- Create date: <17/11/2009>
-- Description:	<Ajuste na Atualização de Desligamento>
--
-- Author:		<Rossatti,Junior>
-- Create date: <20/11/2009>
-- Description:	<Renomear Atributo Boletim para IDBoletim>
--
-- Author:		<Rossatti,Junior>
-- Create date: <15/01/2010>
-- Description:	<Ao efetuar transferencia, alterar o IDLoja do Obreiro>
--
-- Author:		<Rossatti,Junior>
-- Create date: <28/01/2010>
-- Description:	<Inclusao do Aributo Operacao>
--
-- Author:		<Rossatti,Junior>
-- Create date: <28/01/2010>
-- Description:	<Inclusao da chamada a Procedure PessoaDadosAtualizar>
--              <Inclusao do Aributo Operacao>
--
-- Author:		<Rossatti,Junior>
-- Create date: <28/01/2010>
-- Description:	<Inclusao do Atributo Operacao>
--
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[RegistroAlterar]
	-- Add the parameters for the stored procedure here
	@IDRegistro    INT,
	@Ativo         varchar(1),
    @Registro      INT,
    @DataRegistro  DATETIME=NULL,
    @Tipo          INT,
    @IDPessoa      INT=NULL,
    @IDLoja        INT=NULL,
    @Ritual        INT,
    @Lei           INT,
    @Diploma       INT,
    @Placet        INT,
    @Regularidade  INT,
    @Desligamento  INT,
    @IDLojaDestino INT=NULL,
    @Data          DATETIME=NULL,
    @IDBoletim     INT=NULL,
    @Observacao    TEXT=NULL,
    @DataInicial   DATETIME=NULL,
    @DataFinal     DATETIME=NULL,
    @Operacao      INT=NULL	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- TRECHO DE VALORES DEFAULT 
	-- ESTE TRECHO DE CODIGO SER PARA COLOCAR VALOR DEFAULT EM 
	-- PARAMETROS QUE VÊEM NULOS
	IF (@Operacao IS NULL)
		BEGIN
			SET @Operacao = 0
		END
  --END-IF
	IF @Observacao IS NULL
		BEGIN
			SET @Observacao = ''
		END
  --END-IF
			
	IF @DataInicial IS NULL
		BEGIN
			SET @DataInicial = 0
		END
  --END-IF

	IF @DataFinal IS NULL
		BEGIN
			SET @DataFinal = 0
		END
  --END-IF
	-- Busca o Numero do Proximo Registro Incluso
	IF (@REGISTRO IS NULL) OR (@REGISTRO=0)
		BEGIN
			SET @REGISTRO = DBO.[RegistroRetornarProximoRegistro]()

			IF (@REGISTRO IS NULL) OR (@REGISTRO=0)
				BEGIN
					SET @REGISTRO = 1
				END
		END
  --END-IF
	IF @Data IS NULL
		BEGIN
			SET @Data =GETDATE() 
		END
  --END-IF
	IF @IDBoletim IS NULL
		BEGIN
			SET @IDBoletim = 0
		END
  --END-IF

	IF @IDLojaDestino IS NULL
		BEGIN
			SET @IDLojaDestino = 0
		END
  --END-IF
 
  
/*
	IF @ IS NULL
		BEGIN
			SET @ = 
		END
  --END-IF
*/	
  
--- FIM DO TRECHO DE VALORES DEFAULT



	UPDATE [dbo].[Registro]
	   SET [Registro]      = @Registro
		  ,[DataRegistro]  = @DataRegistro
		  ,[Tipo]          = @Tipo
		  ,[IDPessoa]      = @IDPessoa
		  ,[IDLoja]        = @IDLoja
		  ,[Ritual]        = @Ritual
		  ,[Lei]           = @Lei
		  ,[Diploma]       = @Diploma
		  ,[Placet]        = @Placet
		  ,[Regularidade]  = @Regularidade
		  ,[Desligamento]  = @Desligamento
		  ,[IDLojaDestino] = @IDLojaDestino
		  ,[Data]          = @Data
		  ,[Observacao]    = @Observacao
		  ,[IDBoletim]     = @IDBoletim
		  ,[Ativo]         = @Ativo
          ,[DataInicial]   = @DataInicial
          ,[DataFinal]     = @DataFinal
          ,[Operacao]      = @Operacao
	 WHERE IDRegistro      = @IDRegistro

-- Este Trecho Atualiza a Tabela Pessoa Dados.
	IF (@IDPessoa>0) and (@Operacao>0)
	BEGIN
		EXECUTE PessoaDadosAtualizar 
						0, -- 0 Zero significa, Atualizar PessoaDados depois de uma Inclusão
						@Registro,
						@DataRegistro,
						@Data,
						@IDPessoa ,
						@IDLoja,
						@Ritual,
						@Lei,
						@Diploma,
						@Placet,
						@Regularidade,
						@Desligamento,
						@IDLojaDestino,
						@IDBoletim,
						@Observacao,
						@DataInicial,
						@DataFinal,
						@Operacao
		
	END			
 -- END-IF
  
END
GO
/****** Object:  Default [DF_PessoaGrauTipo_Ativo]    Script Date: 09/07/2010 14:48:13 ******/
ALTER TABLE [dbo].[PessoaGrauTipo] ADD  CONSTRAINT [DF_PessoaGrauTipo_Ativo]  DEFAULT ((0)) FOR [Ativo]
GO
/****** Object:  Default [DF_PessoaEstadoCivil_Ativo]    Script Date: 09/07/2010 14:48:13 ******/
ALTER TABLE [dbo].[PessoaEstadoCivil] ADD  CONSTRAINT [DF_PessoaEstadoCivil_Ativo]  DEFAULT ((0)) FOR [Ativo]
GO
/****** Object:  Default [DF_CargoTipo_Ativo]    Script Date: 09/07/2010 14:48:14 ******/
ALTER TABLE [dbo].[CargoTipo] ADD  CONSTRAINT [DF_CargoTipo_Ativo]  DEFAULT ((0)) FOR [Ativo]
GO
/****** Object:  Default [DF_CargoNivel_Ativo]    Script Date: 09/07/2010 14:48:14 ******/
ALTER TABLE [dbo].[CargoNivel] ADD  CONSTRAINT [DF_CargoNivel_Ativo]  DEFAULT ((0)) FOR [Ativo]
GO
/****** Object:  Default [DF_Financeiro_Quantidade]    Script Date: 09/07/2010 14:48:14 ******/
ALTER TABLE [dbo].[Financeiro] ADD  CONSTRAINT [DF_Financeiro_Quantidade]  DEFAULT ((1)) FOR [Quantidade]
GO
/****** Object:  Default [DF_LojaRegiao_Ativo]    Script Date: 09/07/2010 14:48:14 ******/
ALTER TABLE [dbo].[LojaRegiao] ADD  CONSTRAINT [DF_LojaRegiao_Ativo]  DEFAULT ('0') FOR [Ativo]
GO
/****** Object:  Default [DF_Convenio_Ativo]    Script Date: 09/07/2010 14:48:14 ******/
ALTER TABLE [dbo].[Convenio] ADD  CONSTRAINT [DF_Convenio_Ativo]  DEFAULT ((0)) FOR [Ativo]
GO
/****** Object:  Default [DF_Cidade_Ativo]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[CidadeContinente] ADD  CONSTRAINT [DF_Cidade_Ativo]  DEFAULT ((0)) FOR [Ativo]
GO
/****** Object:  ForeignKey [FK_CidadePais_CidadeContinente]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[CidadePais]  WITH CHECK ADD  CONSTRAINT [FK_CidadePais_CidadeContinente] FOREIGN KEY([IDCidadeContinente])
REFERENCES [dbo].[CidadeContinente] ([IDCidadeContinente])
GO
ALTER TABLE [dbo].[CidadePais] CHECK CONSTRAINT [FK_CidadePais_CidadeContinente]
GO
/****** Object:  ForeignKey [FK_CidadeEstado_CidadePais]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[CidadeEstado]  WITH CHECK ADD  CONSTRAINT [FK_CidadeEstado_CidadePais] FOREIGN KEY([IDCidadePais])
REFERENCES [dbo].[CidadePais] ([IDCidadePais])
GO
ALTER TABLE [dbo].[CidadeEstado] CHECK CONSTRAINT [FK_CidadeEstado_CidadePais]
GO
/****** Object:  ForeignKey [FK_Cidade_CidadeEstado]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD  CONSTRAINT [FK_Cidade_CidadeEstado] FOREIGN KEY([IDCidadeEstado])
REFERENCES [dbo].[CidadeEstado] ([IDCidadeEstado])
GO
ALTER TABLE [dbo].[Cidade] CHECK CONSTRAINT [FK_Cidade_CidadeEstado]
GO
/****** Object:  ForeignKey [FK_Pessoa_Cidade]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [FK_Pessoa_Cidade] FOREIGN KEY([EnderecoIDCidade])
REFERENCES [dbo].[Cidade] ([IDCidade])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [FK_Pessoa_Cidade]
GO
/****** Object:  ForeignKey [FK_Pessoa_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [FK_Pessoa_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [FK_Pessoa_Loja]
GO
/****** Object:  ForeignKey [FK_Pessoa_PessoaGrauTipo]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [FK_Pessoa_PessoaGrauTipo] FOREIGN KEY([IDPessoaGrauTipo])
REFERENCES [dbo].[PessoaGrauTipo] ([IDPessoaGrauTipo])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [FK_Pessoa_PessoaGrauTipo]
GO
/****** Object:  ForeignKey [FK_Pessoa_PessoaTipo]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [FK_Pessoa_PessoaTipo] FOREIGN KEY([IDPessoaTipo])
REFERENCES [dbo].[PessoaTipo] ([IDPessoaTipo])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [FK_Pessoa_PessoaTipo]
GO
/****** Object:  ForeignKey [FK_PessoaDados_Cidade]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaDados]  WITH CHECK ADD  CONSTRAINT [FK_PessoaDados_Cidade] FOREIGN KEY([NascimentoIDCidade])
REFERENCES [dbo].[Cidade] ([IDCidade])
GO
ALTER TABLE [dbo].[PessoaDados] CHECK CONSTRAINT [FK_PessoaDados_Cidade]
GO
/****** Object:  ForeignKey [FK_PessoaDados_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaDados]  WITH CHECK ADD  CONSTRAINT [FK_PessoaDados_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[PessoaDados] CHECK CONSTRAINT [FK_PessoaDados_Pessoa]
GO
/****** Object:  ForeignKey [FK_PessoaDados_PessoaEstadoCivil]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaDados]  WITH CHECK ADD  CONSTRAINT [FK_PessoaDados_PessoaEstadoCivil] FOREIGN KEY([IDPessoaEstadoCivil])
REFERENCES [dbo].[PessoaEstadoCivil] ([IDPessoaEstadoCivil])
GO
ALTER TABLE [dbo].[PessoaDados] CHECK CONSTRAINT [FK_PessoaDados_PessoaEstadoCivil]
GO
/****** Object:  ForeignKey [FK_PessoaDados_PessoaProfissao]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaDados]  WITH CHECK ADD  CONSTRAINT [FK_PessoaDados_PessoaProfissao] FOREIGN KEY([IDPessoaProfissao])
REFERENCES [dbo].[PessoaProfissao] ([IDPessoaProfissao])
GO
ALTER TABLE [dbo].[PessoaDados] CHECK CONSTRAINT [FK_PessoaDados_PessoaProfissao]
GO
/****** Object:  ForeignKey [FK_Adm_PessoaTipoFornecedor]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Adm]  WITH NOCHECK ADD  CONSTRAINT [FK_Adm_PessoaTipoFornecedor] FOREIGN KEY([IDPessoaTipoFornecedor])
REFERENCES [dbo].[PessoaTipo] ([IDPessoaTipo])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Adm] NOCHECK CONSTRAINT [FK_Adm_PessoaTipoFornecedor]
GO
/****** Object:  ForeignKey [FK_Adm_PessoaTipoObreiro]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Adm]  WITH NOCHECK ADD  CONSTRAINT [FK_Adm_PessoaTipoObreiro] FOREIGN KEY([IDPessoaTipoObreiro])
REFERENCES [dbo].[PessoaTipo] ([IDPessoaTipo])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Adm] NOCHECK CONSTRAINT [FK_Adm_PessoaTipoObreiro]
GO
/****** Object:  ForeignKey [FK_PessoaFamilia_Cidade]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaFamilia]  WITH CHECK ADD  CONSTRAINT [FK_PessoaFamilia_Cidade] FOREIGN KEY([EnderecoIDCidade])
REFERENCES [dbo].[Cidade] ([IDCidade])
GO
ALTER TABLE [dbo].[PessoaFamilia] CHECK CONSTRAINT [FK_PessoaFamilia_Cidade]
GO
/****** Object:  ForeignKey [FK_PessoaFamilia_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaFamilia]  WITH CHECK ADD  CONSTRAINT [FK_PessoaFamilia_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[PessoaFamilia] CHECK CONSTRAINT [FK_PessoaFamilia_Pessoa]
GO
/****** Object:  ForeignKey [FK_PessoaFamilia_PessoaGrauParentesco]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaFamilia]  WITH CHECK ADD  CONSTRAINT [FK_PessoaFamilia_PessoaGrauParentesco] FOREIGN KEY([IDPessoaGrauParentesco])
REFERENCES [dbo].[PessoaGrauParentesco] ([IDPessoaGrauParentesco])
GO
ALTER TABLE [dbo].[PessoaFamilia] CHECK CONSTRAINT [FK_PessoaFamilia_PessoaGrauParentesco]
GO
/****** Object:  ForeignKey [FK_Potencia_Cidade]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Potencia]  WITH CHECK ADD  CONSTRAINT [FK_Potencia_Cidade] FOREIGN KEY([IDCidade])
REFERENCES [dbo].[Cidade] ([IDCidade])
GO
ALTER TABLE [dbo].[Potencia] CHECK CONSTRAINT [FK_Potencia_Cidade]
GO
/****** Object:  ForeignKey [FK_Potencia_CidadeContinente]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Potencia]  WITH CHECK ADD  CONSTRAINT [FK_Potencia_CidadeContinente] FOREIGN KEY([IDCidadeContinente])
REFERENCES [dbo].[CidadeContinente] ([IDCidadeContinente])
GO
ALTER TABLE [dbo].[Potencia] CHECK CONSTRAINT [FK_Potencia_CidadeContinente]
GO
/****** Object:  ForeignKey [FK_Potencia_CidadeEstado]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Potencia]  WITH CHECK ADD  CONSTRAINT [FK_Potencia_CidadeEstado] FOREIGN KEY([IDCidadeEstado])
REFERENCES [dbo].[CidadeEstado] ([IDCidadeEstado])
GO
ALTER TABLE [dbo].[Potencia] CHECK CONSTRAINT [FK_Potencia_CidadeEstado]
GO
/****** Object:  ForeignKey [FK_Potencia_CidadePais]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Potencia]  WITH CHECK ADD  CONSTRAINT [FK_Potencia_CidadePais] FOREIGN KEY([IDCidadePais])
REFERENCES [dbo].[CidadePais] ([IDCidadePais])
GO
ALTER TABLE [dbo].[Potencia] CHECK CONSTRAINT [FK_Potencia_CidadePais]
GO
/****** Object:  ForeignKey [FK_Loja_Cidade]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Loja]  WITH CHECK ADD  CONSTRAINT [FK_Loja_Cidade] FOREIGN KEY([IDCidade])
REFERENCES [dbo].[Cidade] ([IDCidade])
GO
ALTER TABLE [dbo].[Loja] CHECK CONSTRAINT [FK_Loja_Cidade]
GO
/****** Object:  ForeignKey [FK_Loja_LojaRegiao]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Loja]  WITH CHECK ADD  CONSTRAINT [FK_Loja_LojaRegiao] FOREIGN KEY([IDLojaRegiao])
REFERENCES [dbo].[LojaRegiao] ([IDLojaRegiao])
GO
ALTER TABLE [dbo].[Loja] CHECK CONSTRAINT [FK_Loja_LojaRegiao]
GO
/****** Object:  ForeignKey [FK_Loja_PessoaSecretario]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Loja]  WITH CHECK ADD  CONSTRAINT [FK_Loja_PessoaSecretario] FOREIGN KEY([IDPessoaSecretario])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[Loja] CHECK CONSTRAINT [FK_Loja_PessoaSecretario]
GO
/****** Object:  ForeignKey [FK_Loja_PessoaTesoureiro]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Loja]  WITH CHECK ADD  CONSTRAINT [FK_Loja_PessoaTesoureiro] FOREIGN KEY([IDPessoaTesoureiro])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[Loja] CHECK CONSTRAINT [FK_Loja_PessoaTesoureiro]
GO
/****** Object:  ForeignKey [FK_Loja_PessoaVeneravel]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Loja]  WITH CHECK ADD  CONSTRAINT [FK_Loja_PessoaVeneravel] FOREIGN KEY([IDPessoaVeneravel])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[Loja] CHECK CONSTRAINT [FK_Loja_PessoaVeneravel]
GO
/****** Object:  ForeignKey [FK_Loja_Potencia]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Loja]  WITH CHECK ADD  CONSTRAINT [FK_Loja_Potencia] FOREIGN KEY([IDPotencia])
REFERENCES [dbo].[Potencia] ([IDPotencia])
GO
ALTER TABLE [dbo].[Loja] CHECK CONSTRAINT [FK_Loja_Potencia]
GO
/****** Object:  ForeignKey [FK_PessoaCargo_CargoNivel]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaCargo]  WITH CHECK ADD  CONSTRAINT [FK_PessoaCargo_CargoNivel] FOREIGN KEY([IDCargoNivel])
REFERENCES [dbo].[CargoNivel] ([IDCargoNivel])
GO
ALTER TABLE [dbo].[PessoaCargo] CHECK CONSTRAINT [FK_PessoaCargo_CargoNivel]
GO
/****** Object:  ForeignKey [FK_PessoaCargo_CargoTipo]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaCargo]  WITH CHECK ADD  CONSTRAINT [FK_PessoaCargo_CargoTipo] FOREIGN KEY([IDCargoTipo])
REFERENCES [dbo].[CargoTipo] ([IDCargoTipo])
GO
ALTER TABLE [dbo].[PessoaCargo] CHECK CONSTRAINT [FK_PessoaCargo_CargoTipo]
GO
/****** Object:  ForeignKey [FK_PessoaCargo_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaCargo]  WITH CHECK ADD  CONSTRAINT [FK_PessoaCargo_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[PessoaCargo] CHECK CONSTRAINT [FK_PessoaCargo_Loja]
GO
/****** Object:  ForeignKey [FK_PessoaCargo_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaCargo]  WITH CHECK ADD  CONSTRAINT [FK_PessoaCargo_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[PessoaCargo] CHECK CONSTRAINT [FK_PessoaCargo_Pessoa]
GO
/****** Object:  ForeignKey [FK_SolicitacaoSiteItem_FinanceiroTipo]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[SolicitacaoSiteItem]  WITH CHECK ADD  CONSTRAINT [FK_SolicitacaoSiteItem_FinanceiroTipo] FOREIGN KEY([IDFinanceiroTipo])
REFERENCES [dbo].[FinanceiroTipo] ([IDFinanceiroTipo])
GO
ALTER TABLE [dbo].[SolicitacaoSiteItem] CHECK CONSTRAINT [FK_SolicitacaoSiteItem_FinanceiroTipo]
GO
/****** Object:  ForeignKey [FK_PessoaConvenio_Convenio]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaConvenio]  WITH CHECK ADD  CONSTRAINT [FK_PessoaConvenio_Convenio] FOREIGN KEY([IDConvenio])
REFERENCES [dbo].[Convenio] ([IDConvenio])
GO
ALTER TABLE [dbo].[PessoaConvenio] CHECK CONSTRAINT [FK_PessoaConvenio_Convenio]
GO
/****** Object:  ForeignKey [FK_PessoaConvenio_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaConvenio]  WITH CHECK ADD  CONSTRAINT [FK_PessoaConvenio_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[PessoaConvenio] CHECK CONSTRAINT [FK_PessoaConvenio_Pessoa]
GO
/****** Object:  ForeignKey [FK_PatrimonioLotacao_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PatrimonioLotacao]  WITH CHECK ADD  CONSTRAINT [FK_PatrimonioLotacao_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[PatrimonioLotacao] CHECK CONSTRAINT [FK_PatrimonioLotacao_Loja]
GO
/****** Object:  ForeignKey [FK_PatrimonioItens_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PatrimonioItens]  WITH CHECK ADD  CONSTRAINT [FK_PatrimonioItens_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[PatrimonioItens] CHECK CONSTRAINT [FK_PatrimonioItens_Loja]
GO
/****** Object:  ForeignKey [FK_PatrimonioItens_PatrimonioItensTipo]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PatrimonioItens]  WITH CHECK ADD  CONSTRAINT [FK_PatrimonioItens_PatrimonioItensTipo] FOREIGN KEY([IDPatrimonioItensTipo])
REFERENCES [dbo].[PatrimonioItensTipo] ([IDPatrimonioItensTipo])
GO
ALTER TABLE [dbo].[PatrimonioItens] CHECK CONSTRAINT [FK_PatrimonioItens_PatrimonioItensTipo]
GO
/****** Object:  ForeignKey [FK_PatrimonioItens_PatrimonioLotacao]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PatrimonioItens]  WITH CHECK ADD  CONSTRAINT [FK_PatrimonioItens_PatrimonioLotacao] FOREIGN KEY([IDLotacao])
REFERENCES [dbo].[PatrimonioLotacao] ([IDPatrimonioLotacao])
GO
ALTER TABLE [dbo].[PatrimonioItens] CHECK CONSTRAINT [FK_PatrimonioItens_PatrimonioLotacao]
GO
/****** Object:  ForeignKey [FK_PatrimonioItens_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PatrimonioItens]  WITH CHECK ADD  CONSTRAINT [FK_PatrimonioItens_Pessoa] FOREIGN KEY([IDPessoaFabricante])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[PatrimonioItens] CHECK CONSTRAINT [FK_PatrimonioItens_Pessoa]
GO
/****** Object:  ForeignKey [FK_PatrimonioItens_Pessoa1]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PatrimonioItens]  WITH CHECK ADD  CONSTRAINT [FK_PatrimonioItens_Pessoa1] FOREIGN KEY([IDPessoaFornecedor])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[PatrimonioItens] CHECK CONSTRAINT [FK_PatrimonioItens_Pessoa1]
GO
/****** Object:  ForeignKey [FK_Telefone_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [FK_Telefone_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [FK_Telefone_Loja]
GO
/****** Object:  ForeignKey [FK_Telefone_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [FK_Telefone_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [FK_Telefone_Pessoa]
GO
/****** Object:  ForeignKey [FK_Telefone_Potencia]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [FK_Telefone_Potencia] FOREIGN KEY([IDPotencia])
REFERENCES [dbo].[Potencia] ([IDPotencia])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [FK_Telefone_Potencia]
GO
/****** Object:  ForeignKey [FK_PotenciaBandeira_Potencia]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PotenciaBandeira]  WITH CHECK ADD  CONSTRAINT [FK_PotenciaBandeira_Potencia] FOREIGN KEY([IDPotencia])
REFERENCES [dbo].[Potencia] ([IDPotencia])
GO
ALTER TABLE [dbo].[PotenciaBandeira] CHECK CONSTRAINT [FK_PotenciaBandeira_Potencia]
GO
/****** Object:  ForeignKey [FK_Registro_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Registro]  WITH NOCHECK ADD  CONSTRAINT [FK_Registro_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[Registro] NOCHECK CONSTRAINT [FK_Registro_Loja]
GO
/****** Object:  ForeignKey [FK_Registro_Loja1]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Registro]  WITH NOCHECK ADD  CONSTRAINT [FK_Registro_Loja1] FOREIGN KEY([IDLojaDestino])
REFERENCES [dbo].[Loja] ([IDLoja])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Registro] NOCHECK CONSTRAINT [FK_Registro_Loja1]
GO
/****** Object:  ForeignKey [FK_Registro_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Registro]  WITH NOCHECK ADD  CONSTRAINT [FK_Registro_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[Registro] NOCHECK CONSTRAINT [FK_Registro_Pessoa]
GO
/****** Object:  ForeignKey [FK_RegistroFiliacao_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[RegistroFiliacao]  WITH CHECK ADD  CONSTRAINT [FK_RegistroFiliacao_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[RegistroFiliacao] CHECK CONSTRAINT [FK_RegistroFiliacao_Pessoa]
GO
/****** Object:  ForeignKey [FK_RegistroFiliacao_Potencia]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[RegistroFiliacao]  WITH NOCHECK ADD  CONSTRAINT [FK_RegistroFiliacao_Potencia] FOREIGN KEY([IDPotencia])
REFERENCES [dbo].[Potencia] ([IDPotencia])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[RegistroFiliacao] NOCHECK CONSTRAINT [FK_RegistroFiliacao_Potencia]
GO
/****** Object:  ForeignKey [FK_RegistroFiliacao_Registro]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[RegistroFiliacao]  WITH CHECK ADD  CONSTRAINT [FK_RegistroFiliacao_Registro] FOREIGN KEY([IDRegistro])
REFERENCES [dbo].[Registro] ([IDRegistro])
GO
ALTER TABLE [dbo].[RegistroFiliacao] CHECK CONSTRAINT [FK_RegistroFiliacao_Registro]
GO
/****** Object:  ForeignKey [FK_PessoaPlacet_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaPlacet]  WITH NOCHECK ADD  CONSTRAINT [FK_PessoaPlacet_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[PessoaPlacet] NOCHECK CONSTRAINT [FK_PessoaPlacet_Loja]
GO
/****** Object:  ForeignKey [FK_PessoaPlacet_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaPlacet]  WITH CHECK ADD  CONSTRAINT [FK_PessoaPlacet_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[PessoaPlacet] CHECK CONSTRAINT [FK_PessoaPlacet_Pessoa]
GO
/****** Object:  ForeignKey [FK_PessoaEndereco_Cidade]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaEndereco]  WITH CHECK ADD  CONSTRAINT [FK_PessoaEndereco_Cidade] FOREIGN KEY([EnderecoIDCidade])
REFERENCES [dbo].[Cidade] ([IDCidade])
GO
ALTER TABLE [dbo].[PessoaEndereco] CHECK CONSTRAINT [FK_PessoaEndereco_Cidade]
GO
/****** Object:  ForeignKey [FK_PessoaEndereco_Pessoa]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[PessoaEndereco]  WITH CHECK ADD  CONSTRAINT [FK_PessoaEndereco_Pessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
GO
ALTER TABLE [dbo].[PessoaEndereco] CHECK CONSTRAINT [FK_PessoaEndereco_Pessoa]
GO
/****** Object:  ForeignKey [FK_LojaMemorando_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[LojaMemorando]  WITH CHECK ADD  CONSTRAINT [FK_LojaMemorando_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[LojaMemorando] CHECK CONSTRAINT [FK_LojaMemorando_Loja]
GO
/****** Object:  ForeignKey [FK_SolicitacaoSite_Loja]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[SolicitacaoSite]  WITH CHECK ADD  CONSTRAINT [FK_SolicitacaoSite_Loja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[Loja] ([IDLoja])
GO
ALTER TABLE [dbo].[SolicitacaoSite] CHECK CONSTRAINT [FK_SolicitacaoSite_Loja]
GO
/****** Object:  ForeignKey [FK_SolicitacaoSite_SolicitacaoSiteItem]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[SolicitacaoSite]  WITH CHECK ADD  CONSTRAINT [FK_SolicitacaoSite_SolicitacaoSiteItem] FOREIGN KEY([IDSolicitacaoSiteItem])
REFERENCES [dbo].[SolicitacaoSiteItem] ([IDSolicitacaoSiteItem])
GO
ALTER TABLE [dbo].[SolicitacaoSite] CHECK CONSTRAINT [FK_SolicitacaoSite_SolicitacaoSiteItem]
GO
/****** Object:  ForeignKey [FK_Empresa_Cidade]    Script Date: 09/07/2010 14:48:15 ******/
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Cidade] FOREIGN KEY([EnderecoIDCidade])
REFERENCES [dbo].[Cidade] ([IDCidade])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Cidade]
GO
