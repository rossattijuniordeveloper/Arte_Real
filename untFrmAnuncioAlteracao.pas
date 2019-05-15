unit untFrmAnuncioAlteracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, ComCtrls, StdCtrls;

type
  TFrmAnuncioAlteracao = class(TForm)
    lblAcao: TLabel;
    rdgAtivo: TRadioGroup;
    Label7: TLabel;
    edtAnuncioContrato: TEdit;
    Label8: TLabel;
    edtAnuncioDataInicio: TDateTimePicker;
    Label9: TLabel;
    edtAnuncioDataFim: TDateTimePicker;
    sqlAnuncioAlterar: TADOStoredProc;
    Panel1: TPanel;
    btnSair: TImage;
    btnGravar: TImage;
    procedure mtdGravar;
    function  mtdValidar:Boolean;
    procedure mtdSair;
    procedure edtAnuncioDataInicioExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    vpiIDAnuncio:integer;
  end;

var
  FrmAnuncioAlteracao: TFrmAnuncioAlteracao;

implementation

{$R *.dfm}
uses udm,untFrmImagens;

//==============================================================================
PROCEDURE TFrmAnuncioAlteracao.mtdSair;
begin
  FrmAnuncioAlteracao.Close;
end;
//==============================================================================
function  TFrmAnuncioAlteracao.mtdValidar:Boolean;
var
  vlbValido:Boolean;
  vlsMensagem:String;
begin

vlbValido:=True;
vlsMensagem:=EmptyStr;
if rdgAtivo.ItemIndex=0   then
begin
  if  ( Trim(edtAnuncioContrato.Text)=EmptyStr) or (Trim(edtAnuncioContrato.Text)='0' ) then
  begin
    vlbValido:=False;
    vlsMensagem:='ATENÇÃO!!'+#13+' Para Lançar uma assinatura é necessário informar o numero do Contrato da Assinatura';
  end
  else
  begin
    vlbValido:=True;
  end;

  if edtAnuncioDataInicio.Date>edtAnuncioDataFim.Date then
  begin
    vlbValido:=False;
    vlsMensagem:=vlsMensagem+#13+'ATENÇÃO!!'+#13+'A data FINAL não pode ser menor que a data INICIAL';
  end;

  if edtAnuncioDataInicio.Date=0 then
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
procedure TFrmAnuncioAlteracao.btnGravarClick(Sender: TObject);
begin
  if mtdValidar then
  begin
    mtdGravar;
    mtdSair;
  end;
end;
//=============================================================================
procedure TFrmAnuncioAlteracao.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//=============================================================================
procedure TFrmAnuncioAlteracao.edtAnuncioDataInicioExit(Sender: TObject);
begin
  if edtAnuncioDataFim.Date<edtAnuncioDataInicio.Date then
  begin
    edtAnuncioDataFim.Date:=edtAnuncioDataInicio.Date;
  end;
end;
procedure TFrmAnuncioAlteracao.FormShow(Sender: TObject);
begin
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
  btnGravar.Picture.Assign(frmImagens.btnGravar.Picture);

end;

//=============================================================================
procedure TFrmAnuncioAlteracao.mtdGravar;
begin
  try
    sqlAnuncioAlterar.Close;
    sqlAnuncioAlterar.Parameters.ParamByName('@IDAnuncio').Value     :=vpiIDAnuncio;
    sqlAnuncioAlterar.Parameters.ParamByName('@NumeroContrato').Value:=Trim(edtAnuncioContrato.Text);
    sqlAnuncioAlterar.Parameters.ParamByName('@DataInicio').Value    :=edtAnuncioDataInicio.Date;
    sqlAnuncioAlterar.Parameters.ParamByName('@DataFim').Value       :=edtAnuncioDataFim.Date;
    sqlAnuncioAlterar.Parameters.ParamByName('@Ativo').Value         :=rdgAtivo.ItemIndex;
    sqlAnuncioAlterar.ExecProc;
    mtdSair;
  except
    dm.mtdMensagem('Não foi possivel gravar a alteração do Anuncio.');
    mtdSair;
  end;
end;
//=============================================================================
end.
