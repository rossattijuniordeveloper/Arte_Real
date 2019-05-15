object frmSelecaoLojas: TfrmSelecaoLojas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o de Lojas'
  ClientHeight = 379
  ClientWidth = 832
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 0
    Top = 263
    Width = 832
    Height = 16
    Align = alBottom
    Caption = 'Digite Parte do Nome e pressione ENTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 233
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 832
    Height = 75
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Sele'#231#227'o de Lojas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 306
    Width = 832
    Height = 73
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object btnSair: TImage
      Left = 782
      Top = 2
      Width = 48
      Height = 69
      Cursor = crHandPoint
      Align = alRight
      Center = True
      Transparent = True
      OnClick = btnSairClick
      ExplicitLeft = 784
      ExplicitTop = 6
    end
    object btnConfirmar: TImage
      Left = 734
      Top = 2
      Width = 48
      Height = 69
      Cursor = crHandPoint
      Align = alRight
      Center = True
      Transparent = True
      OnClick = btnConfirmarClick
      ExplicitTop = 6
    end
  end
  object edtPesquisa: TEdit
    Left = 0
    Top = 279
    Width = 832
    Height = 27
    Align = alBottom
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = edtPesquisaKeyDown
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 78
    Width = 832
    Height = 160
    Align = alBottom
    Color = clWhite
    DataSource = ds
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Width = 725
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 238
    Width = 832
    Height = 25
    DataSource = ds
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 4
    ExplicitLeft = 304
    ExplicitTop = 248
    ExplicitWidth = 240
  end
  object ds: TDataSource
    DataSet = Dm.sql_Lojas
    Left = 200
    Top = 16
  end
end
