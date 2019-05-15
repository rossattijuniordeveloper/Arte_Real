unit untFrmSelecaoEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls;

type
  TfrmSelecaoEstados = class(TForm)
    Panel2: TPanel;
    btnSair: TImage;
    btnConfirmar: TImage;
    edtPesquisa: TEdit;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mtdSelecionar;
    procedure mtdpesquisar;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vpsNome:string;
    vpiID:integer;
  end;

var
  frmSelecaoEstados: TfrmSelecaoEstados;

implementation

{$R *.dfm}

uses udm,untFrmImagens;
//==============================================================================
procedure TfrmSelecaoEstados.btnConfirmarClick(Sender: TObject);
begin
  mtdSelecionar;
end;
//==============================================================================
procedure TfrmSelecaoEstados.btnSairClick(Sender: TObject);
begin
 frmSelecaoEstados.Close;
end;
procedure TfrmSelecaoEstados.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    mtdPesquisar;
  end;
end;

//=============================================================================
procedure TfrmSelecaoEstados.FormCreate(Sender: TObject);
begin
  btnSair.Picture:=frmImagens.btnSair.Picture;
  btnConfirmar.Picture:=frmImagens.btnConfirmar.Picture;
end;
//==============================================================================
procedure TfrmSelecaoEstados.FormShow(Sender: TObject);
begin
  try
    dm.sql_CidadeEstado.Open;
  except
  end;
  btnSair.Picture:=frmImagens.btnSair.Picture;
  btnConfirmar.Picture:=frmImagens.btnConfirmar.Picture;

  vpsNome:=EmptyStr;
  vpiID  :=0;
  edtPesquisa.Text:=EmptyStr;
  edtPesquisa.SetFocus;
  edtPesquisa.SelectAll;

end;
//==============================================================================
procedure TfrmSelecaoEstados.mtdSelecionar;
begin
  if (dm.dsEstado.DataSet.Active=True) and (dm.dsEstado.DataSet.IsEmpty=False) then
  begin
    vpiID    :=dm.sql_CidadeEstadoID.Value;
    vpsNome  :=dm.sql_CidadeEstadoNome.AsString+' - '+dm.sql_CidadeEstadoCodigo.AsString;
    frmSelecaoEstados.Close;
  end
  else
  begin
    vpiID:=0;
    vpsNome:=EmptyStr;
  end;
end;
//==============================================================================
procedure TfrmSelecaoEstados.mtdpesquisar;
var
  sPesquisa:string;
begin
  try
    sPesquisa:=Trim(edtPesquisa.Text);
    if sPesquisa<>EmptyStr then
    begin
       dm.sql_CidadeEstado.Close;
       dm.sql_CidadeEstado.Parameters.ParamByName('@Nome').Value:=sPesquisa;
       dm.sql_CidadeEstado.Open;
    end;
  except
      dm.mtdMensagem('Não foi possivel Acessar os Estados ');
  end;
end;
//==============================================================================
end.
