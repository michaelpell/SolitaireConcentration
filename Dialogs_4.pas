unit Dialogs_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes,  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CustomizeDlg, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Buttons, DateUtils;

type
  TDialogs4Form = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    ImageList1: TImageList;
    Label53: TLabel;
    Clicks: TLabeledEdit;
    Edit4: TEdit;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Image53: TImage;
    ImageList2: TImageList;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Image39Click(Sender: TObject);
    procedure Image33Click(Sender: TObject);
    procedure Image37Click(Sender: TObject);
    procedure Image36Click(Sender: TObject);
    procedure Image35Click(Sender: TObject);
    procedure Image34Click(Sender: TObject);
    procedure Image38Click(Sender: TObject);
    procedure Image32Click(Sender: TObject);
    procedure Image31Click(Sender: TObject);
    procedure Image30Click(Sender: TObject);
    procedure Image29Click(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure Image27Click(Sender: TObject);
    procedure Image52Click(Sender: TObject);
    procedure Image51Click(Sender: TObject);
    procedure Image50Click(Sender: TObject);
    procedure Image49Click(Sender: TObject);
    procedure Image48Click(Sender: TObject);
    procedure Image47Click(Sender: TObject);
    procedure Image46Click(Sender: TObject);
    procedure Image45Click(Sender: TObject);
    procedure Image44Click(Sender: TObject);
    procedure Image43Click(Sender: TObject);
    procedure Image42Click(Sender: TObject);
    procedure Image41Click(Sender: TObject);
    procedure Image40Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

//Create a procedure for LabeledEdit's OnClick
//    procedure MyButtonOnClick(Sender : TObject);
end;

var
  Dialogs4Form       : TDialogs4Form;
  First_Card_Image   : TImage;
  DateTime           : TDateTime;
//Initialise LabeledEdit array;
  btn : array[1..52] of TLabeledEdit;

  Tries                : Integer;
  Card_Selected        : Integer;
  Card1_Selected_Name  : String;
  First_Card_Tag       : Integer;
  Card2_Selected_Name  : String;
  Current_Card         : Integer;
  nr                   : string;
  number               : Integer;

implementation

{$R *.dfm}

uses Show_It;

procedure ShowTime;
begin
    MessageDlgPos('a '+DateTimeToStr(now), mtInformation, [mbOk], 0, 1000, 10);  // Position = X1000, Y10
end;
procedure ShowMe;
 begin
    MessageDlgPos('SpaceBar or Click to Continue'+DateTimeToStr(now), mtInformation, [mbRetry], 0, 600, 10);  // Position = X1000, Y10
 end;
procedure TDialogs4Form.LabeledEdit1Change(Sender: TObject);
begin
  ShowMessage('You Clicked '+ (Sender as TButton).Caption);
end;

procedure TDialogs4Form.Button1Click(Sender: TObject);
begin
MessageDlg( '                      Solitaire Concentration          '   +#13+
            ''                                                          +#13+
            '                By  M.Pell   Version 12.30.2020',
            mtInformation,
            [mbOK],
            0);
end;

procedure TDialogs4Form.Button2Click(Sender: TObject);
var
  InputString: string;
begin
  InputString:= InputBox('Input Box', 'Prompt', 'Default string');
  Edit4.Text:= InputString;
end;

procedure TDialogs4Form.Button3Click(Sender: TObject);
var
  B : TBitmap;
  count1 : Integer;
  count2 : Integer;
  Start, Stop, ElapsedMilliseconds: cardinal;
  begin
  ElapsedMilliseconds:=0;
  Start := GetTickCount;
  // do something that requires measurement
    count1 := 100;
    B := TBitMap.Create;
     while count1 > 0 do begin
       dec(count1);
       count2 := 0;
       while count2 < 14 do begin
          inc(count2);
          Imagelist2.GetBitmap(count2, B);
          Image53.Picture.Bitmap.Assign(B);
          ShowIt.ShowModal;
       end
    end;
   B.Free;
  Stop := GetTickCount;
  ElapsedMilliseconds := Stop - Start;
  Edit4.Text:= IntToStr(ElapsedMilliseconds);
  ShowMessage('Total Seconds: '+IntToStr(round(ElapsedMilliseconds/MSecsPerSec)));
end;

procedure TDialogs4Form.FormActivate(Sender: TObject);
var
  NewNum: integer;
begin
windowstate:=wsmaximized;
Tries            := 0;
First_Card_Tag   := 0;        Randomize;
Current_Card     := 0;
Card_Selected    := 0;
Label53.Caption := 'Pick 1st Card';
Card1_Selected_Name := 'z';
Card2_Selected_Name := 'z';
  repeat;
    begin
     NewNum := Random(53);

     if Image1.Tag <> NewNum then
     if Image1.Tag = 0 then Image1.Tag := NewNum  else

     if Image2.Tag <> NewNum then
     if Image2.Tag = 0 then Image2.Tag := NewNum   else

     if Image3.Tag <> NewNum then
     if Image3.Tag = 0 then Image3.Tag := NewNum   else

     if Image4.Tag <> NewNum then
     if Image4.Tag = 0 then Image4.Tag := NewNum   else

     if Image5.Tag <> NewNum then
     if Image5.Tag = 0 then Image5.Tag := NewNum  else

     if Image6.Tag <> NewNum then
     if Image6.Tag = 0 then Image6.Tag := NewNum   else

     if Image7.Tag <> NewNum then
     if Image7.Tag = 0 then Image7.Tag := NewNum   else

     if Image8.Tag <> NewNum then
     if Image8.Tag = 0 then Image8.Tag := NewNum   else

     if Image9.Tag <> NewNum then
     if Image9.Tag = 0 then Image9.Tag := NewNum  else

     if Image10.Tag <> NewNum then
     if Image10.Tag = 0 then Image10.Tag := NewNum   else

     if Image11.Tag <> NewNum then
     if Image11.Tag = 0 then Image11.Tag := NewNum   else

     if Image12.Tag <> NewNum then
     if Image12.Tag = 0 then Image12.Tag := NewNum   else

     if Image13.Tag <> NewNum then
     if Image13.Tag = 0 then Image13.Tag := NewNum  else

     if Image14.Tag <> NewNum then
     if Image14.Tag = 0 then Image14.Tag := NewNum   else

     if Image15.Tag <> NewNum then
     if Image15.Tag = 0 then Image15.Tag := NewNum   else

     if Image16.Tag <> NewNum then
     if Image16.Tag = 0 then Image16.Tag := NewNum   else

     if Image17.Tag <> NewNum then
     if Image17.Tag = 0 then Image17.Tag := NewNum   else

     if Image18.Tag <> NewNum then
     if Image18.Tag = 0 then Image18.Tag := NewNum   else

     if Image19.Tag <> NewNum then
     if Image19.Tag = 0 then Image19.Tag := NewNum   else

     if Image20.Tag <> NewNum then
     if Image20.Tag = 0 then Image20.Tag := NewNum  else

     if Image21.Tag <> NewNum then
     if Image21.Tag = 0 then Image21.Tag := NewNum   else

     if Image22.Tag <> NewNum then
     if Image22.Tag = 0 then Image22.Tag := NewNum   else

     if Image23.Tag <> NewNum then
     if Image23.Tag = 0 then Image23.Tag := NewNum   else

     if Image24.Tag <> NewNum then
     if Image24.Tag = 0 then Image24.Tag := NewNum  else

     if Image25.Tag <> NewNum then
     if Image25.Tag = 0 then Image25.Tag := NewNum   else

     if Image26.Tag <> NewNum then
     if Image26.Tag = 0 then Image26.Tag := NewNum   else

     if Image27.Tag <> NewNum then
     if Image27.Tag = 0 then Image27.Tag := NewNum   else

     if Image28.Tag <> NewNum then
     if Image28.Tag = 0 then Image28.Tag := NewNum  else

     if Image29.Tag <> NewNum then
     if Image29.Tag = 0 then Image29.Tag := NewNum   else

     if Image30.Tag <> NewNum then
     if Image30.Tag = 0 then Image30.Tag := NewNum   else

     if Image31.Tag <> NewNum then
     if Image31.Tag = 0 then Image31.Tag := NewNum   else

     if Image32.Tag <> NewNum then
     if Image32.Tag = 0 then Image32.Tag := NewNum  else

     if Image33.Tag <> NewNum then
     if Image33.Tag = 0 then Image33.Tag := NewNum   else

     if Image34.Tag <> NewNum then
     if Image34.Tag = 0 then Image34.Tag := NewNum   else

     if Image35.Tag <> NewNum then
     if Image35.Tag = 0 then Image35.Tag := NewNum   else

     if Image36.Tag <> NewNum then
     if Image36.Tag = 0 then Image36.Tag := NewNum   else

     if Image37.Tag <> NewNum then
     if Image37.Tag = 0 then Image37.Tag := NewNum   else

     if Image38.Tag <> NewNum then
     if Image38.Tag = 0 then Image38.Tag := NewNum  else

     if Image39.Tag <> NewNum then
     if Image39.Tag = 0 then Image39.Tag := NewNum   else

     if Image40.Tag <> NewNum then
     if Image40.Tag = 0 then Image40.Tag := NewNum   else

     if Image41.Tag <> NewNum then
     if Image41.Tag = 0 then Image41.Tag := NewNum   else

     if Image42.Tag <> NewNum then
     if Image42.Tag = 0 then Image42.Tag := NewNum   else

     if Image43.Tag <> NewNum then
     if Image43.Tag = 0 then Image43.Tag := NewNum   else

     if Image44.Tag <> NewNum then
     if Image44.Tag = 0 then Image44.Tag := NewNum  else

     if Image45.Tag <> NewNum then
     if Image45.Tag = 0 then Image45.Tag := NewNum   else

     if Image46.Tag <> NewNum then
     if Image46.Tag = 0 then Image46.Tag := NewNum   else

     if Image47.Tag <> NewNum then
     if Image47.Tag = 0 then Image47.Tag := NewNum   else

     if Image48.Tag <> NewNum then
     if Image48.Tag = 0 then Image48.Tag := NewNum   else

     if Image49.Tag <> NewNum then
     if Image49.Tag = 0 then Image49.Tag := NewNum   else

     if Image50.Tag <> NewNum then
     if Image50.Tag = 0 then Image50.Tag := NewNum  else

     if Image51.Tag <> NewNum then
     if Image51.Tag = 0 then Image51.Tag := NewNum   else

     if Image52.Tag <> NewNum then
     if Image52.Tag = 0 then Image52.Tag := NewNum   else

    end;
  until Image52.Tag <> 0;
end;

procedure TDialogs4Form.FormCreate(Sender: TObject);
begin
var
 x : ShortInt;
  for x:=1 to 52 do
  begin
    //Create the LabeledEdit's
    btn[x]:=TLabeledEdit.Create(Self);
    with btn[x] do
    begin
      parent:=Dialogs4Form;
      Text:='LabeledEdit '+IntToStr(x);
      Name:='btn'+IntToStr(x);  // Real name = TLabeledEdit
      Visible:=False;
    //Assign the OnClick to your MyButtonOnClick procedure
     // OnClick:=MyButtonOnClick;
    end;
  end;
Btn[1].Text := '12';  // Queen
Btn[2].Text := '12';  // Queen
Btn[3].Text := '12';  // Queen
Btn[4].Text := '12';  // Queen
Btn[5].Text := '13';  // King
Btn[6].Text := '13';  // King
Btn[7].Text := '13';  // King
Btn[8].Text := '11';  // Jack
Btn[9].Text := '11';  // Jack
Btn[10].Text := '11'; // Jack
Btn[11].Text := '14'; // Ace
Btn[12].Text := '14'; // Ace
Btn[13].Text := '14'; // Ace
Btn[14].Text := '10';
Btn[15].Text := '10';
Btn[16].Text := '10';
Btn[17].Text := '10';
Btn[18].Text := '13'; //  King
Btn[19].Text := '9';
Btn[20].Text := '9';
Btn[21].Text := '14'; // Ace
Btn[22].Text := '11'; // Jack
Btn[23].Text := '9';
Btn[24].Text := '8';
Btn[25].Text := '8';
Btn[26].Text := '8';
Btn[27].Text := '8';
Btn[28].Text := '9';
Btn[29].Text := '7';
Btn[30].Text := '7';
Btn[31].Text := '7';
Btn[32].Text := '7';
Btn[33].Text := '6';
Btn[34].Text := '6';
Btn[35].Text := '6';
Btn[36].Text := '5';
Btn[37].Text := '5';
Btn[38].Text := '5';
Btn[39].Text := '4';
Btn[40].Text := '4';
Btn[41].Text := '4';
Btn[42].Text := '4';
Btn[43].Text := '3';
Btn[44].Text := '3';
Btn[45].Text := '3';
Btn[46].Text := '3';
Btn[47].Text := '2';
Btn[48].Text := '2';
Btn[49].Text := '2';
Btn[50].Text := '5';
Btn[51].Text := '6';
Btn[52].Text := '2';
end;

procedure TDialogs4Form.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  Present: TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  Present:= Now;
  DecodeTime(Present, Hour, Min, Sec, MSec);
  Edit1.Text := '' + IntToStr(Sec);
end;

//procedure TDialogs3Form.MyButtonOnClick(Sender : TObject);
//begin
//Using the Sender you can tell which TLabeledEdit has been clicked on
//  ShowMessage('You Clicked '+ (Sender as TLabeledEdit).Name);
//end;

procedure TDialogs4Form.Image10Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image10.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image10.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
  Edit4.Text:= nr;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
showtime;
      end;


    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image10.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image10.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image11Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image11.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
  Imagelist1.GetBitmap(Current_Card, B);
  Image11.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
 showtime;
     end;

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image11.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image11.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image12Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image12.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image12.Picture.Bitmap.Assign(B);
    B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image12.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image12.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image13Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image13.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image13.Picture.Bitmap.Assign(B);
    B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image13.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image13.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image14Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image14.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image14.Picture.Bitmap.Assign(B);
    B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image14.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image14.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
 end;

procedure TDialogs4Form.Image15Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image15.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image15.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image15.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image15.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image16Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image16.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image16.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image16.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image16.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image17Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image17.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image17.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image17.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image17.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image18Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image18.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image18.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image18.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image18.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image19Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image19.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image19.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image19.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image19.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image1Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image1.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image1.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image1.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image1.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image20Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image20.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image20.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image20.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image20.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image21Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image21.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image21.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image21.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image21.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image22Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image22.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image22.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image22.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image22.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image23Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image23.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image23.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image23.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image23.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image24Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image24.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image24.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image24.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image24.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image25Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image25.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image25.Picture.Bitmap.Assign(B);
    B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image25.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image25.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image26Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image26.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image26.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image26.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image26.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image27Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image27.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image27.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image27.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image27.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image28Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image28.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image28.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image28.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image28.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image29Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image29.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image29.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image29.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image29.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image2Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image2.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image2.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image2.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image2.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image30Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image30.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image30.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image30.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image30.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image31Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image31.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image31.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image31.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image31.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image32Click(Sender: TObject);
var
  B: TBitmap;
begin  Current_Card := Image32.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image32.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image32.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image32.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image33Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image33.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image33.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image33.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image33.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image34Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image34.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image34.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image34.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image34.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image35Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image35.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image35.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image35.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image35.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image36Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image36.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image36.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image36.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image36.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image37Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image37.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image37.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image37.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image37.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
 end;

procedure TDialogs4Form.Image38Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image38.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image38.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image38.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image38.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image39Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image39.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image39.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image39.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image39.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image3Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image3.Tag;                    // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image3.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image3.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image3.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image40Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image40.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image40.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image40.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image40.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image41Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image41.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image41.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image41.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image41.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image42Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image42.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image42.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image42.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image42.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image43Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image43.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image43.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image43.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image43.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image44Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image44.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image44.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image44.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image44.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image45Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image45.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image45.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image45.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image45.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image46Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image46.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image46.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image46.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image46.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image47Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image47.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image47.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image47.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image47.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image48Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image48.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image48.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image48.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image48.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image49Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image49.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image49.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image49.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image49.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image4Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image4.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image4.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image4.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image4.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image50Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image50.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image50.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image50.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image50.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image51Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image51.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image51.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image51.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image51.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image52Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image52.Tag;                    // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image52.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image52.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image52.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image5Click(Sender: TObject);
var
  B: TBitmap;
begin
  Current_Card := Image5.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image5.Picture.Bitmap.Assign(B);
    B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image5.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image5.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image6Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image6.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image6.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image6.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image6.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image7Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image7.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image7.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image7.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image7.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image8Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image8.Tag;                   // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image8.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image8.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image8.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

procedure TDialogs4Form.Image9Click(Sender: TObject);
var
  B: TBitmap;
  i: Integer;
begin
  i := 0;
  Current_Card := Image9.Tag;                    // Tag number provides index number into btn array below to get card name.
  Tries := StrToInt(Clicks.Text) + 1;            // Keep score
  Clicks.Text := IntToStr(tries);
  B := TBitMap.Create;
    Imagelist1.GetBitmap(Current_Card, B);
    Image9.Picture.Bitmap.Assign(B);
  B.Free;

  inc(Card_Selected);

  if (Card_Selected = 1) then
     begin
        First_Card_Tag :=  Current_Card;
        Card1_Selected_Name := Btn[Current_Card].Text ;
        nr := (Sender as TImage).Name; // nr : string;
        First_Card_Image := (Dialogs4Form.Findcomponent(nr) as TImage);  // Saving the 1st of two Image clicks.
        Label53.Caption := 'Pick Another Card';
     end
   else if Card_Selected = 2 then
      begin
           Card2_Selected_Name := Btn[Current_Card].Text ;
           Label53.Caption := '2nd Card';
           ShowTime; //=ShowMessage// Call this Dialog procedure to break out of Image10Click procedure, so card face displays.
      end;//otherwise card face won't display at all, and you can look at the pair of cards as long Message dialog is up.

    if Card_Selected = 2 then
    if Card1_Selected_Name = Card2_Selected_Name then
      begin
             Label53.Caption := ' Match';                  // Msg to player
             Image9.Visible := False;                     // Make 2nd Card invisble
             First_Card_Image.Visible := False;            // Make 1st Card invisble
             Card_Selected := 0;
      end;
       if Card_Selected = 2 then
       if Card1_Selected_Name <> Card2_Selected_Name then
      begin
           Label53.Caption := 'Select 1st Card';          // Msg to player
             B := TBitMap.Create;
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             Image9.Picture.Bitmap.Assign(B);
             Imagelist1.GetBitmap(0, B);                  // Display card backside
             First_Card_Image.Picture.Bitmap.Assign(B);
             B.Free;
           Card_Selected := 0;
      end;
end;

end.
