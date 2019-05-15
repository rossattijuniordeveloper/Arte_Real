unit untFrmAssinaturaAlteracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, ADODB;

type
  TFrmAssinaturaAlteracao = class(TForm)
    Panel1: TPanel;
    btnSair: TImage;
    btnGravar: TImage;
    Label7: TLabel;
    edtAssinaturaContrato: TEdit;
    Label8: TLabel;
    edtAssinaturaDataInicio: TDateTimePicker;
    Label9: TLabel;
    edtAssinaturaDataFim: TDateTimePicker;
    lblAcao: TLabel;
    sqlAssinaturaAlterar: TADOStoredProc;
    rdgAtivo: TRadioGroup;
    procedure mtdGravar;
    function  mtdValidar:Boolean;
    procedure mtdSair;
    procedure edtAssinaturaDataInicioExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    vpiIDAssinante:integer;
    vpiIDAssinatura:integer;
  end;

var
  FrmAssinaturaAlteracao: TFrmAssinaturaAlteracao;

implementation

{$R *.dfm}
uses udm,untFrmImagens;

//==============================================================================
procedure TFrmAssinaturaAlteracao.btnGravarClick(Sender: TObject);
begin
  if mtdValidar then
  begin
    mtdGravar;
    mtdSair;
  end;
end;
//==============================================================================
procedure TFrmAssinaturaAlteracao.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//==============================================================================
procedure TFrmAssinaturaAlteracao.edtAssinaturaDataInicioExit(Sender: TObject);
begin
  if edtAssinaturaDataFim.Date<edtAssinaturaDataInicio.Date then
  begin
    edtAssinaturaDataFim.Date:=edtAssinaturaDataInicio.Date;
  end;
end;
//==============================================================================
procedure TFrmAssinaturaAlteracao.FormShow(Sender: TObject);
begin
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
  btnGravar.Picture.Assign(frmImagens.btnGravar.Picture);
end;
//==============================================================================
PROCEDURE TFrmAssinaturaAlteracao.mtdSair;
begin
  FrmAssinaturaAlteracao.Close;
end;
//==============================================================================
function  TFrmAssinaturaAlteracao.mtdValidar:Boolean;
var
  vlbValido:Boolean;
  vlsMensagem:String;
begin
  vlbValido:=True;
  vlsMensagem:=EmptyStr;
if rdgAtivo.ItemIndex=0   then
begin
  if  ( Trim(edtAssinaturaContrato.Text)=EmptyStr) or (Trim(edtAssinaturaContrato.Text)='0' ) then
  begin
     vlbValido:=False;
     vlsMensagem:='ATENÇÃO!!'+#13+' Para Lançar uma assinatura é necessário informar o numero do Contrato da Assinatura';
  end
  else
  begin
    vlbValido:=True;
  end;

  if edtAssinaturaDataInicio.Date>edtAssinaturaDataFim.Date then
  begin
    vlbValido:=False;
    vlsMensagem:=vlsMensagem+#13+'ATENÇÃO!!'+#13+'A data FINAL não pode ser menor que a data INICIAL';
  end;
  if edtAssinaturaDataInicio.Date=0 then
  begin
    vlsMensagem:=vlsMensagem+#13+'ATENÇÃO!!'+#13+'É necessário informar a data INICIAL';
  end;

  if vlsMensagem<>EmptyStr then
  begin
    dm.mtdMensagem(vlsMensagem);
  end;
end;
  result:=vlbValido;
end;
//=============================================================================
procedure TFrmAssinaturaAlteracao.mtdGravar;
begin
  try
    sqlAssinaturaAlterar.Close;
    sqlAssinaturaAlterar.Parameters.ParamByName('@IDAssinatura').Value:= vpiIDAssinatura;
    sqlAssinaturaAlterar.Parameters.ParamByName('@NumeroContrato').Value:=Trim(edtAssinaturaContrato.Text);
    sqlAssinaturaAlterar.Parameters.ParamByName('@DataInicio').Value:=edtAssinaturaDataInicio.Date;
    sqlAssinaturaAlterar.Parameters.ParamByName('@DataFim').Value:=edtAssinaturaDataFim.Date;
    sqlAssinaturaAlterar.Parameters.ParamByName('@Ativo').Value:=rdgAtivo.ItemIndex;
    sqlAssinaturaAlterar.ExecProc;
    mtdSair;
  except
    dm.mtdMensagem('Não foi possivel gravar a alteração da assinatura.');
    mtdSair;
  end;
end;
//=============================================================================

end.
