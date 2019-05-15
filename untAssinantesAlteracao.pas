unit untAssinantesAlteracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB;

type
  TFrmAssinantesAlteracao = class(TForm)
    Label1: TLabel;
    edtNomePessoa: TEdit;
    Label2: TLabel;
    edtLojaNome: TEdit;
    Label3: TLabel;
    edtEndereco: TEdit;
    Label4: TLabel;
    edtBairro: TEdit;
    Label6: TLabel;
    edtCidadeNome: TEdit;
    Label5: TLabel;
    edtCep: TEdit;
    Label7: TLabel;
    btnSelecao: TImage;
    btnSelecaoCidade: TImage;
    Panel1: TPanel;
    btnSair: TImage;
    btnGravar: TImage;
    edtIDPessoa: TEdit;
    edtLojaID: TEdit;
    edtCidadeID: TEdit;
    edtIDAssinante: TEdit;
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
    sqlAssinante: TADOStoredProc;
    sqlEndereco: TADOStoredProc;
    sqlEnderecoID: TIntegerField;
    rdgAtivo: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnSelecaoClick(Sender: TObject);
    procedure btnSelecaoCidadeClick(Sender: TObject);
    function mtdValidar:boolean;
    procedure mtdGravar;
    procedure mtdSair;
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    vpiIDAssinante:integer;
  end;

var
  FrmAssinantesAlteracao: TFrmAssinantesAlteracao;

implementation

{$R *.dfm}
uses udm, untFrmImagens,untFrmSelecaoObreiros,untfrmSelecaoCidades;
//=============================================================================
procedure TFrmAssinantesAlteracao.btnGravarClick(Sender: TObject);
begin
  mtdGravar;
end;

procedure TFrmAssinantesAlteracao.btnSairClick(Sender: TObject);
begin
  mtdSair;
end;
//=============================================================================
procedure TFrmAssinantesAlteracao.btnSelecaoCidadeClick(Sender: TObject);
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
procedure TFrmAssinantesAlteracao.btnSelecaoClick(Sender: TObject);
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
procedure TFrmAssinantesAlteracao.FormCreate(Sender: TObject);
begin
  btnSair.Picture.Assign(frmImagens.btnSair.Picture);
  btnSelecao.Picture.Assign(frmImagens.btnSelecao.Picture);
  btnGravar.Picture.Assign(frmImagens.btnGravar.Picture);
end;
//=============================================================================
function TfrmAssinantesAlteracao.mtdValidar:Boolean;
var
  vlbValido:Boolean;
  vlsMensagem:string;
begin
  vlsMensagem:=EmptyStr;
  vlbValido:=True;
if rdgAtivo.ItemIndex=0 then
begin
  if edtNomePessoa.Text<>EmptyStr then
  begin
    vlbValido:=True;
  end;
  if trim(edtNomePessoa.Text)=EmptyStr then
  begin
      vlbValido:=false;
      vlsMensagem:=vlsMensagem+'ATENÇÃO!!'+#13+' É nessário informar o nome do assinante';
  end;
  if  ( Trim(edtLojaNome.Text)=EmptyStr) then
  begin
      vlbValido:=False;
      vlsMensagem:=vlsMensagem+'ATENÇÃO!!'+#13+' É necessário informar o Nome da Loja do assinante';
  end;
  if  Trim(edtEndereco.Text)=EmptyStr then
  begin
    vlbValido:=False;
    vlsMensagem:=vlsMensagem+'ATENÇÃO!!'+#13+' Informe o bairro do assinante';
  end;
  if Trim(edtCep.Text)=EmptyStr then
  begin
    vlbValido:=false;
    vlsMensagem:=vlsMensagem+'ATENÇÃO!!'+#13+'É mecessário Informar o CEP do assinante';
  end;
  if vlbValido=false then
  begin
    dm.mtdMensagem(vlsMensagem);
  end;
end;
  result:=vlbValido;
end;
//=============================================================================
procedure TFrmAssinantesAlteracao.mtdGravar;
begin
  if messageDlg('O Usuário confirma a gravação dos Dados ?',mtConfirmation,[mbyes,mbNo],0)=mrYes then
  begin
    try

    ///////////////////////////////////////////////////////////////////////////
    ///  LANÇANDOS OS DADOS DOS ASSINANTES
    //////////////////////////////////////////////////////////////////////////
    ///          sqlAssinante.Parameters.ParamByName('').Value:=
        sqlAssinante.Parameters.ParamByName('@IDAssinante').Value:=vpiIDAssinante;
        sqlAssinante.Parameters.ParamByName('@Nome').Value    :=edtNomePessoa.Text;
        sqlAssinante.Parameters.ParamByName('@NomeLoja').Value:=edtLojaNome.Text;
        sqlAssinante.Parameters.ParamByName('@ATIVO').Value:= rdgAtivo.ItemIndex;
        if (edtIDPessoa.Text<>'0') and (Trim(edtIDPessoa.Text)<>EmptyStr) then
        begin
            sqlAssinante.Parameters.ParamByName('@IDPessoa').Value:=edtIDPessoa.Text;
        end;
        if (edtLojaID.Text<>'0') and ( TRim(edtLojaID.Text)<>EmptyStr ) then
        begin
          sqlAssinante.Parameters.ParamByName('@IDLoja').Value:=edtLojaID.Text;
        end;
        sqlAssinante.ExecProc; //:=True;
    ///////////////////////////////////////////////////////////////////////////
    ///  LANÇANDOS OS DADOS Do ENDEREÇO
    //////////////////////////////////////////////////////////////////////////
        sqlEndereco.Close;
        sqlEndereco.Parameters.ParamByName('@IDAssinante').Value:=vpiIDAssinante;
        sqlEndereco.Parameters.ParamByName('@Endereco').Value   :=edtEndereco.Text;
        sqlEndereco.Parameters.ParamByName('@Bairro').Value     :=edtBairro.Text;
        sqlEndereco.Parameters.ParamByName('@Cep').Value        :=edtCep.Text;
        sqlEndereco.Parameters.ParamByName('@IDCidadeEstado').Value   := Null;
        sqlEndereco.Parameters.ParamByName('@CidadeNome').Value   := edtCidadeNome.Text;
        sqlEndereco.Parameters.ParamByName('@CidadeEstadoNome').Value   := Null;
        sqlEndereco.Parameters.ParamByName('@Ativo').Value :=rdgAtivo.ItemIndex;
        if (edtCidadeID.Text<>'0') and (Trim(edtCidadeID.Text)<>EmptyStr) then
        begin
          sqlEndereco.Parameters.ParamByName('@IDCidade').Value   := StrToInt(edtCidadeID.Text);
        end;
        sqlEndereco.ExecProc;

        mtdSair;
    except
       dm.mtdMensagem('Não foi possivel incluir os dados do Assinante\Anunciante!');
    end;
  end;
end;
//==============================================================================
procedure  TFrmAssinantesAlteracao.mtdSair;
begin
  sqlPessoa.Close;
  sqlAssinante.Close;
  sqlEndereco.Close;
  FrmAssinantesAlteracao.Close;
 end;
//==============================================================================
end.
