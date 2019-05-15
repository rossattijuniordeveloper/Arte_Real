unit uDm;

interface

uses
  SysUtils,
  Classes,
  DBXMSSQL,
  DB,
  SqlExpr,
  Provider,
  ADODB,
  stdctrls,
  Dialogs,
  forms
//  TForm
  ;

{
uses
  SysUtils
, Classes
, DB
, ADODB
, uCnx
, dialogs
, ExtCtrls
, Windows
, Forms

}

type
  TDm = class(TDataModule)
    sql_Consulta_ArteReal: TADOStoredProc;
    dados: TADOConnection;
    sql_Obreiros: TADOStoredProc;
    sql_ObreirosID: TAutoIncField;
    sql_ObreirosNome: TStringField;
    sql_ObreirosCodigo: TIntegerField;
    sql_ObreirosAtivo: TStringField;
    sql_Lojas: TADOStoredProc;
    sql_LojasID: TAutoIncField;
    sql_LojasCodigo: TIntegerField;
    sql_LojasNome: TStringField;
    sql_LojasAtivo: TStringField;
    sql_Cidade: TADOStoredProc;
    sql_CidadeID: TAutoIncField;
    sql_CidadeCodigo: TAutoIncField;
    sql_CidadeNome: TStringField;
    sql_CidadeAtivo: TStringField;
    sql_CidadeEstado: TADOStoredProc;
    dsEstado: TDataSource;
    sql_CidadeEstadoID: TAutoIncField;
    sql_CidadeEstadoCodigo: TStringField;
    sql_CidadeEstadoNome: TStringField;
    sql_CidadeEstadoAtivo: TStringField;
    sql_ObreirosCidadeNome: TStringField;
    sql_ObreirosIDCidade: TAutoIncField;
    sql_ObreirosLojaNome: TStringField;
    sql_CidadeIDCidadeEstado: TIntegerField;
    sql_CidadeEstadoUF: TStringField;
    sql_Consulta_ArteRealIDAssinante: TAutoIncField;
    sql_Consulta_ArteRealAssinanteNome: TStringField;
    sql_Consulta_ArteRealIDPessoa: TIntegerField;
    sql_Consulta_ArteRealIDLoja: TIntegerField;
    sql_Consulta_ArteRealNomeLoja: TStringField;
    sql_Consulta_ArteRealDataNascimentoTxt: TStringField;
    sql_Consulta_ArteRealEndereco: TStringField;
    sql_Consulta_ArteRealBairro: TStringField;
    sql_Consulta_ArteRealCidadeNome: TStringField;
    sql_Consulta_ArteRealCidadeEstadoNome: TStringField;
    sql_Consulta_ArteRealIDCidade: TIntegerField;
    sql_Consulta_ArteRealCep: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtdMensagem(asMensagem:string);
    function mtdConectar:boolean;
    procedure mtdEscolher(aDs:TDataSource;abAcao:Boolean;asTitulo:string;aEdtCodigo:TEdit;aEdtNome:TEdit;abPrimeiraColuna:Boolean);

  private
    { Private declarations }
  public
    { Public declarations }

    { variaveis globais }
    vgsmercado:string;
    vgsLojaEmpresaCodigo:string;
    vgsLojaEmpresaNome:string;
    vgsEmpresaMatrizCodigo:string;
    vgsEmpresaMatrizNome:string;
    vgbFilosofica:Boolean;
  end;

var
  Dm: TDm;
  function TrocaVirgula(sValor:string):string;
  function IsNumVal(StrVal: String): boolean;

implementation

{$R *.dfm}

uses untfrmmensagem,uSelecaoFrm;
//=============================================================================
procedure TDm.DataModuleCreate(Sender: TObject);
begin
//  mtdConectar;
end;
//=============================================================================
procedure tdm.mtdMensagem(asMensagem: string);
begin
    frmMensagem.memMensagem.Lines.Clear;
    asMensagem:=trim(asMensagem);
    if asMensagem<>EmptyStr then
    begin
      frmMensagem.memMensagem.Lines.Add(asMensagem);
      frmMensagem.ShowModal;
    end;
end;
//=============================================================================
function tdm.mtdConectar:Boolean;
begin
try
  dados.Connected:=false;
  dados.Connected:=True;
  result:=True;
except
  mtdMensagem('Não foi possivel Acessar o Banco de dados (dados)!');
  result:=false;
end;
end;
//=============================================================================
procedure TDm.mtdEscolher(aDs:TDataSource;abAcao:Boolean;asTitulo:string;aEdtCodigo:TEdit;aEdtNome:TEdit;abPrimeiraColuna:Boolean);
var
  vliContador:integer;
begin
  try
    aEdtCodigo.Text:='0';
    aEdtNome.Text  :=EmptyStr;

    if (aDs.DataSet.isEmpty) or (not aDs.DataSet.Active) then
    begin
      try
        if dm.mtdConectar then
            ads.DataSet.Open;
      except
      end;
    end;
    if (aDs.DataSet.isEmpty) or (not aDs.DataSet.Active) then
      begin
        ShowMessage('Não há Informações de '+asTitulo);
        exit;
      end
    else
      begin
         Application.CreateForm(TSelecaoFrm,SelecaoFrm);
//        SelecaoFrm.vpbApagaPrimeiraColuna:=abPrimeiraColuna;
        SelecaoFrm.Acao:=abAcao;
        SelecaoFrm.Titulo:=asTitulo;
        SelecaoFrm.ds.DataSet:=aDs.DataSet;
        SelecaoFrm.ShowModal;
        if SelecaoFrm.TSel.count>0 then
          begin
            if abAcao or (SelecaoFrm.TSel.count=1) then
              begin
                aEdtCodigo.Text:=trim(SelecaoFrm.TSel.Items[0]);
                aEdtNome.Text  :=aDs.DataSet.FieldValues['Nome'];
              end
            else
              begin
                aEdtCodigo.Text:=EmptyStr;
                for vliContador:=0 to SelecaoFrm.TSel.Items.Count-1 do
                  begin
                    aEdtCodigo.Text:=aEdtCodigo.Text+'|'+SelecaoFrm.TSel.Items[vliContador];
                  end;
              //end-if
                aEdtCodigo.Text:=aEdtCodigo.Text+'|';
                aEdtNome.Text  :='Vários Selecionados';
              end;
          //end-if
          end;
      //end-if
      end;
  except
  end;
end;
//==============================================================================
//==============================================================================
{Esta Funcao pega a virgula de um valor em forma de string e coloca um ponto no local}
{Sua utilidade 'e para instrucoes sql  do tipo insert into e update }
function TrocaVirgula(sValor:string):string;
var
   i: Integer;
begin
  If (sValor = '') or (sValor=EmptyStr) or Not (IsNumVal(sValor)) Then
    sValor := '0';
  i := 0;
  While i <= Length(sValor) Do
  begin
    If sValor[i] = ',' then
    begin
      Delete( sValor,i,1 );
      Insert('.',sValor,i);
      Dec( i );
    end;
    {end-if}
    Inc( i );
  end;
  {end-while}
  Result := sValor;
end;
//==============================================================================
function IsNumVal(StrVal: String): boolean;
// Returna True se o valor string for numerico
var
  I, ContDecimal: Integer;
  InvalChar: Boolean;
begin
  InvalChar := False;
  ContDecimal := 0;
  For I := 1 To Length(StrVal) Do
  begin
    If (StrVal [I] < '0') or (StrVal [I] > '9') Then
    begin
      If (StrVal [I] = '.') or (StrVal [I] = ',') Then
        ContDecimal := ContDecimal + 1
      Else
      begin
        If I = 1 Then
        begin
          If StrVal [I] <> '-' Then
            InvalChar := True;
        end
        else
          InvalChar := True;
      end;
    end;
  end; //for
  If (InvalChar) or (ContDecimal > 1) Then
      IsNumVal := False
  Else
      IsNumVal := True;
end;
//==============================================================================

end.
