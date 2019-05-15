unit untArteReal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, ButtonGroup, Buttons;

type
  TfrmArteReal = class(TForm)
    MainMenu1: TMainMenu;
    Sair1: TMenuItem;
    mnuCadastros: TMenuItem;
    mnuRelatorios: TMenuItem;
    Sair: TMenuItem;
    mnuAssinantes: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel2: TPanel;
    BtnAssinante: TSpeedButton;
    btnSair: TSpeedButton;
    rodapelbl: TPanel;
    btnRelatorio: TSpeedButton;
    Panel3: TPanel;
    Image2: TImage;
    procedure SairClick(Sender: TObject);
    procedure mnuAssinantesClick(Sender: TObject);
    procedure mtdAssinantes;
    procedure mtdRelatorio;
    procedure FormShow(Sender: TObject);
    procedure BtnAssinanteClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArteReal: TfrmArteReal;

implementation

{$R *.dfm}

uses  untAssinantes,untfrmImagens,ufrmRelatorios;
//==============================================================================
procedure TfrmArteReal.BtnAssinanteClick(Sender: TObject);
begin
  mtdAssinantes;
end;
//==============================================================================
procedure TfrmArteReal.btnRelatorioClick(Sender: TObject);
begin
  mtdRelatorio;
end;
//==============================================================================
procedure TfrmArteReal.btnSairClick(Sender: TObject);
begin
  frmArteReal.Close;
  Application.Terminate;
end;
//==============================================================================
procedure TfrmArteReal.FormShow(Sender: TObject);
begin
  BtnAssinante.Glyph.Assign(frmImagens.btnAssinante.Picture);
  btnSair.Glyph.Assign(frmImagens.btnSair.Picture);
  btnRelatorio.Glyph.Assign(frmImagens.btnRelatorio.Picture);
end;
//==============================================================================
procedure TfrmArteReal.mnuAssinantesClick(Sender: TObject);
begin
  mtdAssinantes;
end;
//==============================================================================
procedure TfrmArteReal.mtdAssinantes;
begin
  try
    Application.CreateForm(TfrmAssinantes,frmAssinantes);
    frmAssinantes.Image1.Picture:=Image1.Picture;
    frmAssinantes.ShowModal;
  finally
    frmAssinantes.Destroy;
    frmAssinantes := Nil;
  end;
end;
//==============================================================================
procedure TfrmArteReal.SairClick(Sender: TObject);
begin
  application.Terminate;
end;
//==============================================================================
procedure TfrmArteReal.mtdRelatorio;
begin
  try
    Application.CreateForm(TfrmRelatorio,frmRelatorio);
    frmRelatorio.btnSair.Picture:=frmImagens.btnSair.Picture;
    frmRelatorio.btnRelatorios.picture.Assign(frmImagens.btnRelatorio.picture);
    frmRelatorio.ShowModal;
  finally
    frmRelatorio.Destroy;
    frmRelatorio := Nil;
  end;

end;
//==============================================================================
end.
