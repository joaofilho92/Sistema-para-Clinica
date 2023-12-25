unit UnitRegistro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormRegistroPazienti = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    txtBusca: TEdit;
    Label7: TLabel;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegistroPazienti: TFormRegistroPazienti;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormRegistroPazienti.txtBuscaChange(Sender: TObject);
begin
  DataModule1.tbPazienti.Locate('nome',txtBusca.Text,[loPartialKey]);
end;

end.
