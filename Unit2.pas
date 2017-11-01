unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TOperation = class
  private
    function GetValue1: string; virtual; abstract;
    function GetValue2: string; virtual; abstract;
    procedure SetValue1(Value: string); virtual; abstract;
    procedure SetValue2(Value: string);  virtual; abstract;
  public
    property val1: string read GetValue1 write SetValue1;
    property val2: string read GetValue2 write SetValue2;
    function Exec: string; virtual; abstract;
  end;

  TSumm = class(TOperation)
  private
    value1, value2: string;
    function GetValue1: string; override;
    function GetValue2: string; override;
    procedure SetValue1(Value: string); override;
    procedure SetValue2(Value: string);  override;
  public
    property val1: string read GetValue1 write SetValue1;
    property val2: string read GetValue2 write SetValue2;
    function Exec: string; override;
  end;

  TMinus = class(TOperation)
  private
    value1, value2: string;
    function GetValue1: string; override;
    function GetValue2: string; override;
    procedure SetValue1(Value: string); override;
    procedure SetValue2(Value: string);  override;
  public
    property val1: string read GetValue1 write SetValue1;
    property val2: string read GetValue2 write SetValue2;
    function Exec: string; override;
  end;

  TMultiply = class(TOperation)
  private
    value1, value2: string;
    function GetValue1: string; override;
    function GetValue2: string; override;
    procedure SetValue1(Value: string); override;
    procedure SetValue2(Value: string);  override;
  public
    property val1: string read GetValue1 write SetValue1;
    property val2: string read GetValue2 write SetValue2;
    function Exec: string; override;
  end;

  TDivide = class(TOperation)
  private
    value1, value2: string;
    function GetValue1: string; override;
    function GetValue2: string; override;
    procedure SetValue1(Value: string); override;
    procedure SetValue2(Value: string);  override;
  public
    property val1: string read GetValue1 write SetValue1;
    property val2: string read GetValue2 write SetValue2;
    function Exec: string; override;
  end;

implementation

{ TSumm }

function TSumm.Exec: string;
begin
  result := floattostr(strtofloat(GetValue1) + strtofloat(GetValue2));
end;

function TSumm.GetValue1: string;
begin
  result:=Value1;
end;

function TSumm.GetValue2: string;
begin
  result:=Value2;
end;

procedure TSumm.SetValue1(Value: string);
begin
  Value1:=Value;
end;

procedure TSumm.SetValue2(Value: string);
begin
  Value2:=Value;
end;

{ TDivide }

function TDivide.Exec: string;
begin
  result := floattostr(strtofloat(value1) / strtofloat(value2));
end;

function TDivide.GetValue1: string;
begin
  result:=Value1;
end;

function TDivide.GetValue2: string;
begin
  result:=Value2;
end;

procedure TDivide.SetValue1(Value: string);
begin
  Value1:=Value;
end;

procedure TDivide.SetValue2(Value: string);
begin
  Value2:=Value;
end;

{ TMultiply }

function TMultiply.Exec: string;
begin
  result := floattostr(strtofloat(value1) * strtofloat(value2));
end;

function TMultiply.GetValue1: string;
begin
  result:=Value1;
end;

function TMultiply.GetValue2: string;
begin
  result:=Value1;
end;

procedure TMultiply.SetValue1(Value: string);
begin
  Value1:=Value;
end;

procedure TMultiply.SetValue2(Value: string);
begin
  Value2:=Value;
end;

{ TMinus }

function TMinus.Exec: string;
begin
  result := floattostr(strtofloat(value1) - strtofloat(value2));
end;

function TMinus.GetValue1: string;
begin
  result:=Value1;
end;

function TMinus.GetValue2: string;
begin
  result:=Value2;
end;

procedure TMinus.SetValue1(Value: string);
begin
  Value1:=Value;
end;

procedure TMinus.SetValue2(Value: string);
begin
  Value2:=Value;
end;

end.
