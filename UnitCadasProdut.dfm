object F_Cadastro: TF_Cadastro
  Left = 195
  Top = 110
  ActiveControl = StatusBar
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Projeto Araguaia'
  ClientHeight = 527
  ClientWidth = 984
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MMenuCadastros
  OldCreateOrder = False
  Position = poDesigned
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 508
    Width = 984
    Height = 19
    Panels = <
      item
        Text = 'Data:'
        Width = 200
      end
      item
        Text = 'Hora:'
        Width = 200
      end
      item
        Text = 'Jefferson Lima'
        Width = 150
      end>
  end
  object BCadastroCliente: TButton
    Left = 136
    Top = 0
    Width = 193
    Height = 105
    Caption = 'Cadastro de Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 1
    OnClick = BCadastroClienteClick
    OnKeyPress = BCadastroClienteKeyPress
  end
  object BSairdoCadastro: TButton
    Left = 288
    Top = 152
    Width = 177
    Height = 105
    Caption = 'Sair do Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 2
    OnClick = BSairdoCadastroClick
    OnKeyPress = BSairdoCadastroKeyPress
  end
  object BLendArquiGranBd: TButton
    Left = 408
    Top = 0
    Width = 345
    Height = 105
    Caption = 'Len Arqui .Txt Gravan No Banc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 3
    OnClick = BLendArquiGranBdClick
  end
  object MMenuCadastros: TMainMenu
    Left = 880
    Top = 168
    object TMaMeCadastroClient: TMenuItem
      Caption = 'Cadastros'
      object TMaMeCadastrodeCliente: TMenuItem
        Caption = 'Cadastro de Clientes'
        OnClick = TMaMeCadastrodeClienteClick
      end
      object TMaMeSair: TMenuItem
        Caption = 'Sair'
        OnClick = TMaMeSairClick
      end
    end
    object Sair2: TMenuItem
      Caption = 'Sair'
      OnClick = Sair2Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 880
    Top = 264
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 880
    Top = 216
  end
  object ImageList1: TImageList
    Left = 880
    Top = 104
  end
  object pFIBDatabase1: TpFIBDatabase
    SQLDialect = 1
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 616
    Top = 352
  end
end
