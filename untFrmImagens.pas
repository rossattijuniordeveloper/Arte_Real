unit untFrmImagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TfrmImagens = class(TForm)
    btnFiltro: TImage;
    btnAssinante: TImage;
    btnConfirmar: TImage;
    btnSair: TImage;
    btnTelefone: TImage;
    btnAviso: TImage;
    btnIncluir: TImage;
    btnAlterar: TImage;
    btnSelecao: TImage;
    btnGravar: TImage;
    btnAnuncio: TImage;
    btnAssinatura: TImage;
    btnRelatorio: TImage;
    ArteReal: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImagens: TfrmImagens;

implementation

{$R *.dfm}

end.
