program TesePascalTests;

{$mode objfpc}{$H+}

uses
  Classes, consoletestrunner, TeseTest;

type

  { TLazTestRunner }

  TMyTestRunner = class(TTestRunner)
  protected
  end;

var
  Application: TMyTestRunner;

begin
  Application := TMyTestRunner.Create(nil);
  Application.Initialize;
  Application.Title := 'FPCUnit Console test runner';
  Application.Run;
  Application.Free;
end.
