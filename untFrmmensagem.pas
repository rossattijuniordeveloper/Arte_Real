unit untFrmmensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TfrmMensagem = class(TForm)
    Panel1: TPanel;
    memMensagem: TMemo;
    Panel2: TPanel;
    btnSair: TImage;
    btnAviso: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}

uses untfrmimagens;
//==============================================================================

procedure TfrmMensagem.btnSairClick(Sender: TObject);
begin
  frmMensagem.Close;
end;
//==============================================================================
procedure TfrmMensagem.FormCreate(Sender: TObject);
begin
  btnAviso.Picture:=frmimagens.btnAviso.Picture;
  btnsair.Picture:=frmImagens.btnSair.Picture;
end;
//==============================================================================
procedure TfrmMensagem.FormShow(Sender: TObject);
begin
  frmMensagem.Caption:='ATENÇÃO USUÁRIO!';
end;
//==============================================================================

end.
