program Clinica;

uses
  Vcl.Forms,
  UnitPrincipale in 'UnitPrincipale.pas' {FormPrincipale},
  UnitRegistro in 'UnitRegistro.pas' {FormRegistroPazienti},
  UnitRegistroPrenotazione in 'UnitRegistroPrenotazione.pas' {FormRegistroPrenotazione},
  UnitDM in 'UnitDM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipale, FormPrincipale);
  Application.CreateForm(TFormRegistroPazienti, FormRegistroPazienti);
  Application.CreateForm(TFormRegistroPrenotazione, FormRegistroPrenotazione);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
