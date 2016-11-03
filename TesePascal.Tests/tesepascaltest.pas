unit TesePascalTest;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry, TesePascal;

type

  TTeseTest= class(TTestCase)
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestHookUp;
  end;

implementation

procedure TTeseTest.TestHookUp;
begin
  Fail('Write your own test');
end;

procedure TTeseTest.SetUp;
begin

end;

procedure TTeseTest.TearDown;
begin

end;

initialization

  RegisterTest(TTeseTest);
end.

