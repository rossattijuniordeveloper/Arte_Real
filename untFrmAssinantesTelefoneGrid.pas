unit untFrmAssinantesTelefoneGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TFrmAssinanteTelefoneGrid = class(TForm)
    Panel2: TPanel;
    btnSair: TImage;
    btnIncluir: TImage;
    btnAlterar: TImage;
    sqlConsulta: TADOStoredProc;
    pnlAcao: TPanel;
    ds: TDataSource;
    grid: TDBGrid;
    DBNavigator1: TDBNavigator;
    sqlConsultaIDTelefone: TAutoIncField;
    sqlConsultaIDAssinante: TIntegerField;
    sqlConsultaTelefone: TStringField;
    sqlConsultaTelefoneTipo: TIntegerField;
    sqlConsultaTipoTelefoneNome: TStringField;
    sqlConsultaAtivo: TIntegerField;
    pnlCadastro: TPanel;
    lblAcao: TLabel;
    edtTelefone: TEdit;
    rdgAtivo: TRadioGroup;
    rdgTipoTelefone: TRadioGroup;
    Label1: TLabel;
    btnGravar: TImage;
    btnGravarNao: TImage;
    sqlIncluir: TADOStoredProc;
    sqlIncluirID: TIntegerField;
    sqlAlterar: TADOStoredProc;
    procedure FormShow(Sender: TObject);
   procedure mtdSair;
   procedure mtdAlterar;
   procedure mtdfiltrar;
   procedure mtdIncluir;
   procedure mtdGravar;
   procedure mtdNaogravar;
   function mtdValidar:Boolean;
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarNaoClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure btnAlterarDblClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     vpiIDAssinante:integer;
  end;

var
  FrmAssinanteTelefoneGrid: TFrmAssinanteTelefoneGrid;

implementation

{$R *.dfm}
uses udm,untfrmimagens;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.btnAlterarClick(Sender: TObject);
begin
 if pnlCadastro.Enabled=false then
  mtdAlterar;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.btnAlterarDblClick(Sender: TObject);
begin
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.btnGravarClick(Sender: TObject);
begin
  if mtdValidar then
  begin
    mtdGravar;
  end;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.btnGravarNaoClick(Sender: TObject);
begin
  mtdNaogravar;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.btnIncluirClick(Sender: TObject);
begin
   if  pnlCadastro.Enabled=false then
      mtdIncluir;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.FormShow(Sender: TObject);
begin
  btnAlterar.Picture:=frmImagens.btnAlterar.Picture;
  btnIncluir.Picture:=frmImagens.btnIncluir.Picture;
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
  btnGravarNao.Picture.Assign(frmImagens.btnSair.Picture);
  btnGravar.Picture.Assign(frmImagens.btnGravar.Picture);
  mtdNaogravar;
  mtdfiltrar;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.gridDblClick(Sender: TObject);
begin
  mtdAlterar;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.mtdSair;
begin
  sqlConsulta.Close;
  FrmAssinanteTelefoneGrid.Close;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.mtdfiltrar;
begin
  try
     sqlConsulta.Close;
     sqlConsulta.Parameters.ParamByName('@IDAssinante').Value:=vpiIDAssinante;
     sqlConsulta.Open;
//     grid.SetFocus;
  except
     sqlConsulta.Close;
     dm.mtdMensagem('ATENÇÃO'+#13+'Não foi possivel acessar os '+FrmAssinanteTelefoneGrid.Caption);
    mtdSair;
  end;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.mtdAlterar;
begin
  if (ds.DataSet.Active) and(ds.DataSet.IsEmpty=false) then
  begin
    pnlCadastro.Tag:=1; //1- Alteração
    lblAcao.Caption:='>>>>>  Alteração  <<<<<<';
    pnlCadastro.Enabled:=True;
    pnlCadastro.Color:=clWhite;
    edtTelefone.Text:=sqlConsultaTelefone.AsString;
    rdgTipoTelefone.ItemIndex:=sqlConsultaTelefoneTipo.Value;
    rdgAtivo.ItemIndex:=sqlConsultaAtivo.Value;
    edtTelefone.SetFocus;
  end;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.mtdIncluir;
begin
  if vpiIDAssinante<>0 then
  begin
    pnlCadastro.Tag:=2; //2- Inclusão
    lblAcao.Caption:='>>>>>  Inclusão  <<<<<';
    pnlCadastro.Enabled:=True;
    pnlCadastro.Color:=clWhite;
    edtTelefone.Text:='0';
    rdgTipoTelefone.ItemIndex:=0;
    rdgAtivo.ItemIndex:=0;

    edtTelefone.SetFocus;
  end;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.mtdGravar;
begin
  try
    // ALTERAÇÃO
    if pnlCadastro.Tag=1 then
    begin
        sqlAlterar.Close;
        sqlAlterar.Parameters.ParamByName('@IDTelefone').Value:=sqlConsultaIDTelefone.Value;
        sqlAlterar.Parameters.ParamByName('@Telefone').Value:= edtTelefone.Text;
        sqlAlterar.Parameters.ParamByName('@TelefoneTipo').Value:=rdgTipoTelefone.ItemIndex;
        sqlAlterar.Parameters.ParamByName('@Ativo').Value:=rdgAtivo.ItemIndex;
        sqlAlterar.ExecProc;
    end
    else
    // INCLUSÃO
    begin
      sqlIncluir.Close;
      sqlIncluir.Parameters.ParamByName('@IDAssinante').Value:=vpiIDAssinante;
      sqlIncluir.Parameters.ParamByName('@Telefone').Value:=edtTelefone.Text;
      sqlIncluir.Parameters.ParamByName('@TelefoneTipo').Value:=rdgTipoTelefone.ItemIndex;
      sqlIncluir.Parameters.ParamByName('@Ativo').Value:=rdgAtivo.ItemIndex;
      sqlIncluir.Active:=True;
    end;
    mtdfiltrar;
  except
      dm.mtdMensagem('Problemas ao gravar dados de '+FrmAssinanteTelefoneGrid.Caption);
  end;
  mtdNaogravar;
end;
//==============================================================================
procedure TFrmAssinanteTelefoneGrid.mtdNaogravar;
begin
  edtTelefone.Text:='0';
  rdgTipoTelefone.ItemIndex:=0;
  rdgAtivo.ItemIndex:=0;
  pnlCadastro.Tag:=0;
  lblAcao.Caption:='';
  grid.SetFocus;
  pnlCadastro.Enabled:=false;
  pnlCadastro.Color:=clSilver;
end;
//==============================================================================

function TFrmAssinanteTelefoneGrid.mtdValidar:Boolean;
var
vlbValido:Boolean;
vlsMensagem:String;
begin
  vlsMensagem:=EmptyStr;
  vlbValido:=True;
  if rdgAtivo.ItemIndex=0 then
  begin
    edtTelefone.Text:=trim(edtTelefone.Text);
    if (edtTelefone.Text='0') or (edtTelefone.Text=EmptyStr) then
    begin
      vlsMensagem:=vlsMensagem+#13+'ATENÇÃO'+#13+'É necessário informar o numero do telefone';
    end;
    if vlsMensagem<>EmptyStr then
    begin
      dm.mtdMensagem(vlsMensagem);
    end;
  end;
  result:=vlbValido;
end;
//==============================================================================
end.
