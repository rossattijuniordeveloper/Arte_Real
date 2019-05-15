unit untAssinantesInclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, ExtCtrls, ComCtrls, StdCtrls, DBClient, SimpleDS,
  ADODB;

type
  TfrmAssinantesInclusao = class(TForm)
    pg1: TPageControl;
    Tab01: TTabSheet;
    Panel1: TPanel;
    btnSair: TImage;
    Label1: TLabel;
    edtNomePessoa: TEdit;
    btnSelecao: TImage;
    edtIDPessoa: TEdit;
    Label2: TLabel;
    edtLojaNome: TEdit;
    edtLojaID: TEdit;
    Label3: TLabel;
    edtEndereco: TEdit;
    Label4: TLabel;
    edtBairro: TEdit;
    Label5: TLabel;
    edtCep: TEdit;
    Label6: TLabel;
    edtCidadeNome: TEdit;
    btnSelecaoCidade: TImage;
    edtCidadeID: TEdit;
    btnGravar: TImage;
    chkAssinatura: TCheckBox;
    pnlAssinatura: TPanel;
    edtAssinaturaContrato: TEdit;
    Label7: TLabel;
    edtAssinaturaDataInicio: TDateTimePicker;
    Label8: TLabel;
    Label9: TLabel;
    edtAssinaturraDataFim: TDateTimePicker;
    chkAnuncio: TCheckBox;
    pnlAnuncio: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtAnuncioNrContrato: TEdit;
    edtAnuncioDataInicio: TDateTimePicker;
    edtAnuncioDataFim: TDateTimePicker;
    edtIDAssinante: TEdit;
    sqlAssinante: TADOStoredProc;
    sqlAssinanteID: TIntegerField;
    sqlAnuncio: TADOStoredProc;
    sqlAssinatura: TADOStoredProc;
    sqlAnuncioID: TIntegerField;
    sqlAssinaturaID: TIntegerField;
    sqlEndereco: TADOStoredProc;
    sqlEnderecoID: TIntegerField;
    sqlPessoa: TADOStoredProc;
    sqlPessoaIDPessoa: TAutoIncField;
    sqlPessoaID: TAutoIncField;
    sqlPessoaNome: TStringField;
    sqlPessoaCPFCNPJ: TStringField;
    sqlPessoaSexo: TStringField;
    sqlPessoaRGIE: TStringField;
    sqlPessoaNatureza: TStringField;
    sqlPessoaEnderecoIDCidade: TIntegerField;
    sqlPessoaEndereco: TStringField;
    sqlPessoaEnderecoBairro: TStringField;
    sqlPessoaEnderecoCEP: TStringField;
    sqlPessoaIDPessoaTipo: TIntegerField;
    sqlPessoaIDPessoaGrauTipo: TIntegerField;
    sqlPessoaEmail: TStringField;
    sqlPessoaNascimentoData: TDateTimeField;
    sqlPessoaIDLoja: TIntegerField;
    sqlPessoaAtivo: TStringField;
    sqlPessoaCodigo: TIntegerField;
    sqlPessoaDataCadastro: TDateTimeField;
    sqlPessoaCidadeNome: TStringField;
    sqlPessoaPessoaTipoNome: TStringField;
    sqlPessoaPessoaGrauTipoNome: TStringField;
    sqlPessoaLojaNome: TStringField;
    sqlPessoaLojaFilosoficaNome: TStringField;
    sqlPessoaAtivoNome: TStringField;
    sqlPessoaLojaCodigoAntigo: TIntegerField;
    sqlPessoaLojaCodigo: TIntegerField;
    sqlPessoaCodigoFilosofico: TIntegerField;
    sqlPessoaIDLojaFilosofica: TIntegerField;
    Label13: TLabel;
    edtNascimento: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSelecaoClick(Sender: TObject);
    procedure edtNomePessoaChange(Sender: TObject);
    procedure btnSelecaoCidadeClick(Sender: TObject);
    procedure mtdGravar;
    function  mtdValidar:Boolean;
    procedure mtdSair;
    procedure chkAssinaturaClick(Sender: TObject);
    procedure chkAnuncioClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAssinantesInclusao: TfrmAssinantesInclusao;

implementation

{$R *.dfm}

uses udm, untFrmImagens,untFrmSelecaoObreiros,untfrmSelecaoCidades;
//=============================================================================
procedure TfrmAssinantesInclusao.btnGravarClick(Sender: TObject);
begin
  if mtdValidar=True then
  begin
    mtdGravar;
  end;
end;
//=============================================================================
procedure TfrmAssinantesInclusao.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//=============================================================================
procedure TfrmAssinantesInclusao.btnSelecaoCidadeClick(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmSelecaoCidades,frmSelecaoCidades);
    frmSelecaoCidades.ShowModal;
    if frmSelecaoCidades.vpiID<>0 then
    begin
      edtCidadeID.Text:=IntToStr(frmSelecaoCidades.vpiID);
      if frmSelecaoCidades.vpsNome<>EmptyStr then
      begin
        edtNomePessoa.Text:=frmSelecaoCidades.vpsNome;
      end;
      edtCidadeNome.Text:=frmSelecaoCidades.vpsNome;
    end;
  except
    edtIDPessoa.Text:='0';
    edtNomePessoa.Text:=EmptyStr;
    dm.mtdMensagem('Não foi possivel disponibilizar a pesquisa de Cidades');
  end;
end;
//=============================================================================
procedure TfrmAssinantesInclusao.btnSelecaoClick(Sender: TObject);
begin
  try
    DM.sql_Obreiros.Close;
    Application.CreateForm(TfrmSelecaoObreiros,frmSelecaoObreiros);
    frmSelecaoObreiros.ShowModal;
    if frmSelecaoObreiros.vpsNome<>EmptyStr then
    begin
      edtNomePessoa.Text:=frmSelecaoObreiros.vpsNome;
    end;
    if frmSelecaoObreiros.vpsIDPessoa<>'0' then
    begin
       edtIDPessoa.Text:=frmSelecaoObreiros.vpsIDPessoa;
       sqlPessoa.Close;
       sqlPessoa.Parameters.ParamByName('@IDEmpresa').Value:=11; // GLEMT
       sqlPessoa.Parameters.ParamByName('@Ativo').Value:='0';
       sqlPessoa.Parameters.ParamByName('@Nome').Value:=Null;
       sqlPessoa.Parameters.ParamByName('@IDPessoa').Value:=frmSelecaoObreiros.vpsIDPessoa;
       sqlPessoa.Active:=True;
      if (sqlPessoa.Active=True) then
      begin
        edtEndereco.Text:=sqlPessoaEndereco.Value;
        edtBairro.Text  := sqlPessoaEnderecoBairro.Value;
        edtCep.Text     := sqlPessoaEnderecoCEP.Value;
        edtLojaID.Text  :=sqlPessoaIDLoja.AsString;
        edtLojaNome.Text:= sqlPessoaLojaNome.Value;
        edtCidadeID.Text:=sqlPessoaEnderecoIDCidade.AsString;
        edtCidadeNome.Text:=sqlPessoaCidadeNome.Value;
        edtNascimento.Date:=sqlPessoaNascimentoData.Value;
      end;
    end;
  except
    edtIDPessoa.Text:='0';
    edtNomePessoa.Text:=EmptyStr;
    edtCidadeID.Text:='0';
    edtCidadeNome.Text:=EmptyStr;
    edtEndereco.Text:=EmptyStr;
    edtBairro.Text  := EmptyStr;
    edtCep.Text     := EmptyStr;

    dm.mtdMensagem('Não foi possivel disponibilizar a pesquisa de Obreiros');
  end;
end;
//=============================================================================
procedure TfrmAssinantesInclusao.chkAnuncioClick(Sender: TObject);
begin
  if chkAnuncio.Checked then
  begin
    pnlAnuncio.Enabled:=True;
    edtAnuncioNrContrato.SetFocus;
  end
  else
  begin
    pnlAnuncio.Enabled:=False;
    edtCidadeNome.SetFocus;
  end;

end;
//=============================================================================
procedure TfrmAssinantesInclusao.chkAssinaturaClick(Sender: TObject);
begin
  if chkAssinatura.Checked then
  begin
    pnlAssinatura.Enabled:=True;
    edtAssinaturaContrato.SetFocus;
  end
  else
  begin
    pnlAssinatura.Enabled:=False;
    edtCidadeNome.SetFocus;
  end;
end;
//=============================================================================
procedure TfrmAssinantesInclusao.edtNomePessoaChange(Sender: TObject);
begin
  edtLojaNome.Text:=EmptyStr;
  edtLojaID.Text:='0';
  edtIDPessoa.Text:='0';
end;
//=============================================================================
procedure TfrmAssinantesInclusao.FormCreate(Sender: TObject);
begin
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
  btnSelecao.Picture.Assign(frmImagens.btnSelecao.Picture);
  btnGravar.Picture.Assign(frmImagens.btnGravar.Picture);
end;
//=============================================================================
procedure TfrmAssinantesInclusao.FormShow(Sender: TObject);
begin
 edtIDPessoa.Text:='0';
 edtLojaID.Text:='0';
 edtCidadeID.Text:='0';
 edtNomePessoa.Text:=EmptyStr;
 edtEndereco.Text:=EmptyStr;
 edtBairro.Text:=EmptyStr;
 edtCep.Text:=EmptyStr;
 edtCidadeNome.Text:=EmptyStr;
 edtAssinaturaContrato.Text:='0';
 edtAssinaturaDataInicio.Date:=now;
 edtAssinaturraDataFim.Date:=(now+30);
 edtAnuncioNrContrato.Text:='0';
 edtAnuncioDataInicio.Date:=Now;
 edtAnuncioDataFim.Date:=(now + 30);
 edtNascimento.Date:=0;
end;
//=============================================================================
procedure TfrmAssinantesInclusao.mtdGravar;
var
  vliIDCidade:integer;
  vliIDCidadeEstado:integer;
begin
  if messageDlg('O Usuário confirma a gravação dos Dados ?',mtConfirmation,[mbyes,mbNo],0)=mrYes then
  begin
    try

    ///////////////////////////////////////////////////////////////////////////
    ///  LANÇANDOS OS DADOS DOS ASSINANTES
    //////////////////////////////////////////////////////////////////////////

        sqlAssinante.Parameters.ParamByName('@Nome').Value    :=edtNomePessoa.Text;
        sqlAssinante.Parameters.ParamByName('@NomeLoja').Value:=edtLojaNome.Text;
        sqlAssinante.Parameters.ParamByName('@DataNascimento').Value:=edtNascimento.Date;
        if edtIDPessoa.Text<>'0' then
        begin
            sqlAssinante.Parameters.ParamByName('@IDPessoa').Value:=edtIDPessoa.Text;
        end;
        if edtLojaID.Text<>'0' then
        begin
          sqlAssinante.Parameters.ParamByName('@IDLoja').Value:=edtLojaID.Text;
        end;
        sqlAssinante.Active:=True;
        edtIDAssinante.Text:=sqlAssinanteID.AsString;
    ///////////////////////////////////////////////////////////////////////////
    ///  LANÇANDOS OS DADOS DO ENDEREÇO
    //////////////////////////////////////////////////////////////////////////
        sqlEndereco.Close;
        sqlEndereco.Parameters.ParamByName('@IDAssinante').Value:=sqlAssinanteID.Value;
        sqlEndereco.Parameters.ParamByName('@Endereco').Value   :=edtEndereco.Text;
        sqlEndereco.Parameters.ParamByName('@Bairro').Value     :=edtBairro.Text;
        sqlEndereco.Parameters.ParamByName('@Cep').Value        :=edtCep.Text;
        if (edtCidadeID.Text<>'0') and (Trim(edtCidadeID.Text)<>EmptyStr) then
        begin
          sqlEndereco.Parameters.ParamByName('@IDCidade').Value   := StrToInt(edtCidadeID.Text);
        end;
        sqlEndereco.Parameters.ParamByName('@IDCidadeEstado').Value   := Null;
        sqlEndereco.Parameters.ParamByName('@CidadeNome').Value   := edtCidadeNome.Text;
        sqlEndereco.Parameters.ParamByName('@CidadeEstadoNome').Value   := Null;
        sqlEndereco.Parameters.ParamByName('@Ativo').Value :=0;

        if edtCidadeID.Text<>'0' then
        begin
          vliIDCidade:=StrToInt(edtCidadeID.Text);
          sqlEndereco.Parameters.ParamByName('@IDCidade').Value:=vliIDCidade;
        end;
        sqlEndereco.ExecProc;
//        sqlEndereco.Active:=True;

    ///////////////////////////////////////////////////////////////////////////
    ///  LANÇANDOS OS DADOS DAS ASSINATURAS
    //////////////////////////////////////////////////////////////////////////
        if chkAssinatura.Checked then
        begin

          sqlAssinatura.Parameters.ParamByName('@IDAssinante').Value:=edtIDAssinante.Text;
          sqlAssinatura.Parameters.ParamByName('@NumeroContrato').Value :=edtAssinaturaContrato.Text;
          sqlAssinatura.Parameters.ParamByName('@DataInicio').Value:=edtAssinaturaDataInicio.Date;
          sqlAssinatura.Parameters.ParamByName('@DataFim').Value   :=edtAssinaturraDataFim.Date;
          sqlAssinatura.ExecProc;
    ///////////////////////////////////////////////////////////////////////////
    ///  LANÇANDOS OS DADOS DOS ANUNCIOS
    //////////////////////////////////////////////////////////////////////////
          if chkAnuncio.Checked then
          begin
              sqlAnuncio.Parameters.ParamByName('@IDAssinante').Value:=edtIDAssinante.Text;
              sqlAnuncio.Parameters.ParamByName('@NumeroContrato').Value:=edtAnuncioNrContrato.Text;
              sqlAnuncio.Parameters.ParamByName('@DataInicio').Value:=edtAnuncioDataInicio.Date;
              sqlAnuncio.Parameters.ParamByName('@DataFim').Value   :=edtAnuncioDataFim.Date;
              sqlAnuncio.ExecProc;
          end;
        end;
        mtdSair;
    except
       dm.mtdMensagem('Não foi possivel incluir os dados do Assinante\Anunciante!');
    end;
  end;
///a
end;
//=============================================================================
function TfrmAssinantesInclusao.mtdValidar:Boolean;
var
  vlbValido:Boolean;
begin
  vlbValido:=False;

  if edtNomePessoa.Text<>EmptyStr then
  begin
    vlbValido:=True;
  end;

  if (chkAssinatura.Checked) or (chkAnuncio.Checked) then
  begin
      if chkAssinatura.Checked then
      begin
        if  ( Trim(edtAssinaturaContrato.Text)=EmptyStr) or (Trim(edtAssinaturaContrato.Text)='0' ) then
        begin
          vlbValido:=False;
          dm.mtdMensagem('ATENÇÃO!!'+#13+' Para Lançar uma assinatura é necessário informar o numero do Contrato da Assinatura');
        end
        else
        begin
          vlbValido:=True;
        end;
      end;
  end
  else
  begin
    vlbValido:=False;
    dm.mtdMensagem('ATENÇÃO!!'+#13+'Para lançar uma Inclusão é necessário informar uma Assinatura ou um Anuncio');
  end;
  result:=vlbValido;
end;
//=============================================================================
procedure TfrmAssinantesInclusao.mtdSair;
begin
  sqlAssinatura.Close;
  sqlAssinante.Close;
  sqlAnuncio.Close;
  frmAssinantesInclusao.Close;
end;
//=============================================================================

end.
