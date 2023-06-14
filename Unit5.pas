unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Unit2, Unit1, Unit4, jpeg ;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbledt1: TLabeledEdit;
    lbledt2: TLabeledEdit;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TBitBtn;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a,b : string;
  uname, password, role : string;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  a:=lbledt1.Text;
  b:=lbledt2.Text;

  DM1.User_zq.Active:=False;
  DM1.User_zq.SQL.Text:='select * from user where username="' + lbledt1.Text + '"';
  DM1.User_zq.Active:=True;

  if DM1.User_zq.RecordCount = 0 then begin
    MessageBox(Handle,'Username Salah','Error', MB_ICONERROR);
  end
  else begin
    uname:= DM1.User_zq['username'];
    password:= DM1.User_zq['password'];
    role:= DM1.User_zq['role'];

    if (uname = lbledt1.Text) and (password = lbledt2.Text) then
    begin
      Application.MessageBox('Login Berhasil','Login', MB_OK + MB_ICONINFORMATION);
      if(role = 'admin') then begin

        FormTabel.Show;
        Form5.Hide;
        lbledt1.Clear;
        lbledt2.Clear;
      end

      else begin
        FormKonsultasi.Show;
        Form5.Hide;
        lbledt1.Clear;
        lbledt2.Clear;
        FormKonsultasi.dbedt1.Clear;
        FormKonsultasi.dbedtsolusi.Clear;
      end
    end

    else if a='' then
      Application.MessageBox('Username belum diisi','Error')

    else if b='' then
      Application.MessageBox('Password belum diisi','Error')

    else if (a='') and (b='') then
      Application.MessageBox('Username dan Password belum diisi','Error')

    else
      Application.MessageBox('Username dan Password salah','Error');
    end;
  end;

end.
