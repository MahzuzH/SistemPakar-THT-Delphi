unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Grids, DBGrids, SMDBGrid, ExtCtrls,
  Buttons, jpeg;

type
  TFormKonsultasi = class(TForm)
    lbl1: TLabel;
    btn2: TBitBtn;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl3: TLabel;
    btnYa: TBitBtn;
    btnTidak: TBitBtn;
    smdbgrd: TSMDBGrid;
    mmo1: TMemo;
    lbl4: TLabel;
    dbedt1: TDBEdit;
    Panel1: TPanel;
    lbl5: TLabel;
    btn1: TButton;
    lbl2: TLabel;
    lbl6: TLabel;
    dbedtsolusi: TDBEdit;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnYaClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPertanyaan;

  public
    { Public declarations }
  end;

var
  FormKonsultasi: TFormKonsultasi;

implementation

uses Unit2, Unit3, unit4, Unit5;

{$R *.dfm}

procedure TFormKonsultasi.btn1Click(Sender: TObject);
begin
  if (Application.MessageBox('Ingin Kembali?','Peringatan',MB_ICONINFORMATION+MB_OKCANCEL)=ID_OK) then
  begin
    Form5.lbledt1.Clear;
    Form5.lbledt2.Clear;

    form5.show;
    FormKonsultasi.hide;
  end;
end;

procedure TFormKonsultasi.FormActivate(Sender: TObject);
begin
  DM1.TabelAktif(True);
  mmo1.Lines.Clear;
end;

procedure TFormKonsultasi.ShowPertanyaan;
begin
  lbl3.Caption := DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
end;

procedure TFormKonsultasi.btnYaClick(Sender: TObject);
var
  s,s2,s3: string;
  i : Integer;
  tag : Integer;
begin
 tag := (Sender AS TBitBtn).Tag;
  if tag = 0 then
    s := 'Y :'
  else
    s := 'T :' ;

  s := s+DM1.Pertanyaan_zq.FieldByName('KodePertanyaan').AsString + ' - ' +
       DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
  mmo1.Lines.Add(s);

  s := 'SELECT * FROM tabelrule';
  s2 := '';
  for i := 0 to mmo1.Lines.Count-1 do begin
    s3 := QuotedStr('%'+Trim(Copy(mmo1.Lines[i],4,5))+'%');
    if Pos('Y :',mmo1.Lines[i]) > 0 then begin
      s2 := s2+' AND kodepertanyaan1 LIKE '+ s3;
    end
    else
    s2 := s2+' AND kodepertanyaan1 not LIKE'+ s3
  end;

  if Length(s2) > 0 Then begin
    Delete(s2,1,4);
    s2 := s + ' WHERE '+s2;
  end
  else
   s2 := s;

  DM1.pRule_zq.Active := False;
  DM1.pRule_zq.SQL.Text := s2;
  DM1.pRule_zq.Active := True;

  if DM1.pRule_zq.RecordCount = 0 then begin
    Application.MessageBox('Maaf, tidak ada penyakit yang terdeteksi',
    'Keterangan', MB_OK + MB_ICONWARNING);
  end;
  
  //------------------------------
  DM1.Pertanyaan_zq.Next;
  ShowPertanyaan;
  btnYa.Enabled := not (DM1.pRule_zq.RecordCount<2);
  btnTidak.Enabled := btnYa.Enabled;

  
end;


procedure TFormKonsultasi.btn2Click(Sender: TObject);
begin
  mmo1.Lines.Clear;
  DM1.Pertanyaan_zq.First;
  ShowPertanyaan;
  btnYa.Visible := True;
  btnTidak.Visible := True;
  DM1.pRule_zq.Active := False;
  DM1.pRule_zq.SQL.Text := 'select * from tabelrule';
  DM1.pRule_zq.Active := True;
  btnYa.Enabled := True;
  btnTidak.Enabled := btnYa.Enabled;
  dbedt1.Clear;
  dbedtsolusi.Clear;
end;
procedure TFormKonsultasi.FormCreate(Sender: TObject);
begin
  dbedt1.Clear;
  dbedtsolusi.Clear;
end;

end.

