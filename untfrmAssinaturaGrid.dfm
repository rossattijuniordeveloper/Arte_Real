object frmAssinaturaGrid: TfrmAssinaturaGrid
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Assinatura(s) de'
  ClientHeight = 348
  ClientWidth = 822
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 822
    Height = 90
    Align = alBottom
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object btnSair: TImage
      Left = 772
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
      Left = 676
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
      ExplicitLeft = 670
      ExplicitTop = 6
    end
    object btnAlterar: TImage
      Left = 724
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
  object pnlAssinatura: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Assinatura(s) de'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object grid: TDBGrid
    Left = 0
    Top = 57
    Width = 822
    Height = 176
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
        FieldName = 'DataInicio'
        Title.Alignment = taCenter
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
        FieldName = 'DataFim'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 207
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 233
    Width = 822
    Height = 25
    DataSource = ds
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 3
  end
  object sql_Assinatura: TADOStoredProc
    Connection = Dm.dados
    CursorType = ctStatic
    ProcedureName = 'MGP_ArteReal_Assinaturas_Selecionar;1'
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
        Value = '0'
      end
      item
        Name = '@IDAssinante'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 48
    Top = 24
    object sql_AssinaturaIDAssinatura: TAutoIncField
      FieldName = 'IDAssinatura'
      ReadOnly = True
    end
    object sql_AssinaturaIDAssinante: TIntegerField
      FieldName = 'IDAssinante'
    end
    object sql_AssinaturaAssinanteNome: TStringField
      FieldName = 'AssinanteNome'
      Size = 100
    end
    object sql_AssinaturaNumeroContrato: TStringField
      FieldName = 'NumeroContrato'
      Size = 50
    end
    object sql_AssinaturaDataInicio: TDateTimeField
      FieldName = 'DataInicio'
    end
    object sql_AssinaturaDataFim: TDateTimeField
      FieldName = 'DataFim'
    end
    object sql_AssinaturaAtivo: TIntegerField
      FieldName = 'Ativo'
    end
  end
  object ds: TDataSource
    DataSet = sql_Assinatura
    Left = 120
    Top = 40
  end
end
