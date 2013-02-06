object FConsultaCliente: TFConsultaCliente
  Left = 192
  Top = 124
  Caption = 'Consulta Cliente'
  ClientHeight = 513
  ClientWidth = 923
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 456
    Top = 232
    Width = 23
    Height = 22
  end
  object Lpesquisa: TLabel
    Left = 24
    Top = 8
    Width = 302
    Height = 16
    Caption = 'Coloque o C'#243'digo ou nome para pesquisar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object DBGConsultaClien: TDBGrid
    Left = 0
    Top = 160
    Width = 913
    Height = 345
    DataSource = dmGeral.DS_Cliente
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGConsultaClienDblClick
    OnKeyPress = DBGConsultaClienKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGOCONCEITO'
        Visible = True
      end>
  end
  object BitBProcurar: TBitBtn
    Left = 408
    Top = 16
    Width = 160
    Height = 79
    Caption = 'Procurar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBProcurarClick
    OnKeyPress = BitBProcurarKeyPress
  end
  object BitBFechar: TBitBtn
    Left = 624
    Top = 16
    Width = 160
    Height = 77
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBFecharClick
    OnKeyPress = BitBFecharKeyPress
  end
  object EConsultaPesqui: TEdit
    Left = 24
    Top = 32
    Width = 305
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object RGPesquisa: TRadioGroup
    Left = 16
    Top = 64
    Width = 305
    Height = 81
    Caption = 'Pesquisa Por:'
    Columns = 2
    TabOrder = 4
  end
  object RBCODIGO: TRadioButton
    Left = 48
    Top = 104
    Width = 105
    Height = 17
    Caption = 'CODIGO'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 5
    TabStop = True
    OnKeyPress = RBCODIGOKeyPress
  end
  object RBNOME: TRadioButton
    Left = 160
    Top = 104
    Width = 89
    Height = 17
    Caption = 'NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 6
    OnKeyPress = RBNOMEKeyPress
  end
  object DataSourceConsultaClien: TDataSource
    Left = 816
    Top = 24
  end
end
