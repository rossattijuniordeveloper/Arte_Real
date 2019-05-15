unit untFrmAnuncioInclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DB, ADODB;

type
  TFrmAnuncioInclusao = class(TForm)
    lblAcao: TLabel;
    Label7: TLabel;
    edtAnuncioContrato: TEdit;
    Label8: TLabel;
    edtAnuncioDataInicio: TDateTimePicker;
    Label9: TLabel;
    edtAnuncioDataFim: TDateTimePicker;
    Panel1: TPanel;
    btnSair: TImage;
    btnGravar: TImage;
    sqlAnuncioIncluir: TADOStoredProc;
    function  mtdValidar:Boolean;
    procedure mtdSair;
    procedure mtdGravar;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    vpiIDAssinante:integer;
  end;

var
  FrmAnuncioInclusao: TFrmAnuncioInclusao;

implementation

{$R *.dfm}

uses udm,untFrmImagens;
//==============================================================================
procedure TFrmAnuncioInclusao.btnGravarClick(Sender: TObject);
begin
  if mtdValidar then
  begin
    mtdGravar;
    mtdSair;
  end;
end;
//==============================================================================
procedure TFrmAnuncioInclusao.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//==============================================================================
procedure TFrmAnuncioInclusao.FormShow(Sender: TObject);
begin
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
  btnGravar.Picture.Assign(frmImagens.btnGravar.Picture);
  edtAnuncioContrato.Text:='0';
  edtAnuncioDataInicio.Date:=now;
  edtAnuncioDataFim.Date:=now+180;
end;
//==============================================================================
function  TFrmAnuncioInclusao.mtdValidar:Boolean;
var
  vlbValido:Boolean;
  vlsMensagem:String;
begin
  vlbValido:=True;
  vlsMensagem:=EmptyStr;
  if  ( Trim(edtAnuncioContrato.Text)=EmptyStr) or (Trim(edtAnuncioContrato.Text)='0' ) then
  begin
     vlbValido:=False;
     vlsMensagem:='ATENÇÃO!!'+#13+' Para Lançar uma assinatura é necessário informar o numero do Contrato do Anuncio';
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
  result:=vlbValido;
end;
//=============================================================================
procedure TFrmAnuncioInclusao.mtdSair;
begin
  sqlAnuncioIncluir.Close;
  FrmAnuncioInclusao.Close;
end;
//=============================================================================
procedure TFrmAnuncioInclusao.mtdGravar;
begin
  try
    sqlAnuncioIncluir.Close;
    sqlAnuncioIncluir.Parameters.ParamByName('@IDAssinante').Value:= vpiIDAssinante;
    sqlAnuncioIncluir.Parameters.ParamByName('@NumeroContrato').Value:=Trim(edtAnuncioContrato.Text);
    sqlAnuncioIncluir.Parameters.ParamByName('@DataInicio').Value:=edtAnuncioDataInicio.Date;
    sqlAnuncioIncluir.Parameters.ParamByName('@DataFim').Value:=edtAnuncioDataFim.Date;
    sqlAnuncioIncluir.Parameters.ParamByName('@Ativo').Value:=0;
    sqlAnuncioIncluir.ExecProc;
    mtdSair;
  except
    dm.mtdMensagem('Não foi possivel gravar a Inclusão do Anuncio.');
    mtdSair;
  end;
end;
//=============================================================================

end.
