unit UnitPrincipale;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFormPrincipale = class(TForm)
    MainMenu1: TMainMenu;
    System1: TMenuItem;
    Exit1: TMenuItem;
    Registrazioni1: TMenuItem;
    Pazienti1: TMenuItem;
    Orari1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Exit1Click(Sender: TObject);
    procedure Pazienti1Click(Sender: TObject);
    procedure Orari1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipale: TFormPrincipale;

implementation

{$R *.dfm}

uses UnitRegistro, UnitRegistroPrenotazione;

procedure TFormPrincipale.BitBtn1Click(Sender: TObject);
begin
 FormRegistroPrenotazione.ShowModal;
end;

procedure TFormPrincipale.BitBtn2Click(Sender: TObject);
begin
 formRegistroPazienti.ShowModal;
end;

procedure TFormPrincipale.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipale.Orari1Click(Sender: TObject);
begin
 FormRegistroPrenotazione.ShowModal;
end;

procedure TFormPrincipale.Pazienti1Click(Sender: TObject);
begin
  FormRegistroPazienti.ShowModal;
end;

end.
