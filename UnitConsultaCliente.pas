unit UnitConsultaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, DB, ExtCtrls,
  IBSQL, DBTables;

type
  TFConsultaCliente = class(TForm)
    DBGConsultaClien: TDBGrid;
    BitBProcurar: TBitBtn;
    BitBFechar: TBitBtn;
    DataSourceConsultaClien: TDataSource;
    SpeedButton1: TSpeedButton;
    EConsultaPesqui: TEdit;
    RGPesquisa: TRadioGroup;
    RBCODIGO: TRadioButton;
    RBNOME: TRadioButton;
    Lpesquisa: TLabel;
    procedure BitBFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBProcurarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RBCODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure RBNOMEKeyPress(Sender: TObject; var Key: Char);
    procedure BitBProcurarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGConsultaClienKeyPress(Sender: TObject; var Key: Char);
    procedure BitBFecharKeyPress(Sender: TObject; var Key: Char);
    procedure DBGConsultaClienDblClick(Sender: TObject);
    //procedure FormCreate(Sender: TObject);


      private
    { Private declarations }
  public
    { Public declarations }
  
  end;

var
  FConsultaCliente: TFConsultaCliente;
  var_cliente_aux : Integer;
implementation

uses ModuloGeral, IBQuery, Cliente, DateUtils, Math, IBCustomDataSet;

{$R *.dfm}

procedure TFConsultaCliente.BitBFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFConsultaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
    begin
    //if dmGeral.Cliente.RecordCount > 0 then

      //  begin
          //if F_Cliente <> nil then
          begin
            F_Cliente.BNovo.Enabled := false;
            F_Cliente.BExcluir.Enabled := true;
            F_Cliente.BEditar.Enabled := true;
            F_Cliente.BGravar.Enabled := false;;
            F_Cliente.BConsultaCadastros.Enabled := false;
            F_Cliente.NOME_FANTASIA.Enabled := false;
            F_Cliente.RAZAO_SOCIAL.Enabled := false;
            F_Cliente.CPF.Enabled := false;

            end
            //FConsultaCliente := nil;
            //FConsultaCliente.Free;
         // else
           //dmGeral.Cliente.Close;
      end;
    //end;




procedure TFConsultaCliente.BitBProcurarClick(Sender: TObject);
begin
    if EConsultaPesqui.Text = '' then
      Application.MessageBox('Campo Código ou Nome Obrigatório','Consulta Clientes',MB_OK+MB_ICONERROR);

      // Teste git
    if EConsultaPesqui.Text = 'a' then
      Application.MessageBox('Campo Código Só Recebe Numeros','Consulta Cliente',MB_OK+MB_ICONERROR);

    if RBCODIGO.Checked then
        begin

          if (EConsultaPesqui.Text  = '0') then
                ShowMessage('Teste');


      with dmGeral.U_Cliente do
        begin
            Close;
            //Create('RBCODIGO').AsInteger := StrToInt(EConsultaPesqui.Text);
            //Open;
        end;


        end;



        begin
         { if RBNOME.Checked then
            with dmGeral.Cliente do
              begin
                SQL.Clear;
                SQL.Add ('select * from cliente where NOME_FANTASIA like:RBNOME');
                ParamByName('RBNOME').AsString:=EConsultaPesqui.Text +'%';
                Open;
              end; }
        end;
    end;


procedure TFConsultaCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
        key := #0; // tira o ruído qndo pressiona o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFConsultaCliente.RBCODIGOKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFConsultaCliente.RBNOMEKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFConsultaCliente.BitBProcurarKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFConsultaCliente.DBGConsultaClienKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFConsultaCliente.BitBFecharKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFConsultaCliente.DBGConsultaClienDblClick(Sender: TObject);
begin
  EConsultaPesqui.Clear;
  Close;
end;

end.

