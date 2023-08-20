unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, uFrmDataHora;

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    PgctrlPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtCaracteres: TEdit;
    btnExibirDataHora: TButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    Button1: TButton;
    rgpListasOpcoes: TRadioGroup;
    Button2: TButton;
    Label2: TLabel;
    lbxItensSelecionados: TListBox;
    Button3: TButton;
    Panel2: TPanel;
    Button4: TButton;
    Button5: TButton;
    Observação: TLabel;
    mmoObservacao: TMemo;
    Button6: TButton;
    Button7: TButton;
    Panel3: TPanel;
    Button8: TButton;
    procedure edtCaracteresEnter(Sender: TObject);
    procedure edtCaracteresExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btnExibirDataHoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnExibirDataHoraClick(Sender: TObject);
begin
    frmDataHora.ShowModal;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
    pgCtrlPrincipal.ActivePageIndex := 1;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
    if rgpListasOpcoes.ItemIndex >= 0 then
      begin
        lbxItensSelecionados.Items.Add
        (rgpListasOpcoes.Items[rgpListasOpcoes.ItemIndex]);
        rgpListasOpcoes.ItemIndex := -1;
      end
    else
      MessageDlg('Você não selecionou nenhum item', mtError, [mbOK], 0);
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
    lbxItensSelecionados.Items.Clear;
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
    pgCtrlPrincipal.ActivePageIndex := 0;
end;

procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin
    pgCtrlPrincipal.ActivePageIndex := 2;
end;

procedure TfrmPrincipal.Button6Click(Sender: TObject);
begin
    mmoObservacao.SelectAll;
    mmoObservacao.SetFocus;
end;

procedure TfrmPrincipal.Button7Click(Sender: TObject);
begin
    mmoObservacao.Lines.Clear;
end;

procedure TfrmPrincipal.Button8Click(Sender: TObject);
begin
    pgCtrlPrincipal.ActivePageIndex := 1;
end;

procedure TfrmPrincipal.edtCaracteresEnter(Sender: TObject);
begin
    EdtCaracteres.Color := $00B9FFFF;
end;

procedure TfrmPrincipal.edtCaracteresExit(Sender: TObject);
begin
    if EdtCaracteres.Text = '' then
    begin
      MessageDlg('Voce nao digitou nenhum conteudo', mtInformation, [mbOK], 0);
      EdtCaracteres.SetFocus;
    end
    else
      if Length(EdtCaracteres.Text) <> 4 then
      begin
        MessageDlg('Voce nao digitou 4 caracteres', mtError, [mbOK], 0);
        EdtCaracteres.SetFocus;
        EdtCaracteres.SelectAll;
      end
      else
        EdtCaracteres.Color := clWindow;
end;

end.
