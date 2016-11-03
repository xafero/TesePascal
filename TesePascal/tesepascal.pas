{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit TesePascal;

interface

uses
  TeseBuilder, Tese, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('Tese', @Tese.Register);
end;

initialization
  RegisterPackage('TesePascal', @Register);
end.
