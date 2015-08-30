unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math,
  Dialogs, Grids, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox3: TComboBox;
    CheckBox3: TCheckBox;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    function  BinToDec(ABin:array of string; z:integer) : Integer;
    procedure LoadStringGrid(StringGrid: TStringGrid; const FileName: TFileName; Sender: TObject);
    procedure SaveStringGrid(StringGrid: TStringGrid; const FileName: TFileName);
    procedure fill(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  colorS:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i,j:integer;
s:string;
l:array[0..16] of string;
begin
  memo1.Text:='';
 for i := 0 to stringgrid1.ColCount-1   do
 begin
 for j := 0 to stringgrid1.RowCount  do
  l[j]:=stringgrid1.Cells[i,j];

 s:=s+inttostr(BinToDec(l,stringgrid1.RowCount))+',';

  end;
  delete(s,length(s),1);
  memo1.Text:=s;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i,j:integer;
begin
 for i := 0 to stringgrid1.ColCount   do
 for j := 0 to stringgrid1.RowCount  do
 stringgrid1.Cells[i,j]:='0';
end;

procedure TForm1.Button3Click(Sender: TObject);
var
i,j,start,en,z:integer;
begin
  start:=0;
  en:=0;
 for i := 0 to stringgrid1.ColCount   do
  begin
  for j := 0 to stringgrid1.RowCount  do
 if stringgrid1.Cells[i,j]='1' then begin start:=i+1;  break; end;
   if start <> 0 then break;

   end;

 for i := stringgrid1.ColCount downto 0  do
  begin
 for j := 0 to stringgrid1.RowCount  do
 if stringgrid1.Cells[i,j]='1' then begin en:=i+1;  break; end;

 if en <> 0 then break;

 end;
 
  if (en = 0) then exit;
  
 if( ( en + (en-start) ) > stringgrid1.ColCount)   then begin showmessage('Для симметрии не хватает ширины!'); exit;end;
  z:=1;
 for i := en to en+(en-start)-1  do begin
     inc(z);
 for j := 0 to stringgrid1.RowCount do
 stringgrid1.Cells[i,j]:= stringgrid1.Cells[en-z,j];
  end;

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
CheckBox2.Checked:=false;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
CheckBox1.Checked:=false;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
stringgrid1.RowCount:= strtoint(ComboBox1.text);
fill(Sender);
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
stringgrid1.ColCount:= strtoint(ComboBox2.text);
fill(Sender);
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
case Combobox3.ItemIndex of
0: colorS:=clRed;
1:colorS:=clGreen;
2:colorS:=clBlue;
3:colorS:=clBlack;
4:colorS:=clGray;
end;
  stringgrid1.Repaint;
end;

function TForm1.BinToDec(ABin:array of string; z:integer) : Integer;
var
  I : Integer;
begin

  Result := 0;
  For I := 0 to z Do If ABin[I] <> '0' Then
  if (CheckBox3.Checked) then Result := Result + round(power(2,z-I-1)) else Result := Result + round(power(2,I));
end;

procedure TForm1.fill (Sender: TObject);
var
i,j:integer;
begin
 for i := 0 to stringgrid1.ColCount   do
 for j := 0 to stringgrid1.RowCount  do
 if stringgrid1.Cells[i,j]<>'1' then stringgrid1.Cells[i,j]:='0';

   
end;

procedure TForm1.FormShow(Sender: TObject);
var
i:integer;
begin
 Button2Click(Sender);
memo1.Text:='';
combobox1.Clear;
combobox2.Clear;
 for i:= 1 to 32 do
 combobox1.Items.Add(inttostr(i));

  for i:= 1 to 200 do
 combobox2.Items.Add(inttostr(i));


   combobox1.ItemIndex:=11;
   combobox2.ItemIndex:=19;
   ComboBox1Change(Sender);
  ComboBox2Change(Sender);

  SaveDialog1.FileName:='';
OpenDialog1.FileName:='';
form1.Caption:='Без имени';
Button2Click(Sender);


end;

procedure TForm1.N2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
if OpenDialog1.Execute then     begin
  SaveDialog1.FileName:= OpenDialog1.FileName;
  form1.Caption:=OpenDialog1.FileName;
 LoadStringGrid(StringGrid1, OpenDialog1.FileName, Sender);
end;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
if SaveDialog1.Execute then begin
 form1.Caption:=SaveDialog1.FileName;
 SaveStringGrid(StringGrid1, SaveDialog1.FileName);
end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin



FormShow(Sender);



end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
if(stringgrid1.Cells [Acol, Arow] = '1' ) then
stringgrid1.Canvas.Brush.Color:=  colorS // Устанавливаем цвет кисти
else  stringgrid1.Canvas.Brush.Color:=  clWhite;
 stringgrid1.Canvas.FillRect(Rect);


end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  begin
 CanSelect:=true;
 if(  ((stringgrid1.Cells [Acol, Arow] = '1') OR CheckBox1.Checked )  AND (not CheckBox2.Checked) ) then  stringgrid1.Cells [Acol, Arow]:='0'
 else stringgrid1.Cells [Acol, Arow]:='1';
  label4.Caption:='X:'+inttostr(Acol+1);
  label5.Caption:='Y:'+inttostr(Arow+1);
end;







procedure TForm1.SaveStringGrid(StringGrid: TStringGrid; const FileName: TFileName);
 var
   f:    TextFile;
   i, k: Integer;
 begin
   AssignFile(f, FileName);
   Rewrite(f);
   with StringGrid do
   begin
     // Write number of Columns/Rows 
    Writeln(f, ColCount);
     Writeln(f, RowCount);
     // loop through cells 
    for i := 0 to ColCount - 1 do
       for k := 0 to RowCount - 1 do
         Writeln(F, Cells[i, k]);
   end;
   CloseFile(F);
 end;
 
 // Load a TStringGrid from a file 
 
procedure TForm1.LoadStringGrid(StringGrid: TStringGrid; const FileName: TFileName; Sender: TObject);
 var
   f:          TextFile;
   iTmp, i, k: Integer;
   strTemp:    String;
 begin
   AssignFile(f, FileName);
   Reset(f);
     Button2Click(Sender);
         // Get number of columns
    Readln(f, iTmp);
     combobox2.ItemIndex:=iTmp-1;
        ComboBox2Change(Sender);
     // Get number of rows
     Readln(f, iTmp);
     combobox1.ItemIndex:=iTmp-1;
        ComboBox1Change(Sender);


   Button2Click(Sender);

   with StringGrid do
   begin

     // loop through cells & fill in values 
    for i := 0 to ColCount - 1 do
       for k := 0 to RowCount - 1 do
       begin
         Readln(f, strTemp);
         Cells[i, k] := strTemp;
       end;
   end;
   CloseFile(f);
 end;

 
 

  begin 
 colorS:=clRed;





end.
