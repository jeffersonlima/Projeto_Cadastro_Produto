program CadastroProduto;

uses
  Forms,
  UnitCadasProdut in 'UnitCadasProdut.pas' {F_Cadastro},
  Cliente in 'Cliente.pas' {F_Cliente},
  ModuloGeral in 'ModuloGeral.pas' {dmGeral: TDataModule},
  UnitConsultaCliente in 'UnitConsultaCliente.pas' {FConsultaCliente},
  UnitLendoGravandoBdTXT in 'UnitLendoGravandoBdTXT.pas' {F_LendoGravBanDado};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_Cadastro, F_Cadastro);
  Application.CreateForm(TdmGeral, dmGeral);
  Application.Run;
end.






