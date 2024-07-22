unit vatandas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  var
  Form2: TForm2;
  adsoyad : String;
  cins: String;
  dogumyili: AnsiString;


  i_i_g_t_Gun_STR: AnsiString;

  i_i_g_t_Ay_STR: AnsiString;

  i_i_g_t_Yil_STR: AnsiString;


  i_i_g_t_KARSILASTIRMA : Integer;


  i_i_g_t_Gun_INT : Integer;

  i_i_g_t_Ay_INT : Integer;

  i_i_g_t_Yil_INT : Integer;

  prim_gun_sayisi : Integer;
              i   : Integer;
  sig_suresi,yas_sarti: AnsiString;
              j  : Integer;
  max_prim, tamamlanan_prim : Integer;


implementation

{$R *.dfm}
uses sonuc;
procedure sartlar (sig_suresi : AnsiString; yas_sarti : AnsiString; i : Integer) ;
   begin
       Form3.Show;
       for i := 0 to StrToInt(sig_suresi) do
       begin
           Form3.Label2.Caption := IntToStr(i);
           Sleep (40);
           Application.ProcessMessages;
       end;
       for i := 0 to StrToInt(yas_sarti) do
       begin
           Form3.Label4.Caption := IntToStr(i);
           Sleep (40);
           Application.ProcessMessages;
       end;

   end;

function primsarti(max_prim : Integer; tamamlanan_prim : Integer): Integer;
begin
         if max_prim = tamamlanan_prim then
         begin
           Form3.Label6.Caption := 'Tamamland�';
         end
         else
         begin
           result := (max_prim-tamamlanan_prim);
           Form3.Label6.Caption := IntToStr(result);
         end;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
   //Di�erleri ��in
    while True do
    begin
        if (Edit1.Text = '') then
        begin
            ShowMessage ('Mevcut Prim G�n Say�n�z� Giriniz!');
            Exit;
        end;
        if (Edit2.Text = '') then
        begin
            ShowMessage ('�lk ��e Giri� Ay De�erini Giriniz!');
            Exit;
        end;
        if (Edit3.Text = '') then
        begin
            ShowMessage ('�lk ��e Giri� G�n De�erini Giriniz!!');
            Exit;
        end;
        if (Edit4.Text = '') then
        begin
            ShowMessage ('�lk ��e Giri� Y�l De�erini Giriniz!!');
            Exit;
        end;
        if (Edit5.Text = '') then
        begin
            ShowMessage ('Ad�nz� ve soyad�n�z�  Giriniz!!');
            Exit;
        end;
        if (Edit6.Text = '') then
        begin
            ShowMessage ('Do�um Y�l�nz� Giriniz!!');
            Exit;
        end;
        Break;

    end;

    adsoyad := Edit5.Text;
    dogumyili := Edit6.Text ;

    i_i_g_t_Gun_STR :=  Edit3.Text;
    i_i_g_t_Ay_STR  :=  Edit2.Text;
    i_i_g_t_Yil_STR :=  Edit4.Text;



    i_i_g_t_Gun_Int := StrToInt(Edit3.Text);
    i_i_g_t_Ay_Int :=   StrToInt(Edit2.Text);
    i_i_g_t_Yil_Int :=  StrToInt(Edit4.Text);

    prim_gun_sayisi  := StrToInt(Edit1.Text);
//Tarih i�in
    while True do
    begin
         if (i_i_g_t_Yil_Int < 1950) or (i_i_g_t_Yil_Int > 2050) then
         begin
            ShowMessage ('�lk ��e Giri� Tarihinin Y�l De�eri 1950 y�l�ndan Daha D���k Ve 2050 Y�l�ndan Daha Y�ksek Olamaz');
            Exit;
         end
         else if (prim_gun_sayisi < 0) or (prim_gun_sayisi > 7200) then  //Prim i�in
         begin
            ShowMessage ('4-A SSK S�GORTA KOLUNDAN EMEKL� OLAB�LMEK ���N SOSYAL G�VENL�K KURUMUNUN VATANDA�LARDAN �STED��� MAKS�MUM PR�M G�N SAYISI 7200 G�ND�R DOLAYISIYLA 7200 G�NDEN FAZLA DE�ER VER�LMES� GEREKL� DE��LD�R!');
            Exit;
         end
         else if (RadioButton1.Checked=False) and (RadioButton2.Checked=False) then //cinsiyet i�in
         begin
              ShowMessage ('L�tfen Cinsiyet Tercihini Yap�n�z!');
              Exit;
         end
         else if (i_i_g_t_Ay_INT <1) or (i_i_g_t_Ay_INT >12) then     //Ay i�in
         begin
              ShowMessage('�lk ��e Giri� Tarihinin Ay De�eri 1  De�erinden Daha D���k Ve 12 De�erinden Daha Y�ksek Olamaz!');
              Exit;
         end
         else if (i_i_g_t_Ay_STR <> '01' ) and (i_i_g_t_Ay_STR <> '02' ) and  (i_i_g_t_Ay_STR <> '03' ) and (i_i_g_t_Ay_STR <> '04' ) and (i_i_g_t_Ay_STR <> '05' ) and (i_i_g_t_Ay_STR <> '06' ) and (i_i_g_t_Ay_STR <> '07' ) and (i_i_g_t_Ay_STR <> '08' ) and (i_i_g_t_Ay_STR <> '09' ) and (i_i_g_t_Ay_STR <> '10' ) and (i_i_g_t_Ay_STR <> '11' ) and (i_i_g_t_Ay_STR <> '12' ) then  //Ay i�in
         begin
              ShowMessage ('�lk ��e Giri� Tarihinin Tek Haneli Olmas� Durumunda Ba��na 0 Ekleyiniz! �rn: 01,02,03,vb.');
              Exit;
         end
         else if (i_i_g_t_Gun_INT <1) and (i_i_g_t_Gun_INT >31) then
         begin
              ShowMessage ('�lk ��e Giri� Tarihinin G�n De�eri 1 De�erinden D���k 31 De�erinden B�y�k Olamaz!');
              Exit;
         end
         else if (i_i_g_t_Gun_STR = '1') or (i_i_g_t_Gun_STR = '2') or (i_i_g_t_Gun_STR = '3') or (i_i_g_t_Gun_STR = '4') or (i_i_g_t_Gun_STR = '5') or (i_i_g_t_Gun_STR = '6') or (i_i_g_t_Gun_STR = '7') or (i_i_g_t_Gun_STR = '8') or (i_i_g_t_Gun_STR = '9') then
         begin
           i_i_g_t_Gun_STR := '0' + i_i_g_t_Gun_STR;
         end
         else if (i_i_g_t_Ay_STR = '02') and (i_i_g_t_Gun_INT > 28) then
         begin
             ShowMessage ('�ubat Ay�n�n Alabilece�i Maksimum G�n De�eri 28 de�eridir.');
         end
         else if (i_i_g_t_Ay_STR = '04') or (i_i_g_t_Ay_STR = '06') or (i_i_g_t_Ay_STR = '09') or (i_i_g_t_Ay_STR = '11') and (i_i_g_t_Gun_INT > 30) then
         begin
             ShowMessage ('Nisan, Haziran, Eyl�l, Kas�m Aylar�n�n Alabilece�i Maksimum G�n De�eri 30 de�eridir.');
         end
         else if (i_i_g_t_Ay_STR = '01') or (i_i_g_t_Ay_STR = '03') or (i_i_g_t_Ay_STR = '05') or (i_i_g_t_Ay_STR = '7') or (i_i_g_t_Ay_STR = '10') or (i_i_g_t_Ay_STR = '12') and (i_i_g_t_Gun_INT > 31) then
         begin
             ShowMessage ('Ocak, Mart, May�s, Temmuz, Ekim, Aral�k Aylar�n�n Alabilece�i Maksimum G�n De�eri 31 de�eridir.');
             Exit;
         end;
         Break;



    end;
i_i_g_t_KARSILASTIRMA := StrToInt(Edit4.Text+ Edit2.Text+ Edit3.Text);
//Genel Emeklilik Hesaplama
while True do
  begin
      if (RadioButton1.Checked=True) and (RadioButton2.Checked=False) then //Erkek
      begin
          if (i_i_g_t_KARSILASTIRMA <= 19760908) then
          begin
              sartlar ('25', '0', 0);
              primsarti (5000, prim_gun_sayisi);
              Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19760909) and (i_i_g_t_KARSILASTIRMA <= 19750523) then
          begin
               sartlar ('25', '44', 0);
               primsarti (5000, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19790524) and  (i_i_g_t_KARSILASTIRMA <= 19801123) then
          begin
               sartlar ('25', '45', 0);
               primsarti (5000, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19801124) and  (i_i_g_t_KARSILASTIRMA <= 19820523) then
          begin
               sartlar ('25', '46', 0);
               primsarti (5075, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19820524) and  (i_i_g_t_KARSILASTIRMA <= 19831123) then
          begin
               sartlar ('25', '47', 0);
               primsarti (5150, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19831124) and  (i_i_g_t_KARSILASTIRMA <= 19850523) then
          begin
               sartlar ('25', '48', 0);
               primsarti (5225, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19850524) and  (i_i_g_t_KARSILASTIRMA <= 19861123) then
          begin
               sartlar ('25', '49', 0);
               primsarti (5300, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19861124) and  (i_i_g_t_KARSILASTIRMA <= 19880523) then
          begin
               sartlar ('25', '50', 0);
               primsarti (5375, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19880524) and  (i_i_g_t_KARSILASTIRMA <= 19891123) then
          begin
               sartlar ('25', '51', 0);
               primsarti (5450, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19891124) and  (i_i_g_t_KARSILASTIRMA <= 19910523) then
          begin
               sartlar ('25', '52', 0);
               primsarti (5525, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19910524) and  (i_i_g_t_KARSILASTIRMA <= 19921123) then
          begin
               sartlar ('25', '53', 0);
               primsarti (5600, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19921124) and  (i_i_g_t_KARSILASTIRMA <= 19940523) then
          begin
               sartlar ('25', '54', 0);
               primsarti (5675, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19940524) and  (i_i_g_t_KARSILASTIRMA <= 19951123) then
          begin
               sartlar ('25', '55', 0);
               primsarti (5750, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19951124) and  (i_i_g_t_KARSILASTIRMA <= 19970523) then
          begin
               sartlar ('25', '56', 0);
               primsarti (5825, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19970524) and  (i_i_g_t_KARSILASTIRMA <= 19981123) then
          begin
               sartlar ('25', '57', 0);
               primsarti (5900, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19981124) and  (i_i_g_t_KARSILASTIRMA <= 19990908) then
          begin
               sartlar ('25', '58', 0);
               primsarti (5975, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19990908) and  (i_i_g_t_KARSILASTIRMA <= 20080430) then
          begin
               sartlar ('0', '60', 0);
               primsarti (7000, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 20080501) and  (i_i_g_t_KARSILASTIRMA <= 20351231) then
          begin
               sartlar ('0', '60', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 20360101) and  (i_i_g_t_KARSILASTIRMA <= 20371231) then
          begin
               sartlar ('0', '61', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 20380101) and  (i_i_g_t_KARSILASTIRMA <= 20391231) then
          begin
               sartlar ('0', '62', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 20400101) and  (i_i_g_t_KARSILASTIRMA <= 20411231) then
          begin
               sartlar ('0', '63', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 20420101) and  (i_i_g_t_KARSILASTIRMA <= 20431231) then
          begin
               sartlar ('0', '64', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 20440101) and  (i_i_g_t_KARSILASTIRMA <= 20451231) then
          begin
               sartlar ('0', '65', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 20460101) and  (i_i_g_t_KARSILASTIRMA <= 20471231) then
          begin
               sartlar ('0', '65', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 20480101 ) then
          begin
               sartlar ('0', '65', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end;

      end
      else if (RadioButton1.Checked=False) and (RadioButton2.Checked=True) then   //Kad�n
      begin
          if (i_i_g_t_KARSILASTIRMA < 19810401) then
          begin
               sartlar ('20', '0', 0);
               primsarti (5000, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19810401) and (i_i_g_t_KARSILASTIRMA <= 19810908) then
          begin
               sartlar ('20', '38', 0);
               primsarti (5000, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19810909) and (i_i_g_t_KARSILASTIRMA <= 19840523) then
          begin
               sartlar ('20', '40', 0);
               primsarti (5000, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19840524) and (i_i_g_t_KARSILASTIRMA <= 19850523) then
          begin
               sartlar ('20', '41', 0);
               primsarti (5000, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19850524) and (i_i_g_t_KARSILASTIRMA <= 19860523) then
          begin
               sartlar ('20', '42', 0);
               primsarti (5075, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19860524) and (i_i_g_t_KARSILASTIRMA <= 19870523) then
          begin
               sartlar ('20', '43', 0);
               primsarti (5150, prim_gun_sayisi);
               Break;
          end
           else if (i_i_g_t_KARSILASTIRMA >= 19870524) and (i_i_g_t_KARSILASTIRMA <= 19880523) then
          begin
               sartlar ('20', '44', 0);
               primsarti (5225, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19880524) and (i_i_g_t_KARSILASTIRMA <= 19890523) then
          begin
               sartlar ('20', '45', 0);
               primsarti (5300, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19890524) and (i_i_g_t_KARSILASTIRMA <= 19900523) then
          begin
               sartlar ('20', '46', 0);
               primsarti (5375, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19900524) and (i_i_g_t_KARSILASTIRMA <= 19910523) then
          begin
               sartlar ('20', '47', 0);
               primsarti (5450, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19910524) and (i_i_g_t_KARSILASTIRMA <= 19920523) then
          begin
               sartlar ('20', '48', 0);
               primsarti (5525, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19920524) and (i_i_g_t_KARSILASTIRMA <= 19930523) then
          begin
               sartlar ('20', '49', 0);
               primsarti (5600, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19930524) and (i_i_g_t_KARSILASTIRMA <= 19940523) then
          begin
               sartlar ('20', '50', 0);
               primsarti (5675, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19940524) and (i_i_g_t_KARSILASTIRMA <= 19950523) then
          begin
               sartlar ('20', '51', 0);
               primsarti (5750, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19950524) and (i_i_g_t_KARSILASTIRMA <= 19960523) then
          begin
               sartlar ('20', '52', 0);
               primsarti (5825, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19960524) and (i_i_g_t_KARSILASTIRMA <= 19970523) then
          begin
               sartlar ('20', '53', 0);
               primsarti (5900, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19970524) and (i_i_g_t_KARSILASTIRMA <= 19980523) then
          begin
               sartlar ('20', '54', 0);
               primsarti (5975, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19980524) and (i_i_g_t_KARSILASTIRMA <= 19990523) then
          begin
               sartlar ('20', '55', 0);
               primsarti (5975, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19990524) and (i_i_g_t_KARSILASTIRMA <= 19990908) then
          begin
               sartlar ('20', '56', 0);
               primsarti (5675, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 19990908) and (i_i_g_t_KARSILASTIRMA <= 20080430) then
          begin
               sartlar ('0', '58', 0);
               primsarti (7000, prim_gun_sayisi);
               Break;
          end
          else if (i_i_g_t_KARSILASTIRMA >= 20080501) and (i_i_g_t_KARSILASTIRMA <= 20351231) then
          begin
               sartlar ('0', '58', 0);
               primsarti (7200, prim_gun_sayisi);
               Break;
          end ;


      end;
  end;
  Form3.ADOTable1.Insert;
  Form3.ADOTable1.Edit;
  Form3.ADOTable1.FieldByName('AdSoyad').AsString := adsoyad;
  Form3.ADOTable1.FieldByName('Cinsiyet').AsString := cins;
  Form3.ADOTable1.FieldByName('DogumYili').AsString := dogumyili;
  Form3.ADOTable1.FieldByName('IlkIseGirisTarihi').AsString := i_i_g_t_Gun_STR+i_i_g_t_Ay_STR+i_i_g_t_Yil_STR;
  Form3.ADOTable1.FieldByName('TamamGerekSigSuresi').AsString := sig_suresi;
  Form3.ADOTable1.FieldByName('TamamGerekYas').AsString := yas_sarti;
  Form3.ADOTable1.FieldByName('TamamGerekPrim').AsString := IntToStr(max_prim);
  Form3.ADOTable1.Post;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    Edit6.Clear;
    RadioButton1.Checked := False;
    RadioButton2.Checked := False;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Form2.Position    := poScreenCenter;
  Form2.BorderStyle := bsToolWindow;

  Edit1.MaxLength :=4;
  Edit1.Hint := 'L�tfen Mevcut Prim G�n Say�n�z� Giriniz! ';
  Edit1.ShowHint := True;
  Edit2.MaxLength :=2;
  Edit2.Hint := 'L�tfen Ay De�erinin Ba��na 0 Ekleyiniz! ';
  Edit2.ShowHint := True;
  Edit3.MaxLength :=2;
  Edit3.Hint := 'L�tfen G�n De�erinin Ba��na 0 Ekleyiniz! ';
  Edit3.ShowHint := True;
  Edit4.MaxLength :=4;
  Edit4.Hint := 'L�tfen YIL De�erini Ekleyiniz ';
  Edit4.ShowHint := True;
end;

end.
