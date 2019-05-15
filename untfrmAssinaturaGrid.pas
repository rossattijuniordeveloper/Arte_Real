unit untfrmAssinaturaGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBCtrls, Grids, DBGrids, ADODB;

type
  TfrmAssinaturaGrid = class(TForm)
    Panel2: TPanel;
    btnSair: TImage;
    btnIncluir: TImage;
    btnAlterar: TImage;
    pnlAssinatura: TPanel;
    sql_Assinatura: TADOStoredProc;
    sql_AssinaturaIDAssinatura: TAutoIncField;
    sql_AssinaturaIDAssinante: TIntegerField;
    sql_AssinaturaAssinanteNome: TStringField;
    sql_AssinaturaNumeroContrato: TStringField;
    sql_AssinaturaDataInicio: TDateTimeField;
    sql_AssinaturaDataFim: TDateTimeField;
    sql_AssinaturaAtivo: TIntegerField;
    grid: TDBGrid;
    DBNavigator1: TDBNavigator;
    ds: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure mtdAlterar;
    procedure mtdFiltrar;
    procedure mtdSair;
    procedure mtdIncluir;
    procedure gridDblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpiIDAssinante:integer;
  end;

var
  frmAssinaturaGrid: TfrmAssinaturaGrid;

implementation

{$R *.dfm}
uses udm,untfrmimagens,untFrmAssinaturaAlteracao,untfrmAssinaturaInclusao;

//==============================================================================
procedure TfrmAssinaturaGrid.btnAlterarClick(Sender: TObject);
begin
  mtdAlterar;
end;
//==============================================================================
procedure TfrmAssinaturaGrid.btnIncluirClick(Sender: TObject);
begin
  mtdIncluir;
end;

procedure TfrmAssinaturaGrid.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//==============================================================================
procedure TfrmAssinaturaGrid.FormShow(Sender: TObject);
begin
  btnAlterar.Picture:=frmImagens.btnAlterar.Picture;
  btnIncluir.Picture:=frmImagens.btnIncluir.Picture;
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
end;
//==============================================================================
procedure TfrmAssinaturaGrid.gridDblClick(Sender: TObject);
begin
  mtdAlterar;
end;
//==============================================================================
procedure TfrmAssinaturaGrid.mtdAlterar;
begin
  if (sql_Assinatura.Active) and (sql_Assinatura.IsEmpty=false) then
  begin
    try
      Application.CreateForm(TFrmAssinaturaAlteracao,FrmAssinaturaAlteracao);
      FrmAssinaturaAlteracao.vpiIDAssinatura:=sql_AssinaturaIDAssinatura.Value;
      FrmAssinaturaAlteracao.vpiIDAssinante:= sql_AssinaturaIDAssinante.Value;
      FrmAssinaturaAlteracao.edtAssinaturaContrato.Text:=sql_AssinaturaNumeroContrato.Value;
      FrmAssinaturaAlteracao.edtAssinaturaDataInicio.Date:=sql_AssinaturaDataInicio.Value;
      FrmAssinaturaAlteracao.edtAssinaturaDataFim.Date:=sql_AssinaturaDataFim.Value;
      FrmAssinaturaAlteracao.rdgAtivo.ItemIndex:=sql_AssinaturaAtivo.Value;
      FrmAssinaturaAlteracao.ShowModal;
      mtdFiltrar;
    finally
      FrmAssinaturaAlteracao.Destroy;
      FrmAssinaturaAlteracao:=Nil;
    end;
  end;

end;
//==============================================================================
procedure TfrmAssinaturaGrid.mtdFiltrar;
begin
  try
    sql_Assinatura.Close;
    sql_Assinatura.Parameters.ParamByName('@IDAssinante').Value:=vpiIDAssinante;
    sql_Assinatura.Open;
  except
    dm.mtdMensagem('problemas ao acessar as Assinaturas!');
    mtdSair;
  end;
end;
//==============================================================================
procedure TfrmAssinaturaGrid.mtdSair;
begin
  sql_Assinatura.Close;
  frmAssinaturaGrid.Close;
end;
//==============================================================================
procedure TfrmAssinaturaGrid.mtdIncluir;
begin
    try
      Application.CreateForm(TFrmAssinaturaInclusao,FrmAssinaturaInclusao);
      FrmAssinaturaInclusao.vpiIDAssinante:=vpiIDAssinante;
      FrmAssinaturaInclusao.ShowModal;
      mtdFiltrar;
    finally
      FrmAssinaturaInclusao.Destroy;
      FrmAssinaturaInclusao:=Nil;
    end;
end;
//==============================================================================
end.

