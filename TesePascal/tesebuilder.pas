unit TeseBuilder;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, tese;

type
  TTeseBuilder = class
  private
    bSkipNull : Boolean;
  public
    constructor Create();
    property SkipNull : Boolean read bSkipNull write bSkipNull;
    function Build() : TTese;
  end;

implementation

constructor TTeseBuilder.Create;
begin
  bSkipNull := false;
end;

function TTeseBuilder.Build() : TTese;
begin
  result := TTese.Create(); 
end;

end.
