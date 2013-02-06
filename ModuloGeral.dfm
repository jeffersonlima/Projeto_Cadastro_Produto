object dmGeral: TdmGeral
  OldCreateOrder = True
  Height = 297
  Width = 697
  object DS_Arquivo: TDataSource
    Left = 600
    Top = 8
  end
  object U_arquivo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME'
      'from ARQUIVO '
      'where'
      '  CODIGO = :CODIGO and'
      '  NOME = :NOME')
    ModifySQL.Strings = (
      'update ARQUIVO'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  NOME = :OLD_NOME')
    InsertSQL.Strings = (
      'insert into ARQUIVO'
      '  (CODIGO, NOME)'
      'values'
      '  (:CODIGO, :NOME)')
    DeleteSQL.Strings = (
      'delete from ARQUIVO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  NOME = :OLD_NOME')
    Left = 544
    Top = 16
  end
  object U_Conceito: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRISAO'
      'from CONCEITO '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update CONCEITO'
      'set'
      '  CODIGO = :CODIGO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CONCEITO'
      '  (CODIGO)'
      'values'
      '  (:CODIGO)')
    DeleteSQL.Strings = (
      'delete from CONCEITO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 296
    Top = 208
  end
  object U_Cliente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  RAZAO_SOCIAL,'
      '  NOME_FANTASIA,'
      '  CPF,'
      '  CODIGOCONCEITO'
      'from CLIENTE '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  CODIGO = :CODIGO,'
      '  RAZAO_SOCIAL = :RAZAO_SOCIAL,'
      '  NOME_FANTASIA = :NOME_FANTASIA,'
      '  CPF = :CPF,'
      '  CODIGOCONCEITO = :CODIGOCONCEITO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      '  (CODIGO, RAZAO_SOCIAL, NOME_FANTASIA, CPF, CODIGOCONCEITO)'
      'values'
      
        '  (:CODIGO, :RAZAO_SOCIAL, :NOME_FANTASIA, :CPF, :CODIGOCONCEITO' +
        ')')
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 288
    Top = 16
  end
  object DS_Conceito: TDataSource
    Left = 368
    Top = 208
  end
  object DS_Cliente: TDataSource
    Left = 352
    Top = 16
  end
  object pFIBDatabase1: TpFIBDatabase
    SQLDialect = 1
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 336
    Top = 136
  end
end
