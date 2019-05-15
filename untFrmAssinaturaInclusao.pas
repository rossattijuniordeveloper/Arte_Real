unit untFrmAssinaturaInclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DB, ADODB;

type
  TFrmAssinaturaInclusao = class(TForm)
    lblAcao: TLabel;
    Label7: TLabel;
    edtAssinaturaContrato: TEdit;
    Label8: TLabel;
    edtAssinaturaDataInicio: TDateTimePicker;
    Label9: TLabel;
    edtAssinaturraDataFim: TDateTimePicker;
    Panel1: TPanel;
    btnSair: TImage;
    btnGravar: TImage;
    sqlAssinaturaIncluir: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    function  mtdValidar:Boolean;
    procedure mtdSair;
    procedure mtdGravar;
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpiIDAssinante:integer;
  end;

var
  FrmAssinaturaInclusao: TFrmAssinaturaInclusao;

implementation

{$R *.dfm}

uses udm,untFrmImagens;
//==============================================================================
procedure TFrmAssinaturaInclusao.btnGravarClick(Sender: TObject);
begin
  if mtdValidar then
  begin
    mtdGravar;
    mtdSair;
  end;
end;
//=============================================================================
procedure TFrmAssinaturaInclusao.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//==============================================================================
procedure TFrmAssinaturaInclusao.FormShow(Sender: TObject);
begin
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
  btnGravar.Picture.Assign(frmImagens.btnGravar.Picture);
  edtAssinaturaContrato.Text:='0';
  edtAssinaturaDataInicio.Date:=now;
  edtAssinaturraDataFim.Date:=now+180;
end;
//==============================================================================
function  TFrmAssinaturaInclusao.mtdValidar:Boolean;
var
  vlbValido:Boolean;
  vlsMensagem:String;
begin
  vlbValido:=True;
  vlsMensagem:=EmptyStr;
  if  ( Trim(edtAssinaturaContrato.Text)=EmptyStr) or (Trim(edtAssinaturaContrato.Text)='0' ) then
  begin
     vlbValido:=False;
     vlsMensagem:='ATENÇÃO!!'+#13+' Para Lançar uma assinatura é necessário informar o numero do Contrato da Assinatura';
  end
  else
  begin
    vlbValido:=True;
  end;

  if edtAssinaturaDataInicio.Date>edtAssinaturraDataFim.Date then
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
  result:=vlbValido;
end;
//=============================================================================
procedure TFrmAssinaturaInclusao.mtdSair;
begin
  sqlAssinaturaIncluir.Close;
  FrmAssinaturaInclusao.Close;
end;
//=============================================================================
procedure TFrmAssinaturaInclusao.mtdGravar;
begin
  try
    sqlAssinaturaIncluir.Close;
    sqlAssinaturaIncluir.Parameters.ParamByName('@IDAssinante').Value:= vpiIDAssinante;
    sqlAssinaturaIncluir.Parameters.ParamByName('@NumeroContrato').Value:=Trim(edtAssinaturaContrato.Text);
    sqlAssinaturaIncluir.Parameters.ParamByName('@DataInicio').Value:=edtAssinaturaDataInicio.Date;
    sqlAssinaturaIncluir.Parameters.ParamByName('@DataFim').Value:=edtAssinaturraDataFim.Date;
    sqlAssinaturaIncluir.Parameters.ParamByName('@Ativo').Value:=0;
    sqlAssinaturaIncluir.ExecProc;
    mtdSair;
  except
    dm.mtdMensagem('Não foi possivel gravar a Inclusão da assinatura.');
    mtdSair;
  end;
end;
//=============================================================================

end.
