unit Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, XPMan, IBCustomDataSet,
  IBQuery;

type
  TF_Cliente = class(TForm)
    BNovo: TButton;
    BGravar: TButton;
    BExcluir: TButton;
    BEditar: TButton;
    XPManifest1: TXPManifest;
    BSair: TButton;
    BConsultaCadastros: TButton;
    LCODIGO: TLabel;
    CODIGO: TDBEdit;
    LNOME_FANTASIA: TLabel;
    NOME_FANTASIA: TDBEdit;
    LRAZAO_SOCIAL: TLabel;
    RAZAO_SOCIAL: TDBEdit;
    LCPF: TLabel;
    CPF: TDBEdit;
    LCODIGOCONCEITO: TLabel;
    CODIGOCONCEITO: TDBEdit;
    LImRelato: TLabel;
    BImRelat: TButton;
    LRuim: TLabel;
    LBom: TLabel;
    LOtimo: TLabel;
    procedure BSairClick(Sender: TObject);
    procedure BNovoClick(Sender: TObject);
    procedure BConsultaCadastrosClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NOME_FANTASIAKeyPress(Sender: TObject; var Key: Char);
    procedure RAZAO_SOCIALKeyPress(Sender: TObject; var Key: Char);
    procedure CPFKeyPress(Sender: TObject; var Key: Char);
    procedure BNovoKeyPress(Sender: TObject; var Key: Char);
    procedure BGravarKeyPress(Sender: TObject; var Key: Char);
    procedure BExcluirKeyPress(Sender: TObject; var Key: Char);
    procedure BEditarKeyPress(Sender: TObject; var Key: Char);
    procedure BSairKeyPress(Sender: TObject; var Key: Char);
    procedure BConsultaCadastrosKeyPress(Sender: TObject; var Key: Char);
    procedure quebraconceito;
    procedure totalgeral;
    procedure RDprint1BeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure BImRelatClick(Sender: TObject);
    procedure CODIGOCONCEITOKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cliente: TF_Cliente;
  linha : Integer;
  subtotal : Integer;
  var_conceito : string;
  
implementation

uses ModuloGeral, UnitConsultaCliente, DateUtils,
  Math, TypInfo;

{$R *.dfm}

procedure TF_Cliente.BSairClick(Sender: TObject);
begin
  Close;
end;
procedure TF_Cliente.BConsultaCadastrosClick(Sender: TObject);
begin
  Application.CreateForm(TFConsultaCliente,FConsultaCliente);//chama o formulario de consulta de cliente
  FConsultaCliente.Show;
end;

procedure TF_Cliente.BGravarClick(Sender: TObject);
begin


      if NOME_FANTASIA.Text = '' then // Tratamento de campo obrigatorio
        begin
          Application.MessageBox('Campo NOME_FANTASIA Obrigatorio','Cadastro de Clientes',MB_OK+MB_ICONHAND);
          NOME_FANTASIA.SetFocus;
          Abort;
        end;
          if RAZAO_SOCIAL.Text = '' then  // Tratamento de campo obrigatorio
        begin
          Application.MessageBox('Campo RAZAO_SOCIAL Obrigatorio','Cadastro de Clientes',MB_OK+MB_ICONHAND);
          RAZAO_SOCIAL.SetFocus;
          Abort;
        end;
          if CPF.Text = '' then   // Tratamento de campo obrigatorio
        begin
          Application.MessageBox('Campo CPF Obrigatorio','Cadastro de Clientes',MB_OK+MB_ICONHAND);
          CPF.SetFocus;
          Abort;
        end;


         try  //Tratamento de exeção

           {With dmGeral.Cliente do  //Determina um bloco de comandos para executar uma determinada ação
              begin
                Post; //
                dmGeral.Dados.ApplyUpdates([dmGeral.Cliente]);  // Atualiza a tabela e grava
                dmGeral.Tr_Dados.CommitRetaining;  // Método Responsavel por confirmar a transação, mas a mantém ativa
                Refresh;
                Close; //Fecha query o bloco de comandos
                end;    }
        

               //Tratando os Butões do Cadastro
              BNovo.Enabled := True; //ativa
              BExcluir.Enabled := false;//desativa
              BEditar.Enabled := false; //desativa
              BGravar.Enabled := false; //desativa
              BConsultaCadastros.Enabled := true; //ativa
              Application.MessageBox('Cadastro Realizado Com Sucesso','Cadastro de Clientes',MB_OK+MB_OK);
              except  //Tratamento de Exeção, Se ocorrer um erro no processo de gravação no banco de dados
                Application.MessageBox('Cadastro Não Realizado','Cadastro de Clientes',MB_OK+MB_OK);
     end;

end;

procedure TF_Cliente.BExcluirClick(Sender: TObject);
begin
  try //Tratamento de uma exeção

  // With dmGeral.Cliente do  //Determina um bloco de comandos para executar uma determinada ação

  begin
   // Delete;  //Deleta um registro
    Close; //fecha a query o bloco de comando
  end;

     //Tratamento dos butões
    BNovo.Enabled := true;
    BExcluir.Enabled := false;
    BEditar.Enabled := false;
    BGravar.Enabled := true;
    BConsultaCadastros.Enabled := true;

    NOME_FANTASIA.Enabled := true;
    RAZAO_SOCIAL.Enabled := true;
    CPF.Enabled := true;
    NOME_FANTASIA.SetFocus;
      Application.MessageBox('Exclusão Realizada Com Sucesso','Cadastro de Clientes',MB_OK+MB_ICONERROR);
        except //Tratamento de Exeção, Se ocorrer um erro no processo de gravação no banco de dados
          Application.MessageBox('Exclusão Não Realizada','Cadastro de Clientes',MB_OK+MB_ICONERROR);


  end;
end;


procedure TF_Cliente.BEditarClick(Sender: TObject);
begin

  //dmGeral.Cliente.Edit; // A query entra em modo de edição
    // Tratando os butões
    BNovo.Enabled := false;
    BExcluir.Enabled := false;
    BEditar.Enabled := false;
    BGravar.Enabled := true;
    BConsultaCadastros.Enabled := false;

    NOME_FANTASIA.Enabled := true;
    RAZAO_SOCIAL.Enabled := true;
    CPF.Enabled := true;

end;

procedure TF_Cliente.BNovoClick(Sender: TObject);
begin

  // With dmGeral.Cliente do   //Determina um bloco de comandos para executar uma determinada ação

  begin
   // Close; //Fecha a Query
    //Open; //Abre a Query
    //Append;  //
  end;
     //Tratamento dos butões
    BNovo.Enabled := false;
    BExcluir.Enabled := false;
    BEditar.Enabled := false;
    BGravar.Enabled := true;
    BConsultaCadastros.Enabled := false;
    NOME_FANTASIA.SetFocus;



end;

procedure TF_Cliente.FormCreate(Sender: TObject);
begin
  //Tratamento dos butões
  CODIGO.Enabled := False;
  BGravar.Enabled := False;
  BExcluir.Enabled := False;
  BEditar.Enabled := False;


end;

procedure TF_Cliente.NOME_FANTASIAKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cliente.RAZAO_SOCIALKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cliente.CPFKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cliente.BNovoKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cliente.BGravarKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cliente.BExcluirKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cliente.BEditarKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cliente.BSairKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TF_Cliente.BConsultaCadastrosKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;
end;


procedure TF_Cliente.quebraconceito;
begin


    { if linha > 59 then
        rdprint1.novapagina;

     // Imprime o cabecalho da quebra...
     rdprint1.imp (linha,1,'-----------------------------------------------------------------------------------------------');
     inc(linha);
     rdprint1.impf(linha,1,'Conceito: ' + var_conceito,[negrito]);
     inc(linha);
     rdprint1.imp(Linha,1,'-----------------------------------------------------------------------------------------------');
     inc(linha);   }

end;


procedure TF_Cliente.totalgeral;
begin

      { if var_conceito = 'Forca quebra' then  // Não tem sub-total ainda pois é o 1º vez
        begin
        var_conceito := IntToStr(dmGeral.ClienteCODIGOCONCEITO.Value); // atuvaliza a quebra...
        Exit;
        end;

    // Imprime total da quebra...
     if linha > 61 then
        begin
        rdprint1.novapagina;
        quebraconceito;
        end
     else
        begin
        rdprint1.imp   (linha,1,'-----------------------------------------------------------------------------------------------');
        inc(linha);
        end;

     rdprint1.impf  (linha,10,'Total de Conceito ==> ',[negrito]);
     rdprint1.impval(linha,81,'###,###,##0.00',subtotal,[negrito]);
     inc(linha);

     // atualizo variaveis de controle da quebra...
      var_conceito := IntToStr(dmGeral.ClienteCODIGOCONCEITO.Value); // atualiza a quebra...
      subtotal := 0;     }


end;

procedure TF_Cliente.RDprint1BeforeNewPage(Sender: TObject;
  Pagina: Integer);
begin
    // Rodapé...
    { rdprint1.imp (65,01,'===============================================================================================',clGreen);

     rdprint1.impf(66,01,'Araguaia Sistemas',[italico],clGreen);
     rdprint1.impf(66,65,'Relatório',[comp17],clGreen);}
end;

procedure TF_Cliente.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
       // Cabeçalho...
    { rdprint1.imp (01,01,'===============================================================================================',clred);
     rdprint1.impc(02,48,'RELATÓRIO DE CLIENTES', [expandido,NEGRITO],clblue);
     rdprint1.impf(03,01,'Araguaia Sistemas',[normal]);
     rdprint1.impf(63,82,'Página: ' + formatfloat('000',pagina),[normal]);
     rdprint1.imp (04,01,'===============================================================================================',clred);
     rdprint1.imp (05,01,'[Cód][ Nome Fantasia          ]   [       Razão Social       ] [       CFP       ]  [ Conceito]');
     Linha  := 6;       }
end;


procedure TF_Cliente.BImRelatClick(Sender: TObject);

var
     total_quebra : Integer;
begin

    { rdprint1.abrir;

     linha            := 7;
     subtotal         := 0;
     total_quebra     := 0;

        dmGeral.Cliente.Active := True;
        dmGeral.Cliente.First;

        var_conceito       := 'Forca quebra'; // Força 1º Quebra...

     while not dmGeral.Cliente.Eof do

        begin
        if dmGeral.ClienteCODIGOCONCEITO.Value <> total_quebra then   // Quebra a conceito...
           begin
           totalgeral;  // total da quebra...
           quebraconceito; // cabecalho do conceito...
           subtotal := 0;
           end;



        if linha > 63 then // Salto de Pagina chama automaticamente cabecalho/rodape...
           begin
           rdprint1.novapagina;
           quebraconceito;
           end;

        // Detalhes do relatório...
        rdprint1.imp (linha,01,formatfloat('0000',dmGeral.ClienteCODIGO.value));
        rdprint1.impF(linha,07,dmGeral.ClienteNOME_FANTASIA.value,[comp17]);
        rdprint1.imp (linha,44,dmGeral.ClienteRAZAO_SOCIAL.value);
        rdprint1.imp (linha,66,dmGeral.ClienteCPF.value);
        //rdprint1.imp (linha,70,dmGeral.ClienteCODIGOCONCEITO.AsString);


         // Este comando imprime valores alinhados à direita...
        if dmGeral.ClienteCODIGOCONCEITO.value < 500 then
           rdprint1.imp (linha,89,dmGeral.ClienteCODIGOCONCEITO.AsString)
        else
          rdprint1.imp (linha,89,dmGeral.ClienteCODIGOCONCEITO.AsString);
//           rdprint1.ImpF(Linha,81,'###,###,##0.00',dmGeral.ClienteCODIGOCONCEITO.Value,[]);
           inc(linha);

        // Soma o totais...
        subtotal   := subtotal + 1;
        //total_quebra := total_quebra + 1;
        total_quebra := dmGeral.ClienteCODIGOCONCEITO.Value;
        dmGeral.Cliente.Next;

       end;

     // Imprime o total da quebra...

        total_quebra := dmGeral.Cliente.RecordCount;
        totalgeral;

     // Imprime total geral...
     if linha > 61 then
        rdprint1.novapagina;
     rdprint1.imp(Linha,1,'-----------------------------------------------------------------------------------------------');
     inc(linha);
     rdprint1.impf  (linha,10,'Total Geral de Conceito ==> ',[negrito]);
     rdprint1.impval(linha,81,'###,###,##0.00', total_quebra,[negrito]);

     rdprint1.fechar;  // Encerra o relatório...
     dmGeral.Cliente.active := false;  // Fecha a tabela...
         }
end;


//end;
procedure TF_Cliente.CODIGOCONCEITOKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
    begin
        key := #0; // tira o tab pelo o enter.
        Perform(WM_NEXTDLGCTL,0,0);
    end;

    if not (Key in ['1','2','3']) then
    Key := #0;

end;


end.

