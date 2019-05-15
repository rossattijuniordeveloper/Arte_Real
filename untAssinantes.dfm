object frmAssinantes: TfrmAssinantes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Assinantes e Anunciantes'
  ClientHeight = 520
  ClientWidth = 746
  Color = clWhite
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 121
    Align = alTop
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Image1: TImage
      Left = 8
      Top = 6
      Width = 151
      Height = 109
    end
    object btnFiltro: TImage
      Left = 488
      Top = 2
      Width = 48
      Height = 117
      Cursor = crHandPoint
      Hint = 'Ativar Filtros !'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnFiltroClick
      ExplicitLeft = 482
      ExplicitTop = 32
      ExplicitHeight = 48
    end
    object rdgFiltro: TRadioGroup
      Left = 536
      Top = 2
      Width = 208
      Height = 117
      Align = alRight
      Caption = ' Op'#231#245'es de Filtro '
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Assinantes em Vig'#234'ncia  '
        'Assinantes sem Vig'#234'ncia'
        'Anunciantes em Vig'#234'ncia '
        'Anunciantes sem Vig'#234'ncia')
      TabOrder = 0
      Visible = False
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 405
    Width = 746
    Height = 25
    DataSource = dsAssinatura
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 430
    Width = 746
    Height = 90
    Align = alBottom
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object btnSair: TImage
      Left = 696
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
      ExplicitLeft = 702
      ExplicitTop = 6
    end
    object btnIncluir: TImage
      Left = 600
      Top = 2
      Width = 48
      Height = 86
      Cursor = crHandPoint
      Hint = 'Pressione este Bot'#227'o para Incluir Novo Assinante ou Anunciante'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnClick = btnIncluirClick
      ExplicitLeft = 346
      ExplicitTop = 22
      ExplicitHeight = 48
    end
    object btnAlterar: TImage
      Left = 648
      Top = 2
      Width = 48
      Height = 86
      Cursor = crHandPoint
      Hint = 
        'Pressione este Bot'#227'o para ALTERAR os dados do Assinante ou Anunc' +
        'iante.'
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
    object btnAnuncio: TImage
      Left = 552
      Top = 2
      Width = 48
      Height = 86
      Hint = 'Acessar os Anuncios do Anunciante'
      Align = alRight
      Center = True
      ParentShowHint = False
      Proportional = True
      ShowHint = True
      Stretch = True
      OnClick = btnAnuncioClick
      ExplicitLeft = 368
      ExplicitTop = 6
    end
    object btnAssinatura: TImage
      Left = 504
      Top = 2
      Width = 48
      Height = 86
      Hint = 'Acessar as Assinaturas do Assinante'
      Align = alRight
      Center = True
      ParentShowHint = False
      Proportional = True
      ShowHint = True
      OnClick = btnAssinaturaClick
      ExplicitLeft = 368
      ExplicitTop = 6
    end
    object btnTelefone: TImage
      Left = 456
      Top = 2
      Width = 48
      Height = 86
      Cursor = crHandPoint
      Hint = 'Acessar os Telefones do Assinante'
      Align = alRight
      Center = True
      ParentShowHint = False
      ShowHint = True
      OnClick = btnTelefoneClick
      ExplicitLeft = 116
      ExplicitTop = 42
      ExplicitHeight = 48
    end
  end
  object grid: TDBGrid
    Left = 0
    Top = 121
    Width = 746
    Height = 284
    Align = alClient
    Color = clWhite
    DataSource = dsAssinatura
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'AssinanteNome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = clWhite
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 363
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Endereco'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 163
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Bairro'
        Title.Alignment = taCenter
        Title.Color = clWhite
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 125
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CidadeNome'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Title.Color = clWhite
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataNascimentoTxt'
        Title.Alignment = taCenter
        Title.Caption = 'Nascimento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 132
        Visible = True
      end>
  end
  object dsAssinatura: TDataSource
    DataSet = Dm.sql_Consulta_ArteReal
    Left = 264
    Top = 64
  end
end
