unit uFrmDataHora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmDataHora = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    lblDataHora: TLabel;
    Image1: TImage;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataHora: TfrmDataHora;

implementation

{$R *.dfm}

procedure TfrmDataHora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Timer1.Enabled := False;
end;

procedure TfrmDataHora.FormShow(Sender: TObject);
begin
    Timer1.Enabled := True;
    LblDataHora.Caption := FormatDateTime ('dd/mm/yyyy hh:mm:ss', now);
end;

procedure TfrmDataHora.Timer1Timer(Sender: TObject);
begin
    LblDataHora.Caption := FormatDateTime ('dd/mm/yyyy hh:mm:ss', now);
end;

end.
