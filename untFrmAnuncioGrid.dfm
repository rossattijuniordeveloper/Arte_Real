object frmAnuncioGrid: TfrmAnuncioGrid
  Left = 0
  Top = 0
  Caption = 'frmAnuncioGrid'
  ClientHeight = 365
  ClientWidth = 789
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 275
    Width = 789
    Height = 90
    Align = alBottom
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object btnSair: TImage
      Left = 739
      Top = 2
      Width = 48
      Height = 86
      Cursor = crHandPoint
      Hint = 'Sair desta Tela'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = btnSairClick
      ExplicitLeft = 768
    end
    object btnIncluir: TImage
      Left = 643
      Top = 2
      Width = 48
      Height = 86
      Cursor = crHandPoint
      Hint = 'Pressione este Bot'#227'o para Incluir Novo Assinatura'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = btnIncluirClick
      ExplicitLeft = 676
      ExplicitTop = 6
    end
    object btnAlterar: TImage
      Left = 691
      Top = 2
      Width = 48
      Height = 86
      Cursor = crHandPoint
      Hint = 'Pressione este Bot'#227'o para ALTERAR os dados do Assinatura.'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = btnAlterarClick
      ExplicitLeft = 570
      ExplicitTop = 18
      ExplicitHeight = 48
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 250
    Width = 789
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 1
  end
  object grid: TDBGrid
    Left = 0
    Top = 57
    Width = 789
    Height = 193
    Align = alClient
    BiDiMode = bdLeftToRight
    Color = clWhite
    DataSource = ds
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumeroContrato'
        Title.Alignment = taCenter
        Title.Caption = 'Numero do Contrato de Anuncio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 369
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DataInicioTxt'
        Title.Alignment = taCenter
        Title.Caption = 'Data Inicial'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 190
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DataFimTxt'
        Title.Alignment = taCenter
        Title.Caption = 'Data Final'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 207
        Visible = True
      end>
  end
  object pnlAnuncio: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Anuncio(s) de '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
  object sql_Anuncio: TADOStoredProc
    Connection = Dm.dados
    CursorType = ctStatic
    ProcedureName = 'MGP_ArteReal_Anuncio_Selecionar;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IDAnuncio'
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
        Name = '@NumeroContrato'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@DataInicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DataFim'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 40
    Top = 16
    object sql_AnuncioIDAnuncio: TAutoIncField
      FieldName = 'IDAnuncio'
      ReadOnly = True
    end
    object sql_AnuncioIDAssinante: TIntegerField
      FieldName = 'IDAssinante'
    end
    object sql_AnuncioNumeroContrato: TStringField
      FieldName = 'NumeroContrato'
      Size = 50
    end
    object sql_AnuncioDataInicioTxt: TStringField
      FieldName = 'DataInicioTxt'
      ReadOnly = True
      Size = 10
    end
    object sql_AnuncioDataFimTxt: TStringField
      FieldName = 'DataFimTxt'
      ReadOnly = True
      Size = 10
    end
    object sql_AnuncioAtivo: TIntegerField
      FieldName = 'Ativo'
    end
  end
  object ds: TDataSource
    DataSet = sql_Anuncio
    Left = 120
    Top = 8
  end
end
