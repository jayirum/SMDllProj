program DemoApp;

uses
  Forms,
  main in 'main.pas' {fmMain},
  DataTypes in 'DataTypes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
