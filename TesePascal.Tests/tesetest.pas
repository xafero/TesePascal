unit TeseTest;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testutils, testregistry, tese, tesebuilder;

type
  TTeseTest = class(TTestCase)
  private
    bld : TTeseBuilder;
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
  bld := TTeseBuilder.Create();
  bld.SkipNull := true;
  tese := bld.Build();
end;

procedure TTeseTest.TearDown;
begin
  tese.Free;
  bld.Free;
end;

initialization
  RegisterTest(TTeseTest);
end.
