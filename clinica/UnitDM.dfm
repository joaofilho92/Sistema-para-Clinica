object DataModule1: TDataModule1
  Height = 234
  Width = 534
  object ConnessioneDB: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 104
    Top = 40
  end
  object tbPazienti: TFDTable
    Active = True
    AfterInsert = tbPazientiAfterInsert
    IndexFieldNames = 'id'
    Connection = ConnessioneDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.paziente'
    Left = 200
    Top = 40
    object tbPazientiid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbPazientinome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPazientitelefono: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefono'
      Origin = 'telefono'
      Size = 16
    end
    object tbPazientidata_registrazioni: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_registrazioni'
      Origin = 'data_registrazioni'
      EditMask = '!99/99/00;1;_'
    end
    object tbPazienticodice_fiscale: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codice_fiscale'
      Origin = 'codice_fiscale'
      Size = 16
    end
  end
  object TbPrenotazione: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = ConnessioneDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.prenotazione'
    Left = 288
    Top = 40
    object TbPrenotazioneid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object TbPrenotazioneid_paziente: TIntegerField
      FieldName = 'id_paziente'
      Origin = 'id_paziente'
      Required = True
    end
    object TbPrenotazionedata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object TbPrenotazioneorari: TStringField
      FieldName = 'orari'
      Origin = 'orari'
      Required = True
      EditMask = '!90:00;1;_'
      Size = 8
    end
    object TbPrenotazionespecialita: TStringField
      FieldName = 'specialita'
      Origin = 'specialita'
      Required = True
      Size = 25
    end
    object TbPrenotazionemedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
  end
  object DSPazienti: TDataSource
    DataSet = tbPazienti
    Left = 200
    Top = 128
  end
  object DSPrenotazione: TDataSource
    DataSet = TbPrenotazione
    Left = 288
    Top = 128
  end
end
