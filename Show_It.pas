unit Show_It;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TShowIt = class(TForm)
    procedure FormPaint(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowIt: TShowIt;

implementation

{$R *.dfm}


procedure TShowIt.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ShowIt.Close;
end;

procedure TShowIt.FormPaint(Sender: TObject);
begin
//ShowIt.Hide;
//ShowIt.Close;
end;

end.
