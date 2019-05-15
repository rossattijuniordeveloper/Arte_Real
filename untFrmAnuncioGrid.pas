unit untFrmAnuncioGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, ExtCtrls, DB, ADODB;

type
  TfrmAnuncioGrid = class(TForm)
    Panel2: TPanel;
    btnSair: TImage;
    btnIncluir: TImage;
    btnAlterar: TImage;
    DBNavigator1: TDBNavigator;
    grid: TDBGrid;
    pnlAnuncio: TPanel;
    sql_Anuncio: TADOStoredProc;
    ds: TDataSource;
    sql_AnuncioIDAnuncio: TAutoIncField;
    sql_AnuncioIDAssinante: TIntegerField;
    sql_AnuncioNumeroContrato: TStringField;
    sql_AnuncioDataInicioTxt: TStringField;
    sql_AnuncioDataFimTxt: TStringField;
    sql_AnuncioAtivo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure mtdAlterar;
    procedure mtdFiltrar;
    procedure mtdSair;
    procedure mtdIncluir;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    vpiIDAssinante:integer;
  end;

var
  frmAnuncioGrid: TfrmAnuncioGrid;

implementation

{$R *.dfm}
uses udm,untfrmimagens,untfrmAnuncioInclusao,untFrmAnuncioAlteracao;
//==============================================================================
procedure TfrmAnuncioGrid.btnAlterarClick(Sender: TObject);
begin
  mtdAlterar;
end;
//==============================================================================
procedure TfrmAnuncioGrid.btnIncluirClick(Sender: TObject);
begin
  mtdIncluir;
end;
//==============================================================================
procedure TfrmAnuncioGrid.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//==============================================================================
procedure TfrmAnuncioGrid.FormShow(Sender: TObject);
begin
  btnAlterar.Picture:=frmImagens.btnAlterar.Picture;
  btnIncluir.Picture:=frmImagens.btnIncluir.Picture;
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
end;
procedure TfrmAnuncioGrid.gridDblClick(Sender: TObject);
begin
  mtdAlterar;
end;
//==============================================================================
procedure TfrmAnuncioGrid.mtdAlterar;
begin
  if (sql_Anuncio.Active) and (sql_Anuncio.IsEmpty=false) then
  begin
    try
      Application.CreateForm(TFrmAnuncioAlteracao,FrmAnuncioAlteracao);
      FrmAnuncioAlteracao.vpiIDAnuncio:=sql_AnuncioIDAnuncio.Value;
      FrmAnuncioAlteracao.edtAnuncioContrato.Text:=sql_AnuncioNumeroContrato.Value;
      FrmAnuncioAlteracao.edtAnuncioDataInicio.Date:=sql_AnuncioDataInicioTxt.AsDateTime;
      FrmAnuncioAlteracao.edtAnuncioDataFim.Date:=sql_AnuncioDataFimTxt.AsDateTime;
      FrmAnuncioAlteracao.rdgAtivo.ItemIndex:=sql_AnuncioAtivo.Value;
      FrmAnuncioAlteracao.ShowModal;
      mtdFiltrar;
    finally
      FrmAnuncioAlteracao.Destroy;
      FrmAnuncioAlteracao:=Nil;
    end;
  end;
end;
//==============================================================================
procedure TfrmAnuncioGrid.mtdFiltrar;
begin
  try
    sql_Anuncio.Close;
    sql_Anuncio.Parameters.ParamByName('@IDAssinante').Value:= vpiIDAssinante;
    sql_Anuncio.Open;
  except
    dm.mtdMensagem('problemas ao acessar os Anuncios!');
    mtdSair;
  end;
end;
//==============================================================================
procedure TfrmAnuncioGrid.mtdSair;
begin
  sql_Anuncio.Close;
  frmAnuncioGrid.Close;
end;
//==============================================================================
procedure TfrmAnuncioGrid.mtdIncluir;
begin
    try
      Application.CreateForm(TFrmAnuncioInclusao,FrmAnuncioInclusao);
      FrmAnuncioInclusao.vpiIDAssinante:=vpiIDAssinante;
      FrmAnuncioInclusao.ShowModal;
      mtdFiltrar;
    finally
      FrmAnuncioInclusao.Destroy;
      FrmAnuncioInclusao:=Nil;
    end;
end;
//==============================================================================

end.
