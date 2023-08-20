program App_Elementos_Visuais;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmDataHora in 'uFrmDataHora.pas' {frmDataHora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDataHora, frmDataHora);
  Application.Run;
end.
