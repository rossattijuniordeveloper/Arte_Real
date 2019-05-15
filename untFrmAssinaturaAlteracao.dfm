object FrmAssinaturaAlteracao: TFrmAssinaturaAlteracao
  Left = 0
  Top = 0
  Caption = 'Altera'#231#227'o de Asssinatura'
  ClientHeight = 372
  ClientWidth = 778
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
  object Label7: TLabel
    Left = 32
    Top = 112
    Width = 115
    Height = 13
    Caption = 'Nr. Contrato Assinatura'
  end
  object Label8: TLabel
    Left = 228
    Top = 112
    Width = 120
    Height = 13
    Caption = 'Data Inicio da Assinatura'
  end
  object Label9: TLabel
    Left = 436
    Top = 112
    Width = 111
    Height = 13
    Caption = 'Data Fim da Assinatura'
  end
  object lblAcao: TLabel
    Left = 0
    Top = 0
    Width = 778
    Height = 31
    Align = alTop
    Alignment = taCenter
    Caption = '>>> ALTERA'#199#195'O DE ASSINATURA  <<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 481
  end
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 778
    Height = 62
    Align = alBottom
    BevelInner = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object btnSair: TImage
      Left = 728
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
      Left = 680
      Top = 2
      Width = 48
      Height = 58
      Align = alRight
      Center = True
      OnClick = btnGravarClick
      ExplicitLeft = 573
      ExplicitHeight = 69
    end
  end
  object edtAssinaturaContrato: TEdit
    Left = 32
    Top = 128
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 0
    Text = '0'
  end
  object edtAssinaturaDataInicio: TDateTimePicker
    Left = 228
    Top = 131
    Width = 120
    Height = 21
    Cursor = crHandPoint
    CalColors.BackColor = clWhite
    Date = 41094.523919201390000000
    Time = 41094.523919201390000000
    Color = clWhite
    TabOrder = 1
    OnExit = edtAssinaturaDataInicioExit
  end
  object edtAssinaturaDataFim: TDateTimePicker
    Left = 436
    Top = 131
    Width = 120
    Height = 21
    Cursor = crHandPoint
    CalColors.BackColor = clWhite
    Date = 41094.523919201390000000
    Time = 41094.523919201390000000
    Color = clWhite
    TabOrder = 2
  end
  object rdgAtivo: TRadioGroup
    Left = 32
    Top = 61
    Width = 185
    Height = 37
    Caption = '   Status da Assinatura  '
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Ativa'
      'Inativa')
    TabOrder = 4
  end
  object sqlAssinaturaAlterar: TADOStoredProc
    AutoCalcFields = False
    Connection = Dm.dados
    ProcedureName = 'MGP_ArteReal_Assinatura_Alterar'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDAssinatura'
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
    Left = 80
    Top = 176
  end
end
