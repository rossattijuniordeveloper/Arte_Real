object FrmAssinanteTelefoneGrid: TFrmAssinanteTelefoneGrid
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Telefones de :'
  ClientHeight = 376
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 268
    Width = 806
    Height = 108
    Align = alBottom
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object btnSair: TImage
      Left = 756
      Top = 2
      Width = 48
      Height = 104
      Cursor = crHandPoint
      Hint = 'Sair desta Tela'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = btnSairClick
      ExplicitLeft = 768
      ExplicitHeight = 86
    end
    object btnIncluir: TImage
      Left = 660
      Top = 2
      Width = 48
      Height = 104
      Cursor = crHandPoint
      Hint = 'Pressione este Bot'#227'o para Incluir Novo Telefone'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = btnIncluirClick
      ExplicitLeft = 670
      ExplicitTop = 6
      ExplicitHeight = 86
    end
    object btnAlterar: TImage
      Left = 708
      Top = 2
      Width = 48
      Height = 104
      Cursor = crHandPoint
      Hint = 'Pressione este Bot'#227'o para ALTERAR os dados de Telefone.'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = btnAlterarClick
      ExplicitLeft = 714
      ExplicitTop = 6
    end
    object pnlCadastro: TPanel
      Left = 2
      Top = 2
      Width = 583
      Height = 104
      Align = alLeft
      Color = clSilver
      Enabled = False
      ParentBackground = False
      TabOrder = 0
      object lblAcao: TLabel
        Left = 1
        Top = 1
        Width = 581
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'A'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 28
      end
      object Label1: TLabel
        Left = 16
        Top = 40
        Width = 58
        Height = 13
        Caption = 'Nr. telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btnGravar: TImage
        Left = 486
        Top = 17
        Width = 48
        Height = 86
        Align = alRight
        Center = True
        OnClick = btnGravarClick
        ExplicitLeft = 722
        ExplicitTop = 2
        ExplicitHeight = 58
      end
      object btnGravarNao: TImage
        Left = 534
        Top = 17
        Width = 48
        Height = 86
        Cursor = crHandPoint
        Align = alRight
        Center = True
        Transparent = True
        OnClick = btnGravarNaoClick
        ExplicitLeft = 739
        ExplicitTop = 2
        ExplicitHeight = 48
      end
      object edtTelefone: TEdit
        Left = 7
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object rdgAtivo: TRadioGroup
        Left = 368
        Top = 17
        Width = 118
        Height = 86
        Align = alRight
        Caption = ' Status do telefone '
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 1
      end
      object rdgTipoTelefone: TRadioGroup
        Left = 235
        Top = 17
        Width = 133
        Height = 86
        Align = alRight
        Caption = 'Tipo Telefone'
        ItemIndex = 0
        Items.Strings = (
          'Comercial'
          'Residencial'
          'Fax'
          'Celular')
        TabOrder = 2
      end
    end
  end
  object pnlAcao: TPanel
    Left = 0
    Top = 0
    Width = 806
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Telefones de :'
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
    Width = 806
    Height = 186
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
        FieldName = 'Telefone'
        Title.Alignment = taCenter
        Title.Caption = 'Nr. do Telefone'
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
        FieldName = 'TipoTelefoneNome'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo de Telefone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 348
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 243
    Width = 806
    Height = 25
    DataSource = ds
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 3
  end
  object sqlConsulta: TADOStoredProc
    Connection = Dm.dados
    CursorType = ctStatic
    ProcedureName = 'MGP_ArteReal_Assinante_Telefone_Selecionar'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IDTelefone'
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
        Name = '@Telefone'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@TelefoneTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 24
    object sqlConsultaIDTelefone: TAutoIncField
      FieldName = 'IDTelefone'
      ReadOnly = True
    end
    object sqlConsultaIDAssinante: TIntegerField
      FieldName = 'IDAssinante'
    end
    object sqlConsultaTelefone: TStringField
      FieldName = 'Telefone'
      Size = 50
    end
    object sqlConsultaTelefoneTipo: TIntegerField
      FieldName = 'TelefoneTipo'
    end
    object sqlConsultaTipoTelefoneNome: TStringField
      FieldName = 'TipoTelefoneNome'
      ReadOnly = True
      Size = 11
    end
    object sqlConsultaAtivo: TIntegerField
      FieldName = 'Ativo'
    end
  end
  object ds: TDataSource
    DataSet = sqlConsulta
    Left = 120
    Top = 40
  end
  object sqlIncluir: TADOStoredProc
    Connection = Dm.dados
    CursorType = ctStatic
    ProcedureName = 'MGP_ArteReal_Assinante_Telefone_Incluir;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@IDAssinante'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Telefone'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@TelefoneTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 40
    Top = 128
    object sqlIncluirID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object sqlAlterar: TADOStoredProc
    Connection = Dm.dados
    ProcedureName = 'MGP_ArteReal_Assinante_Telefone_Alterar;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@IDTelefone'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Telefone'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@TelefoneTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 160
    Top = 128
  end
end
