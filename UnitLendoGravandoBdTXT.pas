unit UnitLendoGravandoBdTXT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, DBCtrls, IBQuery, Grids, DBGrids,
  ExtCtrls;

type
  TF_LendoGravBanDado = class(TForm)
    BAbrir: TButton;
    E_Arquivo: TEdit;
    LArquivo: TLabel;
    BSair: TButton;
    LLendArquiTXTBD: TLabel;
    DBGArquivo_TXT: TDBGrid;
    DBNavigator1: TDBNavigator;
    OPDia_Abrir: TOpenDialog;
    procedure BSairClick(Sender: TObject);
    procedure BAbrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_LendoGravBanDado: TF_LendoGravBanDado;

implementation

uses ModuloGeral;

{$R *.dfm}


procedure TF_LendoGravBanDado.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_LendoGravBanDado.BAbrirClick(Sender: TObject);
var
  arq: TextFile;
  jb: String;

begin

  if OPDia_Abrir.Execute then
  begin
 //   dmGeral.arquivo.Open;
    AssignFile(arq,(OPDia_Abrir.FileName){C:\prd_lin.txt});
    E_Arquivo.Text := ('C:\prd_lin.txt');
    Reset(arq);
    While not Eoln(arq) do
    begin
      Readln(arq,jb);
   {   dmGeral.arquivo.Insert;
      dmGeral.arquivo.FieldByName('NOME').Value := copy (jb,07,40);
      dmGeral.arquivo.FieldByName('CODIGO').Value := StrToInt(copy(jb,01,06));
      dmGeral.arquivo.Post; }
    end;
      //CloseFile(arq);
      //dmGeral.Dados.ApplyUpdates([dmGeral.arquivo]);
      //dmGeral.Tr_Dados.CommitRetaining;
  end;
end;
end.
