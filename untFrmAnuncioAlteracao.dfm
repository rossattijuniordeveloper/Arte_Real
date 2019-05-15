object FrmAnuncioAlteracao: TFrmAnuncioAlteracao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmAnuncioAlteracao'
  ClientHeight = 378
  ClientWidth = 802
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
  object lblAcao: TLabel
    Left = 0
    Top = 0
    Width = 802
    Height = 31
    Align = alTop
    Alignment = taCenter
    Caption = '>>> ALTERA'#199#195'O DE ANUNCIO  <<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 439
  end
  object Label7: TLabel
    Left = 32
    Top = 112
    Width = 102
    Height = 13
    Caption = 'Nr. Contrato Anuncio'
  end
  object Label8: TLabel
    Left = 228
    Top = 112
    Width = 107
    Height = 13
    Caption = 'Data Inicio do Anuncio'
  end
  object Label9: TLabel
    Left = 436
    Top = 112
    Width = 98
    Height = 13
    Caption = 'Data Fim do Anuncio'
  end
  object rdgAtivo: TRadioGroup
    Left = 32
    Top = 61
    Width = 185
    Height = 37
    Caption = '   Status do Anuncio'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 0
  end
  object edtAnuncioContrato: TEdit
    Left = 32
    Top = 128
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 1
    Text = '0'
  end
  object edtAnuncioDataInicio: TDateTimePicker
    Left = 228
    Top = 131
    Width = 120
    Height = 21
    Cursor = crHandPoint
    CalColors.BackColor = clWhite
    Date = 41094.523919201390000000
    Time = 41094.523919201390000000
    Color = clWhite
    TabOrder = 2
    OnExit = edtAnuncioDataInicioExit
  end
  object edtAnuncioDataFim: TDateTimePicker
    Left = 436
    Top = 131
    Width = 120
    Height = 21
    Cursor = crHandPoint
    CalColors.BackColor = clWhite
    Date = 41094.523919201390000000
    Time = 41094.523919201390000000
    Color = clWhite
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 316
    Width = 802
    Height = 62
    Align = alBottom
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    ExplicitTop = 306
    ExplicitWidth = 792
    object btnSair: TImage
      Left = 752
      Top = 2
      Width = 48
      Height = 58
      Cursor = crHandPoint
      Align = alRight
      Center = True
      Transparent = True
      OnClick = btnSairClick
      ExplicitLeft = 739
      ExplicitHeight = 48
    end
    object btnGravar: TImage
      Left = 704
      Top = 2
      Width = 48
      Height = 58
      Align = alRight
      Center = True
      OnClick = btnGravarClick
      ExplicitLeft = 688
    end
  end
  object sqlAnuncioAlterar: TADOStoredProc
    AutoCalcFields = False
    Connection = Dm.dados
    ProcedureName = 'MGP_ArteReal_Anuncio_Alterar;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@IDAnuncio'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@NumeroContrato'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end
      item
        Name = '@DataInicio'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@DataFim'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@Ativo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 80
    Top = 176
  end
end
