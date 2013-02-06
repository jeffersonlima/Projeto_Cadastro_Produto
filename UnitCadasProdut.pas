unit UnitCadasProdut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, XPMan, ComCtrls, ImgList, jpeg,
  FIBDatabase, pFIBDatabase;

type
  TF_Cadastro = class(TForm)
    MMenuCadastros: TMainMenu;
    TMaMeCadastroClient: TMenuItem;
    XPManifest1: TXPManifest;
    Timer1: TTimer;
    StatusBar: TStatusBar;
    ImageList1: TImageList;
    Sair2: TMenuItem;
    TMaMeCadastrodeCliente: TMenuItem;
    TMaMeSair: TMenuItem;
    BCadastroCliente: TButton;
    BSairdoCadastro: TButton;
    BLendArquiGranBd: TButton;
    pFIBDatabase1: TpFIBDatabase;
    procedure Timer1Timer(Sender: TObject);
    procedure F_CadastroClick(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure TMaMeCadastrodeClienteClick(Sender: TObject);
    procedure TMaMeSairClick(Sender: TObject);
    procedure BCadastroClienteClick(Sender: TObject);
    procedure BSairdoCadastroClick(Sender: TObject);
    procedure BCadastroClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BSairdoCadastroKeyPress(Sender: TObject; var Key: Char);
    procedure BLendArquiGranBdClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cadastro: TF_Cadastro;

implementation

uses Cliente, ModuloGeral, UnitLendoGravandoBdTXT;

{$R *.dfm}

procedure TF_Cadastro.Timer1Timer(Sender: TObject);
begin
    StatusBar.Panels[0].Text := 'Data:  ' + DateToStr(now);
    StatusBar.Panels[1].Text:= 'Hora:  ' + TimeToStr(now);

end;

procedure TF_Cadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    SelectNext(ActiveControl,True, True);
end;

procedure TF_Cadastro.F_CadastroClick(Sender: TObject);
begin
  Application.CreateForm(TF_Cliente,F_Cliente);
  F_Cliente.Show;
end;
procedure TF_Cadastro.Sair2Click(Sender: TObject);
begin
  close;
end;

procedure TF_Cadastro.TMaMeCadastrodeClienteClick(Sender: TObject);
begin
  Application.CreateForm(TF_Cliente,F_Cliente);
  F_Cliente.Show;
end;

procedure TF_Cadastro.TMaMeSairClick(Sender: TObject);
begin
  close;
end;

procedure TF_Cadastro.BCadastroClienteClick(Sender: TObject);
begin
   Application.CreateForm(TF_Cliente,F_Cliente); //Chama o formulário de cadastro de cliente
   F_Cliente.Show;
end;

procedure TF_Cadastro.BSairdoCadastroClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Cadastro.BCadastroClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cadastro.BSairdoCadastroKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cadastro.BLendArquiGranBdClick(Sender: TObject);
begin
  Application.CreateForm(TF_LendoGravBanDado,F_LendoGravBanDado);////Chama o formulário de converção de dados
  F_LendoGravBanDado.Show;
end;

end.
