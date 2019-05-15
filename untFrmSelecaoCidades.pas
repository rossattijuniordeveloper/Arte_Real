unit untFrmSelecaoCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, DB, StdCtrls, ExtCtrls;

type
  TfrmSelecaoCidades = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnSair: TImage;
    btnConfirmar: TImage;
    edtPesquisa: TEdit;
    Label3: TLabel;
    ds: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    edtEstadoID: TEdit;
    dsEstado: TDataSource;
    Label1: TLabel;
    edtEstadoNome: TEdit;
    btnSelecao: TImage;
    procedure FormShow(Sender: TObject);
    procedure mtdPesquisar;
    procedure dbEstadosChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mtdSelecionar;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnSelecaoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    vpsNome:string;
    vpiID:integer;

  end;

var
  frmSelecaoCidades: TfrmSelecaoCidades;

implementation

{$R *.dfm}

uses udm,untFrmImagens,untFrmSelecaoEstados;

//=============================================================================
procedure TfrmSelecaoCidades.btnConfirmarClick(Sender: TObject);
begin
  mtdSelecionar;
end;
//=============================================================================
procedure TfrmSelecaoCidades.btnSairClick(Sender: TObject);
begin
  frmSelecaoCidades.Close;
end;
//=============================================================================
procedure TfrmSelecaoCidades.btnSelecaoClick(Sender: TObject);
begin
  try
     Application.CreateForm(TfrmSelecaoEstados,frmSelecaoEstados);
     frmSelecaoEstados.ShowModal;
     edtEstadoID.Text:=IntToStr(frmSelecaoEstados.vpiID);
     edtEstadoNome.Text:=frmSelecaoEstados.vpsNome;
     mtdPesquisar;
  except
     edtEstadoNome.Text:=EmptyStr;
     edtEstadoID.Text:='0';
     dm.mtdMensagem('Não foi Possivel Disponibilizar Seleção de Estados');
  end;
end;
//=============================================================================
procedure TfrmSelecaoCidades.dbEstadosChange(Sender: TObject);
begin
  edtEstadoID.Text:=dm.sql_CidadeEstadoID.AsString;  //dbEstados.DataSource.DataSet.FieldByName('@ID').Value;
end;
//=============================================================================
procedure TfrmSelecaoCidades.DBGrid1DblClick(Sender: TObject);
begin
  mtdSelecionar;
end;
//=============================================================================
procedure TfrmSelecaoCidades.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    mtdPesquisar;
  end;
end;
//=============================================================================
procedure TfrmSelecaoCidades.FormCreate(Sender: TObject);
begin
  btnSair.Picture:=frmImagens.btnSair.Picture;
  btnConfirmar.Picture:=frmImagens.btnConfirmar.Picture;
end;
//=============================================================================
procedure TfrmSelecaoCidades.FormShow(Sender: TObject);
begin
  try
    dm.sql_CidadeEstado.Open;
  except
  end;
  btnSair.Picture:=frmImagens.btnSair.Picture;
  btnConfirmar.Picture:=frmImagens.btnConfirmar.Picture;
//  vpsNome:=EmptyStr;
//  vpiID  :=0;
  edtPesquisa.Text:=EmptyStr;
  edtPesquisa.SetFocus;
  edtPesquisa.SelectAll;
end;
//=============================================================================
procedure TfrmSelecaoCidades.mtdPesquisar;
var
 sPesquisa:string;
begin
  dm.sql_Cidade.Close;
  dm.sql_Cidade.Parameters.ParamByName('@IDCidadeEstado').Value:=Null;
  dm.sql_Cidade.Parameters.ParamByName('@Nome').Value:=Null;
  if edtEstadoID.Text<>'0' then
  begin
      dm.sql_Cidade.Parameters.ParamByName('@IDCidadeEstado').Value:=edtEstadoID.Text;
      dm.sql_Cidade.Open;
  end;
  sPesquisa:=Trim(edtPesquisa.Text);
  if sPesquisa<>EmptyStr then
  begin
    dm.sql_Cidade.Close;
    dm.sql_Cidade.Parameters.ParamByName('@Nome').Value:=sPesquisa;
    try
      dm.sql_Cidade.Open;
    except
      dm.mtdMensagem('Não foi possivel Acessar a Seleção de Cidades');
    end;
  end;
  edtPesquisa.Text:=EmptyStr;
end;
//=============================================================================
procedure TfrmSelecaoCidades.mtdSelecionar;
begin
  if (ds.DataSet.Active=True) and (ds.DataSet.IsEmpty=False) then
  begin
    vpiID        :=dm.sql_CidadeID.Value;
    dm.sql_CidadeEstado.Close;
    dm.sql_CidadeEstado.Parameters.ParamByName('@IDcidadeEstado').Value:=dm.sql_CidadeIDCidadeEstado.Value;
    dm.sql_CidadeEstado.Open;
    vpsNome      :=dm.sql_CidadeNome.AsString+ ' - '+dm.sql_CidadeEstadouf.Value;
    frmSelecaoCidades.Close;
  end
  else
  begin
    vpiID:=0;
    vpsNome:=EmptyStr;
  end;
end;
//=============================================================================
end.
