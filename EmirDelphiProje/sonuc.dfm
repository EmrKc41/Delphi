object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 572
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 721
    Height = 297
    Caption = 'SONU'#199
    Color = clSkyBlue
    Font.Charset = TURKISH_CHARSET
    Font.Color = clRed
    Font.Height = -17
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 152
      Top = 16
      Width = 370
      Height = 23
      Caption = 'TAMAMLAMASI GEREKEN S'#304'GORTALILIK S'#220'RES'#304
    end
    object Label2: TLabel
      Left = 336
      Top = 37
      Width = 23
      Height = 57
      Caption = '0'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clMaroon
      Font.Height = -42
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 216
      Top = 100
      Width = 236
      Height = 23
      Caption = 'TAMAMLAMASI GEREKEN YA'#350
    end
    object Label4: TLabel
      Left = 336
      Top = 129
      Width = 23
      Height = 57
      Caption = '0'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clMaroon
      Font.Height = -42
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 205
      Top = 187
      Width = 247
      Height = 23
      Caption = 'TAMAMLAMASI GEREKEN PR'#304'M'
    end
    object Label6: TLabel
      Left = 336
      Top = 208
      Width = 23
      Height = 57
      Caption = '0'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clMaroon
      Font.Height = -42
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 303
    Width = 721
    Height = 261
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 727
    Top = 539
    Width = 90
    Height = 25
    Caption = 'GER'#304' D'#214'N'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=veri.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 448
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 120
    Top = 448
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Bilgi'
    Left = 216
    Top = 448
  end
end
