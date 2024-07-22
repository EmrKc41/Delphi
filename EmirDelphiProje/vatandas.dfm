object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'VATANDASBILGILERI'
  ClientHeight = 262
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = -8
    Top = 0
    Width = 409
    Height = 265
    Caption = 'VATANDA'#350' B'#304'LG'#304'LER'#304
    Color = clSkyBlue
    Font.Charset = TURKISH_CHARSET
    Font.Color = clRed
    Font.Height = -17
    Font.Name = 'Yu Gothic'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 97
      Top = 35
      Width = 97
      Height = 22
      Caption = 'AD-SOYAD:'
    end
    object Label2: TLabel
      Left = 83
      Top = 63
      Width = 111
      Height = 22
      Caption = 'DO'#286'UM YILI:'
    end
    object Label3: TLabel
      Left = 32
      Top = 104
      Width = 5
      Height = 22
    end
    object Label4: TLabel
      Left = 19
      Top = 91
      Width = 178
      Height = 22
      Caption = #304'LK '#304#350'E G'#304'R'#304#350' TAR'#304'H'#304':'
    end
    object Label5: TLabel
      Left = 67
      Top = 124
      Width = 130
      Height = 22
      Caption = 'MEVCUT PR'#304'M:'
    end
    object Label6: TLabel
      Left = 114
      Top = 152
      Width = 83
      Height = 22
      Caption = 'C'#304'NS'#304'YET:'
    end
    object Label7: TLabel
      Left = 247
      Top = 91
      Width = 9
      Height = 22
      Caption = '/'
    end
    object Label8: TLabel
      Left = 303
      Top = 91
      Width = 9
      Height = 22
      Caption = '/'
    end
    object Edit1: TEdit
      Left = 203
      Top = 124
      Width = 166
      Height = 25
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 262
      Top = 91
      Width = 35
      Height = 19
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 203
      Top = 91
      Width = 38
      Height = 22
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 318
      Top = 91
      Width = 51
      Height = 22
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 200
      Top = 32
      Width = 121
      Height = 22
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 200
      Top = 60
      Width = 121
      Height = 25
      TabOrder = 5
    end
    object RadioButton1: TRadioButton
      Left = 203
      Top = 155
      Width = 86
      Height = 17
      Caption = 'ERKEK'
      TabOrder = 6
    end
    object RadioButton2: TRadioButton
      Left = 295
      Top = 155
      Width = 82
      Height = 17
      Caption = 'KADIN'
      TabOrder = 7
    end
    object Button1: TButton
      Left = 203
      Top = 180
      Width = 174
      Height = 25
      Caption = 'HESAPLA'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 203
      Top = 202
      Width = 174
      Height = 25
      Caption = 'TEM'#304'ZLE'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 203
      Top = 225
      Width = 174
      Height = 25
      Caption = #199'IKI'#350
      TabOrder = 10
      OnClick = Button3Click
    end
  end
end
