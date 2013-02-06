unit ModuloGeral;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery, IBUpdateSQL,
  DBClient, SimpleDS, FIBDatabase, pFIBDatabase;

type
  TdmGeral = class(TDataModule)
    DS_Arquivo: TDataSource;
    U_arquivo: TIBUpdateSQL;
    U_Conceito: TIBUpdateSQL;
    U_Cliente: TIBUpdateSQL;
    DS_Conceito: TDataSource;
    DS_Cliente: TDataSource;
    pFIBDatabase1: TpFIBDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmGeral: TdmGeral;

implementation

{$R *.dfm}

end.
