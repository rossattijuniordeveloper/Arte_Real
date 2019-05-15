unit untFrmSelecaoLojas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, DBCtrls;

type
  TfrmSelecaoLojas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnSair: TImage;
    edtPesquisa: TEdit;
    DBGrid1: TDBGrid;
    ds: TDataSource;
    btnConfirmar: TImage;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mtdPesquisar;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpsNome:string;
    vpiID:integer;
  end;

var
  frmSelecaoLojas: TfrmSelecaoLojas;

implementation

{$R *.dfm}
  uses udm,untFrmImagens;

//=============================================================================
procedure TfrmSelecaoLojas.btnConfirmarClick(Sender: TObject);
begin
  if (ds.DataSet.Active=True) and (ds.DataSet.IsEmpty=False) then
  begin
    vpiID:=dm.sql_LojasID.Value;
    vpsNome:=dm.sql_LojasNome.Value;
    frmSelecaoLojas.Close;
  end
  else
  begin
    vpiID:=0;
    vpsNome:=EmptyStr;
  end;

end;
//=============================================================================
procedure TfrmSelecaoLojas.btnSairClick(Sender: TObject);
begin
  dm.sql_Lojas.Close;
  frmSelecaoLojas.Close;
end;
//=============================================================================
procedure TfrmSelecaoLojas.DBGrid1DblClick(Sender: TObject);
begin
  if (ds.DataSet.Active=True) and (ds.DataSet.IsEmpty=False) then
  begin
    vpiID:=dm.sql_LojasID.Value;
    vpsNome:=dm.sql_LojasNome.Value;
    frmSelecaoLojas.Close;
  end
  else
  begin
    vpiID:=0;
    vpsNome:=EmptyStr;
  end;
end;
//=============================================================================
procedure TfrmSelecaoLojas.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    mtdPesquisar;
  end;
end;
//=============================================================================
procedure TfrmSelecaoLojas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  dm.sql_Lojas.Close;
end;
//=============================================================================
procedure TfrmSelecaoLojas.FormShow(Sender: TObject);
begin
  btnSair.Picture:=frmImagens.btnSair.Picture;
  btnConfirmar.Picture:=frmImagens.btnConfirmar.Picture;
  vpsNome:=EmptyStr;
  vpiID  :=0;
  edtPesquisa.Text:=EmptyStr;
  edtPesquisa.SetFocus;
  edtPesquisa.SelectAll;
end;
//=============================================================================
procedure TfrmSelecaoLojas.mtdPesquisar;
var
 sPesquisa:string;
begin
  sPesquisa:=Trim(edtPesquisa.Text);
  if sPesquisa<>EmptyStr then
  begin
    dm.sql_Lojas.Close;
    dm.sql_Lojas.Parameters.ParamByName('@Nome').Value:=sPesquisa;
    try
      dm.sql_Lojas.Open;
    except
      dm.mtdMensagem('Não foi possivel Acessar as Lojas');
    end;
  end
  else
  begin
    dm.mtdMensagem('para pesquisar é necessário infomar parte do código da loja ou parte do nome !');
    edtPesquisa.Text:=EmptyStr;
  end;
  edtPesquisa.Text:=EmptyStr;
end;
//=============================================================================


end.
