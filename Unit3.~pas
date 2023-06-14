unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, SMDBCtrl, StdCtrls, Buttons,
  jpeg;

type
  TTabelRule = class(TForm)
    btn1: TBitBtn;
    smdbnvgtr1: TSMDBNavigator;
    smdbgrd: TSMDBGrid;
    smdbgrd1: TSMDBGrid;
    smdbnvgtr2: TSMDBNavigator;
    lbl1: TLabel;
    lbl2: TLabel;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabelRule: TTabelRule;

implementation

uses Unit1, Unit2, unit4;

{$R *.dfm}

procedure TTabelRule.btn1Click(Sender: TObject);
begin
  TabelRule.Close;
  FormTabel.Show;
end;

procedure TTabelRule.FormActivate(Sender: TObject);
begin
  DM1.TabelAktif(True);
end;

end.
