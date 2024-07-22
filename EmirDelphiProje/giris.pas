unit giris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses vatandas;

procedure TForm1.Button1Click(Sender: TObject);
begin
   if (Edit1.Text = '4174') and (Edit2.Text ='1234') then
    begin
      ShowMessage ('Giri� Ba�ar�l�' + '4174 Adl� Kullan�c� HO� GELD�N�Z!');
      Form2.Show;
    end
    else if (Edit1.Text<>'4174')  then
    begin
        ShowMessage ('Kullan�c� Ad� Yanl�� Girilmi�tir!');
    end
    else if (Edit2.Text<>'1234')  then
    begin
        ShowMessage ('�ifre Yanl�� Girilmi�tir!');
    end
    else
    begin
        ShowMessage ('Kullan�c� Ad� ve �ifre Yanl�� Girilmi�tir!');
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     ShowMessage('Kullan�c� Ad�: 4174 �ifre: 1234');
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
    if CheckBox1.Checked = True then
   begin
      Edit2.PasswordChar := #0;
   end
   else
   begin
       Edit2.PasswordChar := '*';
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Form1.Position    := poScreenCenter;
   Form1.BorderStyle := bsToolWindow;

   Edit1.MaxLength   :=20;
   Edit1.MaxLength   :=11;

   Edit1.Hint        := 'L�tfen Kullan�c� Ad�n�z� Giriniz!';
   Edit1.ShowHint    := True;
   Edit2.Hint        := 'L�tfen �ifrenizi Giriniz!';
   Edit2.ShowHint    := True;

   Edit2.PasswordChar:= '*';
end;

end.
