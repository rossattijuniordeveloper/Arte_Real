unit untFrmSelecaoObreiros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TfrmSelecaoObreiros = class(TForm)
    ds: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    btnSair: TImage;
    btnConfirmar: TImage;
    Label1: TLabel;
    edtLojaNome: TEdit;
    edtLojaID: TEdit;
    btnSelecao: TImage;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mtdPrepararSelecaoLojas;
    procedure mtdSelecionar;
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mtdPesquisar;
    procedure btnSelecaoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpsIDPessoa:string;
    vpsNome:string;
    vpsIDCidade:string;
    vpsCidadeNome:string;

  end;

var
  frmSelecaoObreiros: TfrmSelecaoObreiros;

implementation

{$R *.dfm}

uses udm,untfrmimagens,untFrmSelecaoLojas;
//==============================================================================
procedure TfrmSelecaoObreiros.btnConfirmarClick(Sender: TObject);
begin
  mtdSelecionar;
end;
//==============================================================================
procedure TfrmSelecaoObreiros.btnSairClick(Sender: TObject);
begin
  dm.sql_Obreiros.Close;
  frmSelecaoObreiros.Close;
end;

procedure TfrmSelecaoObreiros.btnSelecaoClick(Sender: TObject);
begin
  mtdPrepararSelecaoLojas;
end;
//==============================================================================
procedure TfrmSelecaoObreiros.DBGrid1DblClick(Sender: TObject);
begin
  mtdSelecionar;
end;
//==============================================================================
procedure TfrmSelecaoObreiros.edtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=13 then
  begin
    mtdPesquisar;
  end;
end;
//==============================================================================
procedure TfrmSelecaoObreiros.FormCreate(Sender: TObject);
begin
  btnSair.Picture:=frmImagens.btnSair.Picture;
  btnConfirmar.Picture:=frmImagens.btnConfirmar.Picture;
  btnSelecao.Picture:=frmImagens.btnSelecao.Picture;
end;
//==============================================================================
procedure TfrmSelecaoObreiros.FormShow(Sender: TObject);
begin
  try
    edtLojaNome.Text:=EmptyStr;
    edtLojaID.Text:='0';
    vpsIDPessoa:='0';
    vpsNome:=EmptyStr;
    vpsIDCidade:='0';
    vpsCidadeNome:=EmptyStr;
    edtPesquisa.SetFocus;
  except

  end;

end;
//==============================================================================
procedure TfrmSelecaoObreiros.mtdPrepararSelecaoLojas;
begin
  try
     Application.CreateForm(TfrmSelecaoLojas,frmSelecaoLojas);
     frmSelecaoLojas.ShowModal;
     edtLojaID.Text:=IntToStr(frmSelecaoLojas.vpiID);
     edtLojaNome.Text:=frmSelecaoLojas.vpsNome;
     if edtLojaID.Text<>'0' then
     begin
       mtdPesquisar;
     end;
  except
     edtLojaNome.Text:=EmptyStr;
     edtLojaID.Text:='0';
     dm.mtdMensagem('Não foi Possivel Disponibilizar Seleção de Lojas');
  end;                              
end;
//==============================================================================
procedure TfrmSelecaoObreiros.mtdSelecionar;
begin
  if (ds.DataSet.Active=True) and (ds.DataSet.IsEmpty=False) then
  begin
    vpsIDPessoa  :=dm.sql_ObreirosID.AsString;
    vpsNome      :=dm.sql_ObreirosNome.AsString;
    vpsIDCidade  :=dm.sql_ObreirosIDCidade.AsString;
    vpsCidadeNome:=dm.sql_ObreirosCidadeNome.Value;
    frmSelecaoObreiros.Close;
  end
  else
  begin
    vpsIDPessoa:='0';
    vpsIDCidade:='0';
    vpsNome:=EmptyStr;
    vpsCidadeNome:=EmptyStr;
  end;
end;
//==============================================================================
procedure TfrmSelecaoObreiros.mtdPesquisar;
var
 sPesquisa:string;
begin
  dm.sql_Obreiros.Close;
  dm.sql_Obreiros.Parameters.ParamByName('@IDLoja').Value:=Null;
  dm.sql_Obreiros.Parameters.ParamByName('@Nome').Value:=Null;
  if edtLojaID.Text<>'0' then
  begin
      dm.sql_Obreiros.Parameters.ParamByName('@IDLoja').Value:=edtLojaID.Text;
      dm.sql_Obreiros.Open;
  end;
  sPesquisa:=Trim(edtPesquisa.Text);
  if sPesquisa<>EmptyStr then
  begin
    dm.sql_Obreiros.Close;
    dm.sql_Obreiros.Parameters.ParamByName('@Nome').Value:=sPesquisa;
    try
      dm.sql_Obreiros.Open;
    except
      dm.mtdMensagem('Não foi possivel Acessar as Obreiros');
    end;
  end;
{
  else
  begin
    dm.mtdMensagem('para pesquisar é necessário infomar parte do nr cadastro do Obreiro ou parte do nome !');
    edtPesquisa.Text:=EmptyStr;
  end;
}
  edtPesquisa.Text:=EmptyStr;

end;
//==============================================================================
end.
