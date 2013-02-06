object F_LendoGravBanDado: TF_LendoGravBanDado
  Left = 211
  Top = 168
  Caption = 'Lendo e Gravando Arquivos .TXT No Banco De Dados'
  ClientHeight = 466
  ClientWidth = 763
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LArquivo: TLabel
    Left = 48
    Top = 88
    Width = 79
    Height = 24
    Caption = 'Arquivo:'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object LLendArquiTXTBD: TLabel
    Left = 104
    Top = 16
    Width = 575
    Height = 29
    Caption = 'Lendo e Gravando Arquivos .TXT no Banco de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object BAbrir: TButton
    Left = 496
    Top = 88
    Width = 105
    Height = 25
    Caption = 'Abrir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 0
    OnClick = BAbrirClick
  end
  object E_Arquivo: TEdit
    Left = 160
    Top = 88
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object BSair: TButton
    Left = 624
    Top = 137
    Width = 121
    Height = 57
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 2
    OnClick = BSairClick
  end
  object DBGArquivo_TXT: TDBGrid
    Left = 0
    Top = 200
    Width = 763
    Height = 265
    DataSource = dmGeral.DS_Arquivo
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 210
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 192
    Top = 128
    Width = 222
    Height = 41
    DataSource = dmGeral.DS_Arquivo
    VisibleButtons = [nbRefresh]
    TabOrder = 4
  end
  object OPDia_Abrir: TOpenDialog
    Left = 624
    Top = 88
  end
end
