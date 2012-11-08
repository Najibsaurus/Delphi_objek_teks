unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;
type
  TForm1 = class(TForm)
    BtnInput: TButton;
    GroupBox1: TGroupBox;
    CheckBoxBold: TCheckBox;
    CheckBoxItalic: TCheckBox;
    CheckBoxUnderline: TCheckBox;
    Label_latar: TLabel;
    Label_teks: TLabel;
    BtnPlay: TButton;
    BtnStop: TButton;
    Label_Speed: TLabel;
    SpeedBar: TTrackBar;
    Speedtext: TLabel;
    PanelLatar: TPanel;
    Timer: TTimer;
    LabelTeks: TLabel;
    ComboTeks: TComboBox;
    ComboWarna: TComboBox;
    Label_size: TLabel;
    ComboSize: TComboBox;
    procedure CheckBoxBoldClick(Sender: TObject);
    procedure CheckBoxItalicClick(Sender: TObject);
    procedure CheckBoxUnderlineClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure BtnInputClick(Sender: TObject);
    procedure SpeedBarChange(Sender: TObject);
    procedure BtnPlayClick(Sender: TObject);
    procedure BtnStopClick(Sender: TObject);
    procedure ComboSizeClick(Sender: TObject);
    procedure ComboTeksClick(Sender: TObject);
    procedure ComboWarnaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  size,lebar,batas,kiri :integer;


implementation

{$R *.dfm}

procedure TForm1.CheckBoxBoldClick(Sender: TObject);
begin
    if CheckBoxBold.Checked=true then
    begin
      LabelTeks.Font.Style:=LabelTeks.Font.Style+[fsbold];
    end
  else
    begin
      LabelTeks.Font.Style:=LabelTeks.Font.Style-[fsbold];
    end;
end;

procedure TForm1.CheckBoxItalicClick(Sender: TObject);
begin
         if CheckBoxItalic.Checked=true then
    begin
      LabelTeks.Font.Style:=LabelTeks.Font.Style+[fsItalic];
    end
  else
    begin
      LabelTeks.Font.Style:=LabelTeks.Font.Style-[fsItalic];
    end;
end;

procedure TForm1.CheckBoxUnderlineClick(Sender: TObject);
begin
    if CheckBoxUnderline.Checked=true then
    begin
      LabelTeks.Font.Style:=LabelTeks.Font.Style+[fsUnderline];
    end
  else
    begin
      LabelTeks.Font.Style:=LabelTeks.Font.Style-[fsUnderline];
    end;
end;

procedure TForm1.TimerTimer(Sender: TObject);
begin

  lebar:=LabelTeks.Width;
  batas:=8 + lebar;
  kiri:=0 - batas;


LabelTeks.Left:=LabelTeks.Left-1;
LabelTeks.Left:=LabelTeks.Left-(SpeedBar.Position+5);

if LabelTeks.Left < -76 then
  begin
    LabelTeks.Left:=400;
  end;
end;

procedure TForm1.BtnInputClick(Sender: TObject);
begin
LabelTeks.Caption:=inputbox('Information','silahkan masukkan Teks : ','');
end;

procedure TForm1.SpeedBarChange(Sender: TObject);
begin
Speedtext.Caption := IntToStr(SpeedBar.Position+1);
end;

procedure TForm1.BtnPlayClick(Sender: TObject);
begin
Timer.Enabled:=true;
end;

procedure TForm1.BtnStopClick(Sender: TObject);
begin
timer.Enabled:=false;
end;

procedure TForm1.ComboSizeClick(Sender: TObject);
begin
  size:=strtoint(ComboSize.Text);

  labelTeks.Font.Size:=size;

end;

procedure TForm1.ComboTeksClick(Sender: TObject);
begin
if ComboTeks.Text ='Merah' then
    begin
      LabelTeks.Font.Color:=clred;
    end
  else if ComboTeks.Text='Hijau' then
    begin
      LabelTeks.Font.Color:=clGreen;
    end
  else if ComboTeks.Text='Kuning' then
    begin
      LabelTeks.Font.Color:=clYellow;
    end
  else if ComboTeks.Text='Biru' then
    begin
      LabelTeks.Font.Color:=clBlue;
    end
  else if ComboTeks.Text='Pink' then
    begin
      LabelTeks.Font.Color:=clFuchsia;
    end


end;

procedure TForm1.ComboWarnaClick(Sender: TObject);
begin
if ComboWarna.Text ='Merah' then
    begin
      PanelLatar.Color:=clred;
    end
  else if ComboWarna.Text='Hijau' then
    begin
      PanelLatar.Color:=clGreen;
    end
  else if ComboWarna.Text='Kuning' then
    begin
      PanelLatar.Color:=clYellow;
    end
  else if ComboWarna.Text='Biru' then
    begin
      PanelLatar.Color:=clBlue;
    end
  else if ComboWarna.Text='Pink' then
    begin
      PanelLatar.Color:=clFuchsia;
    end


end;

end.
