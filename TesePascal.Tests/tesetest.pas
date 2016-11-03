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
    procedure TestSerialize;
    procedure TestDeserialize;
  end;

implementation

procedure TTeseTest.TestSerialize;
begin
  Fail('Write ?!');
end;

procedure TTeseTest.TestDeserialize;
begin
  Fail('Read ?!');
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
