unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, SMDBGrid, SMDBCtrl,
  Buttons, ExtCtrls, jpeg;

type
  TFormTabel = class(TForm)
    pnl1: TPanel;
    btn2: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    smdbnvgtr1: TSMDBNavigator;
    smdbnvgtr2: TSMDBNavigator;
    smdbnvgtr3: TSMDBNavigator;
    smdbgrd: TSMDBGrid;
    lbl4: TLabel;
    lbl5: TLabel;
    smdbgrd11: TSMDBGrid;
    smdbgrd12: TSMDBGrid;
    dbedtKodeGejala: TDBEdit;
    dbedtNamaGejala: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    dbedtKodePenyakit: TDBEdit;
    dbedtNamaPenyakit: TDBEdit;
    dbedtKodePertanyaan: TDBEdit;
    dbedtPertanyaan: TDBEdit;
    btn1: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabel: TFormTabel;

implementation

uses Unit1, Unit3, unit4, Unit5;

{$R *.dfm}

procedure TFormTabel.btn1Click(Sender: TObject);
begin
  if (Application.MessageBox('Ingin Kembali?','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    Form5.lbledt1.Clear;
    Form5.lbledt2.Clear;

    form5.show;
    FormTabel.hide;
  end;
end;

procedure TFormTabel.btn2Click(Sender: TObject);
begin
  FormTabel.Close;
  TabelRule.Show;
end;

procedure TFormTabel.FormActivate(Sender: TObject);
begin
  DM1.TabelAktif(True);
end;

end.
