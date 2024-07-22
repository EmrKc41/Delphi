program girispr;

uses
  Vcl.Forms,
  giris in 'giris.pas' {Form1},
  vatandas in 'vatandas.pas' {Form2},
  sonuc in 'sonuc.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
