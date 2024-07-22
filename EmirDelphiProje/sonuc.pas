unit sonuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
   Label2.Caption :='0';
   Label4.Caption :='0';
   Label6.Caption :='0';
   Form3.Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
   Form3.Position    := poScreenCenter;
   Form3.BorderStyle := bsToolWindow;
end;

end.
