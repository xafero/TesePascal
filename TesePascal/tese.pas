unit Tese;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, tesereaderror, tesewriteerror;

type
  TTese = class
 public
    constructor Create;
  end;

procedure Register;

implementation

procedure Register;
begin
end;

constructor TTese.Create;
begin
  raise ETeseReadError.Create('Could not read!');
  raise ETeseWriteError.Create('Could not write!');
end;

end.
