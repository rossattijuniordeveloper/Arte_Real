object frmSelecaoEstados: TfrmSelecaoEstados
  Left = 0
  Top = 0
  Caption = 'Sele'#231#227'o de Estados'
  ClientHeight = 380
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 0
    Top = 264
    Width = 776
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
  object Panel2: TPanel
    Left = 0
    Top = 307
    Width = 776
    Height = 73
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object btnSair: TImage
      Left = 726
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
      Left = 678
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
    Top = 280
    Width = 776
    Height = 27
    Align = alBottom
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyDown = edtPesquisaKeyDown
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 239
    Width = 776
    Height = 25
    DataSource = Dm.dsEstado
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 77
    Width = 776
    Height = 162
    Align = alBottom
    Color = clWhite
    DataSource = Dm.dsEstado
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Width = 680
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 75
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Sele'#231#227'o de Estados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
