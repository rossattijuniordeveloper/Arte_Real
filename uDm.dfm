object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 532
  Width = 794
  object sql_Consulta_ArteReal: TADOStoredProc
    AutoCalcFields = False
    Connection = dados
    CursorType = ctStatic
    EnableBCD = False
    ProcedureName = 'MGP_ArteReal_Selecionar;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDAssinante'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AssinanteAtivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AnuncianteAtivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 112
    Top = 96
    object sql_Consulta_ArteRealIDAssinante: TAutoIncField
      FieldName = 'IDAssinante'
      ReadOnly = True
    end
    object sql_Consulta_ArteRealAssinanteNome: TStringField
      FieldName = 'AssinanteNome'
      Size = 100
    end
    object sql_Consulta_ArteRealIDPessoa: TIntegerField
      FieldName = 'IDPessoa'
    end
    object sql_Consulta_ArteRealIDLoja: TIntegerField
      FieldName = 'IDLoja'
    end
    object sql_Consulta_ArteRealNomeLoja: TStringField
      FieldName = 'NomeLoja'
      Size = 100
    end
    object sql_Consulta_ArteRealDataNascimentoTxt: TStringField
      FieldName = 'DataNascimentoTxt'
      ReadOnly = True
      Size = 10
    end
    object sql_Consulta_ArteRealEndereco: TStringField
      FieldName = 'Endereco'
      Size = 100
    end
    object sql_Consulta_ArteRealBairro: TStringField
      FieldName = 'Bairro'
      Size = 100
    end
    object sql_Consulta_ArteRealCidadeNome: TStringField
      FieldName = 'CidadeNome'
      Size = 100
    end
    object sql_Consulta_ArteRealCidadeEstadoNome: TStringField
      FieldName = 'CidadeEstadoNome'
      Size = 100
    end
    object sql_Consulta_ArteRealIDCidade: TIntegerField
      FieldName = 'IDCidade'
    end
    object sql_Consulta_ArteRealCep: TStringField
      FieldName = 'Cep'
      Size = 100
    end
  end
  object dados: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI.1;Password=d2n8r8;Persist Security Info=True;Us' +
      'er ID=glemt;Initial Catalog=glemt;Data Source=189.38.80.84;Exten' +
      'ded Properties="Persistent Security Info=True"'
    LoginPrompt = False
    Provider = 'SQLNCLI.1'
    Left = 8
  end
  object sql_Obreiros: TADOStoredProc
    AutoCalcFields = False
    Connection = dados
    CursorType = ctStatic
    ProcedureName = 'SelecaoPessoa;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Nome'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@IDPessoa'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDLoja'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDPessoaGrauTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDPessoaTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Codigo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 24
    Top = 160
    object sql_ObreirosID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_ObreirosNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object sql_ObreirosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object sql_ObreirosAtivo: TStringField
      FieldName = 'Ativo'
      Size = 1
    end
    object sql_ObreirosCidadeNome: TStringField
      FieldName = 'CidadeNome'
      Size = 100
    end
    object sql_ObreirosIDCidade: TAutoIncField
      FieldName = 'IDCidade'
      ReadOnly = True
    end
    object sql_ObreirosLojaNome: TStringField
      FieldName = 'LojaNome'
      Size = 100
    end
  end
  object sql_Lojas: TADOStoredProc
    AutoCalcFields = False
    Connection = dados
    CursorType = ctStatic
    ProcedureName = 'SelecaoLoja'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Nome'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@IDLoja'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDPotencia'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDLojaRegiao'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Codigo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 104
    Top = 160
    object sql_LojasID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_LojasCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object sql_LojasNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object sql_LojasAtivo: TStringField
      FieldName = 'Ativo'
      Size = 1
    end
  end
  object sql_Cidade: TADOStoredProc
    AutoCalcFields = False
    Connection = dados
    CursorType = ctStatic
    ProcedureName = 'SelecaoCidade;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Nome'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@IDCidade'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDCidadeEstado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 168
    Top = 160
    object sql_CidadeID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_CidadeCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object sql_CidadeNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object sql_CidadeAtivo: TStringField
      FieldName = 'Ativo'
      Size = 1
    end
    object sql_CidadeIDCidadeEstado: TIntegerField
      FieldName = 'IDCidadeEstado'
    end
  end
  object sql_CidadeEstado: TADOStoredProc
    AutoCalcFields = False
    Connection = dados
    CursorType = ctStatic
    ProcedureName = 'SelecaoCidadeEstado'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@Nome'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@IDCidadeEstado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDCidadePais'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Sigla'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Naturalidade'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 248
    Top = 160
    object sql_CidadeEstadoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_CidadeEstadoCodigo: TStringField
      FieldName = 'Codigo'
    end
    object sql_CidadeEstadoNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object sql_CidadeEstadoAtivo: TStringField
      FieldName = 'Ativo'
      Size = 1
    end
    object sql_CidadeEstadoUF: TStringField
      FieldName = 'UF'
    end
  end
  object dsEstado: TDataSource
    DataSet = sql_CidadeEstado
    Left = 240
    Top = 208
  end
end
