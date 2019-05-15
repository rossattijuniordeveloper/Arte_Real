unit uFrmRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB;

type
  TfrmRelatorio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnSair: TImage;
    btnRelatorios: TImage;
    sqlConsulta: TADOStoredProc;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}

uses uDM;
//==============================================================================
procedure TfrmRelatorio.btnSairClick(Sender: TObject);
begin
  sqlConsulta.close;
  frmRelatorio.Close
end;
//==============================================================================

end.
