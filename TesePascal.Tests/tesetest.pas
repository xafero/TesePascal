unit TeseTest;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry, tese;

type
  TTeseTest = class(TTestCase)
  private
    tese : TTese;
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
  tese := TTese.Create();
end;

procedure TTeseTest.TearDown;
begin
  tese.Free;
end;

initialization
  RegisterTest(TTeseTest);
end.
