object F_Cliente: TF_Cliente
  Left = 213
  Top = 139
  Caption = 'Cadastro Clientes'
  ClientHeight = 463
  ClientWidth = 929
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LCODIGO: TLabel
    Left = 64
    Top = 48
    Width = 74
    Height = 24
    Caption = 'CODIGO'
    FocusControl = CODIGO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object LNOME_FANTASIA: TLabel
    Left = 64
    Top = 104
    Width = 161
    Height = 24
    Caption = 'NOME_FANTASIA'
    FocusControl = NOME_FANTASIA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object LRAZAO_SOCIAL: TLabel
    Left = 64
    Top = 176
    Width = 143
    Height = 24
    Caption = 'RAZAO_SOCIAL'
    FocusControl = RAZAO_SOCIAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object LCPF: TLabel
    Left = 64
    Top = 256
    Width = 37
    Height = 24
    Caption = 'CPF'
    FocusControl = CPF
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object LCODIGOCONCEITO: TLabel
    Left = 344
    Top = 240
    Width = 188
    Height = 24
    Caption = 'CODIGOCONCEITO'
    FocusControl = CODIGOCONCEITO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object LImRelato: TLabel
    Left = 680
    Top = 272
    Width = 198
    Height = 20
    Caption = 'Impress'#227'o de  Relat'#243'rio '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LRuim: TLabel
    Left = 344
    Top = 272
    Width = 49
    Height = 16
    Caption = '1-Ruim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBom: TLabel
    Left = 408
    Top = 272
    Width = 45
    Height = 16
    Caption = '2-Bom'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LOtimo: TLabel
    Left = 472
    Top = 272
    Width = 54
    Height = 16
    Caption = '3-Otimo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BNovo: TButton
    Left = 8
    Top = 356
    Width = 160
    Height = 83
    Caption = 'Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 0
    OnClick = BNovoClick
    OnKeyPress = BNovoKeyPress
  end
  object BGravar: TButton
    Left = 192
    Top = 358
    Width = 160
    Height = 83
    Caption = 'Gravar'
    Font.Charset = GREEK_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 1
    OnClick = BGravarClick
    OnKeyPress = BGravarKeyPress
  end
  object BExcluir: TButton
    Left = 372
    Top = 356
    Width = 160
    Height = 83
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 2
    OnClick = BExcluirClick
    OnKeyPress = BExcluirKeyPress
  end
  object BEditar: TButton
    Left = 554
    Top = 356
    Width = 160
    Height = 83
    Caption = 'Editar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 3
    OnClick = BEditarClick
    OnKeyPress = BEditarKeyPress
  end
  object BSair: TButton
    Left = 731
    Top = 356
    Width = 160
    Height = 83
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 4
    OnClick = BSairClick
    OnKeyPress = BSairKeyPress
  end
  object BConsultaCadastros: TButton
    Left = 656
    Top = 104
    Width = 185
    Height = 49
    Caption = 'Consulta Cadastros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 5
    OnClick = BConsultaCadastrosClick
    OnKeyPress = BConsultaCadastrosKeyPress
  end
  object CODIGO: TDBEdit
    Left = 64
    Top = 72
    Width = 81
    Height = 21
    DataField = 'CODIGO'
    DataSource = dmGeral.DS_Cliente
    TabOrder = 6
  end
  object NOME_FANTASIA: TDBEdit
    Left = 64
    Top = 128
    Width = 569
    Height = 24
    CharCase = ecUpperCase
    DataField = 'NOME_FANTASIA'
    DataSource = dmGeral.DS_Cliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyPress = NOME_FANTASIAKeyPress
  end
  object RAZAO_SOCIAL: TDBEdit
    Left = 64
    Top = 200
    Width = 569
    Height = 24
    CharCase = ecUpperCase
    DataField = 'RAZAO_SOCIAL'
    DataSource = dmGeral.DS_Cliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnKeyPress = RAZAO_SOCIALKeyPress
  end
  object CPF: TDBEdit
    Left = 64
    Top = 280
    Width = 186
    Height = 24
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = dmGeral.DS_Cliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnKeyPress = CPFKeyPress
  end
  object CODIGOCONCEITO: TDBEdit
    Left = 408
    Top = 296
    Width = 41
    Height = 21
    DataField = 'CODIGOCONCEITO'
    DataSource = dmGeral.DS_Cliente
    TabOrder = 10
    OnKeyPress = CODIGOCONCEITOKeyPress
  end
  object BImRelat: TButton
    Left = 680
    Top = 296
    Width = 185
    Height = 33
    Caption = 'Imprimir Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BImRelatClick
  end
  object XPManifest1: TXPManifest
    Left = 856
    Top = 16
  end
end
