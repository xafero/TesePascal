unit Tese;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

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
  raise Exception.Create('Not implemented!');
end;

end.
