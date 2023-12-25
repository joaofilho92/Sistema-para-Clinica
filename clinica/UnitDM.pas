unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    ConnessioneDB: TFDConnection;
    tbPazienti: TFDTable;
    TbPrenotazione: TFDTable;
    DSPazienti: TDataSource;
    DSPrenotazione: TDataSource;
    tbPazientiid: TFDAutoIncField;
    tbPazientinome: TStringField;
    tbPazientitelefono: TStringField;
    tbPazientidata_registrazioni: TDateField;
    tbPazienticodice_fiscale: TStringField;
    TbPrenotazioneid: TFDAutoIncField;
    TbPrenotazioneid_paziente: TIntegerField;
    TbPrenotazionedata: TDateField;
    TbPrenotazioneorari: TStringField;
    TbPrenotazionespecialita: TStringField;
    TbPrenotazionemedico: TStringField;
    procedure tbPazientiAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.tbPazientiAfterInsert(DataSet: TDataSet);
begin
  tbPazientidata_registrazioni.Value := Date();
end;

end.
