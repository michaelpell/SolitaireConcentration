program Dialogs4;







uses
  Vcl.Forms,
  Dialogs_4 in 'Dialogs_4.pas' {Dialogs4Form},
  Show_It in 'Show_It.pas' {ShowIt};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDialogs4Form, Dialogs4Form);
  Application.CreateForm(TShowIt, ShowIt);
  Application.Run;
end.
