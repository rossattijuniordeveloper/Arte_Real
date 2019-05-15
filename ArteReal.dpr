program ArteReal;

uses
  Forms,
  untArteReal in 'untArteReal.pas' {frmArteReal},
  untAssinantes in 'untAssinantes.pas' {frmAssinantes},
  uDm in 'uDm.pas' {Dm: TDataModule},
  untFrmImagens in 'untFrmImagens.pas' {frmImagens},
  untFrmmensagem in 'untFrmmensagem.pas' {frmMensagem},
  untAssinantesInclusao in 'untAssinantesInclusao.pas' {frmAssinantesInclusao},
  untFrmSelecaoObreiros in 'untFrmSelecaoObreiros.pas' {frmSelecaoObreiros},
  untFrmSelecaoLojas in 'untFrmSelecaoLojas.pas' {frmSelecaoLojas},
  untFrmSelecaoCidades in 'untFrmSelecaoCidades.pas' {frmSelecaoCidades},
  untFrmSelecaoEstados in 'untFrmSelecaoEstados.pas' {frmSelecaoEstados},
  untFrmAssinaturaAlteracao in 'untFrmAssinaturaAlteracao.pas' {FrmAssinaturaAlteracao},
  untAssinantesAlteracao in 'untAssinantesAlteracao.pas' {FrmAssinantesAlteracao},
  untfrmAssinaturaGrid in 'untfrmAssinaturaGrid.pas' {frmAssinaturaGrid},
  untFrmAssinaturaInclusao in 'untFrmAssinaturaInclusao.pas' {FrmAssinaturaInclusao},
  untFrmAnuncioGrid in 'untFrmAnuncioGrid.pas' {frmAnuncioGrid},
  untFrmAnuncioInclusao in 'untFrmAnuncioInclusao.pas' {FrmAnuncioInclusao},
  untFrmAnuncioAlteracao in 'untFrmAnuncioAlteracao.pas' {FrmAnuncioAlteracao},
  untFrmAssinantesTelefoneGrid in 'untFrmAssinantesTelefoneGrid.pas' {FrmAssinanteTelefoneGrid},
  untFrmLogin in '..\Ferramentas\Login\untFrmLogin.pas' {frmLogin},
  uCriptografia in '..\Ferramentas\Bibliotecas\uCriptografia.pas',
  uSelecaoFrm in '..\Ferramentas\SelecaoFrm\uSelecaoFrm.pas' {SelecaoFrm},
  uSoNumero in '..\Ferramentas\Bibliotecas\uSoNumero.pas',
  uFrmRelatorios in 'uFrmRelatorios.pas' {frmRelatorio};

{$R *.res}
var
 vpiSistemaCodigo:integer;
 vpiIDUsuario    :integer;
 vpsUsuarioNome  :string;
 vpsUsuarioNomeCompleto:string;
//=============================================================================
begin
  Application.Initialize;
  Application.Title := 'MGP';
  vpiSistemaCodigo:=1; // MGP
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmArteReal, frmArteReal);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TfrmImagens, frmImagens);
  Application.CreateForm(TfrmMensagem, frmMensagem);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TSelecaoFrm, SelecaoFrm);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  FrmLogin.vpiSistemaCodigo:=vpiSistemaCodigo;
  FrmLogin.ShowModal;
  vpiIDUsuario  :=FrmLogin.vpiIDUsuario;
  vpsUsuarioNome:=FrmLogin.UsuarioEdt.Text;
  vpsUsuarioNomeCompleto:=FrmLogin.UsuarioEdt.Text;
  if vpiIDUsuario<>0 then
  begin
   frmArteReal.rodapeLbl.Caption:='Usuário Logado: '+vpsUsuarioNome+' -  Empresa: '+dm.vgsLojaEmpresaNome;
   Application.Run;
  end
  else
    Application.Terminate;
//end-if
//=============================================================================

end.
