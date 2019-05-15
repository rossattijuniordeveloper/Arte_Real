unit untAssinantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DBCtrls, DB, DBClient, FMTBcd,
  SqlExpr, DBTables, Provider, jpeg;

type
  TfrmAssinantes = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    rdgFiltro: TRadioGroup;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    btnSair: TImage;
    dsAssinatura: TDataSource;
    grid: TDBGrid;
    btnFiltro: TImage;
    btnIncluir: TImage;
    btnAlterar: TImage;
    btnAnuncio: TImage;
    btnAssinatura: TImage;
    btnTelefone: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure mtdFiltrar;
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure mtdAlterar;
    procedure gridDblClick(Sender: TObject);
    procedure btnAssinaturaClick(Sender: TObject);
    procedure mtdAssinatura;
    procedure mtdAnuncio;
    procedure mtdTelefone;
    procedure btnAnuncioClick(Sender: TObject);
    procedure btnTelefoneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAssinantes: TfrmAssinantes;

implementation

{$R *.dfm}
uses udm,untfrmimagens, untAssinantesInclusao,untAssinantesAlteracao,untfrmAssinaturaGrid,untFrmAnuncioGrid,untFrmAssinantesTelefoneGrid;
//==============================================================================
procedure TfrmAssinantes.btnAlterarClick(Sender: TObject);
begin
  mtdAlterar;
end;
//==============================================================================
procedure TfrmAssinantes.btnAnuncioClick(Sender: TObject);
begin
  mtdAnuncio;
end;
//==============================================================================
procedure TfrmAssinantes.btnAssinaturaClick(Sender: TObject);
begin
  mtdAssinatura;
end;
//==============================================================================
procedure TfrmAssinantes.btnFiltroClick(Sender: TObject);
begin
  mtdFiltrar;
end;
//==============================================================================
procedure TfrmAssinantes.FormShow(Sender: TObject);
begin
  btnFiltro.Picture.Assign(frmImagens.btnFiltro.Picture);
  btnAlterar.Picture:=frmImagens.btnAlterar.Picture;
  btnIncluir.Picture:=frmImagens.btnIncluir.Picture;
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
  btnAssinatura.Picture.Assign(frmImagens.btnAssinatura.Picture);
  btnAnuncio.Picture.Assign(frmImagens.btnAnuncio.Picture);
  btnAlterar.Picture.Assign(frmImagens.btnAlterar.Picture);
  btnTelefone.Picture.Assign(frmImagens.btnTelefone.Picture);
  rdgFiltro.ItemIndex:=0;
  mtdFiltrar;
end;
//==============================================================================
procedure TfrmAssinantes.gridDblClick(Sender: TObject);
begin
  mtdAlterar;
  mtdFiltrar;
end;
//==============================================================================
procedure TfrmAssinantes.btnIncluirClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmAssinantesInclusao,frmAssinantesInclusao);
    frmAssinantesInclusao.ShowModal;
    mtdFiltrar;
  finally
    frmAssinantesInclusao.Destroy;
    frmAssinantesInclusao:=Nil;
  end;
end;
//==============================================================================
procedure TfrmAssinantes.btnSairClick(Sender: TObject);
begin
  dm.sql_Consulta_ArteReal.Close;
  frmAssinantes.Close;
end;
procedure TfrmAssinantes.btnTelefoneClick(Sender: TObject);
begin
  mtdTelefone;
end;

//==============================================================================
procedure TfrmAssinantes.mtdFiltrar;
begin
  try
  dm.sql_Consulta_ArteReal.Active:=False;
  dm.sql_Consulta_ArteReal.Parameters.ParamByName('@Ativo').Value:=0;
  dm.sql_Consulta_ArteReal.Parameters.ParamByName('@IDAssinante').Value:=Null;
  dm.sql_Consulta_ArteReal.Parameters.ParamByName('@AssinanteAtivo').Value:=0;
  dm.sql_Consulta_ArteReal.Parameters.ParamByName('@AnuncianteAtivo').Value:=0;

  case rdgFiltro.ItemIndex of
    0: dm.sql_Consulta_ArteReal.Parameters.ParamByName('@Ativo').Value:=0;
    1: dm.sql_Consulta_ArteReal.Parameters.ParamByName('@AssinanteAtivo').Value:=0;
    2: dm.sql_Consulta_ArteReal.Parameters.ParamByName('@AssinanteAtivo').Value:=1;
    3: dm.sql_Consulta_ArteReal.Parameters.ParamByName('@AnuncianteAtivo').Value:=0;
    4: dm.sql_Consulta_ArteReal.Parameters.ParamByName('@AnuncianteAtivo').Value:=1;
  end;

  dm.sql_Consulta_ArteReal.Active:=True;
  except
   dm.mtdMensagem('Não foi possivel Acessar o Banco de dados (MGP_ArteReal_Selecionar)!');
  end;

end;
//==============================================================================
procedure TfrmAssinantes.mtdAlterar;
begin
  try
    Application.CreateForm(TFrmAssinantesAlteracao,FrmAssinantesAlteracao);
    FrmAssinantesAlteracao.vpiIDAssinante     :=dm.sql_Consulta_ArteRealIDAssinante.Value;
    FrmAssinantesAlteracao.edtIDPessoa.Text   :=dm.sql_Consulta_ArteRealIDPessoa.AsString;
    FrmAssinantesAlteracao.edtLojaID.Text     := dm.sql_Consulta_ArteRealIDLoja.AsString;
    FrmAssinantesAlteracao.edtIDAssinante.Text:=dm.sql_Consulta_ArteRealIDPessoa.AsString;
    FrmAssinantesAlteracao.edtNomePessoa.Text :=dm.sql_Consulta_ArteRealAssinanteNome.AsString;
    FrmAssinantesAlteracao.edtEndereco.Text   := dm.sql_Consulta_ArteRealEndereco.AsString;
    FrmAssinantesAlteracao.edtLojaNome.Text   := dm.sql_Consulta_ArteRealNomeLoja.AsString;
    FrmAssinantesAlteracao.edtCidadeNome.Text :=dm.sql_Consulta_ArteRealCidadeNome.AsString;
    FrmAssinantesAlteracao.edtCep.Text        := dm.sql_Consulta_ArteRealCep.AsString;
    FrmAssinantesAlteracao.ShowModal;
    mtdFiltrar;
  finally
    FrmAssinantesAlteracao.Destroy;
    FrmAssinantesAlteracao:=Nil;
  end;
end;
//==============================================================================
procedure TfrmAssinantes.mtdAssinatura;
begin
  if (dsAssinatura.DataSet.Active) and (dsAssinatura.DataSet.IsEmpty=false)  then
  begin
  try
    Application.CreateForm(TfrmAssinaturaGrid,frmAssinaturaGrid);
    frmAssinaturaGrid.sql_Assinatura.Close;
    frmAssinaturaGrid.sql_Assinatura.Parameters.ParamByName('@IDAssinante').Value:=dm.sql_Consulta_ArteRealIDAssinante.Value;
    frmAssinaturaGrid.vpiIDAssinante:=dm.sql_Consulta_ArteRealIDAssinante.Value;
    try
      frmAssinaturaGrid.sql_Assinatura.Open;
    except
      dm.mtdMensagem('Não foi possível acessar a(s) assintura(s) de '+dm.sql_Consulta_ArteRealAssinanteNome.AsString);
      frmAssinaturaGrid.Destroy;
      frmAssinaturaGrid:=Nil;
      exit;
    end;
    frmAssinaturaGrid.Caption:='Assinatura(s) de: '+dm.sql_Consulta_ArteRealAssinanteNome.AsString;
    frmAssinaturaGrid.pnlAssinatura.Caption:='Assinatura(s) de: '+dm.sql_Consulta_ArteRealAssinanteNome.AsString;
    frmAssinaturaGrid.ShowModal;
    mtdFiltrar;
  finally
    frmAssinaturaGrid.Destroy;
    frmAssinaturaGrid:=Nil;
  end;
  end;
end;
//==============================================================================
procedure TfrmAssinantes.mtdAnuncio;
begin
  if (dsAssinatura.DataSet.Active) and (dsAssinatura.DataSet.IsEmpty=false)  then
  begin
  try
    Application.CreateForm(TfrmAnuncioGrid,frmAnuncioGrid);
    frmAnuncioGrid.sql_Anuncio.Close;
    frmAnuncioGrid.sql_Anuncio.Parameters.ParamByName('@IDAssinante').Value:=dm.sql_Consulta_ArteRealIDAssinante.Value;
    frmAnuncioGrid.vpiIDAssinante:=dm.sql_Consulta_ArteRealIDAssinante.Value;
    try
      frmAnuncioGrid.sql_Anuncio.Open;
    except
      dm.mtdMensagem('Não foi possível acessar o(s) Anuncio(s) de '+dm.sql_Consulta_ArteRealAssinanteNome.AsString);
      frmAnuncioGrid.Destroy;
      frmAnuncioGrid:=Nil;
      exit;
    end;
    frmAnuncioGrid.Caption:='Anuncio(s) de: '+dm.sql_Consulta_ArteRealAssinanteNome.AsString;
    frmAnuncioGrid.pnlAnuncio.Caption:='Anuncio(s) de: '+dm.sql_Consulta_ArteRealAssinanteNome.AsString;
    frmAnuncioGrid.ShowModal;
    mtdFiltrar;
  finally
    frmAnuncioGrid.Destroy;
    frmAnuncioGrid:=Nil;
  end;
  end;
end;
//==============================================================================
procedure TfrmAssinantes.mtdTelefone;
begin
    if (dsAssinatura.DataSet.Active) and (dsAssinatura.DataSet.IsEmpty=false)  then
  begin
  try
    Application.CreateForm(TFrmAssinanteTelefoneGrid,FrmAssinanteTelefoneGrid);
    FrmAssinanteTelefoneGrid.vpiIDAssinante:=dm.sql_Consulta_ArteRealIDAssinante.Value;
    FrmAssinanteTelefoneGrid.pnlAcao.Caption:=dm.sql_Consulta_ArteRealAssinanteNome.AsString;
    FrmAssinanteTelefoneGrid.Caption:=FrmAssinanteTelefoneGrid.pnlAcao.Caption;
    FrmAssinanteTelefoneGrid.ShowModal;
  finally
    FrmAssinanteTelefoneGrid.Destroy;
    FrmAssinanteTelefoneGrid:=Nil;
  end;
end;
end;
//==============================================================================

end.
