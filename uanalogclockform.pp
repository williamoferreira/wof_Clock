unit uAnalogClockForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms;

type

  { TAnalogClockForm }

  TAnalogClockForm = class(TCustomForm)
  private
    procedure DrawClockBackground;
    procedure DrawclockNumbers;
  end;

type

implementation

uses
  Graphics;

{ TAnalogClockForm }

procedure TAnalogClockForm.DrawClockBackground;
var
  paddingX, paddingY: integer;
begin
  paddingX := (ClientWidth div 2) div 2;
  paddingY := (ClientHeight div 2) div 2;
  Self.Canvas.Brush.Color := RGBToColor(219, 232, 245);
  Self.Canvas.Ellipse(0, 0, Self.ClientWidth, Self.ClientHeight);
  Self.Canvas.Brush.Color := RGBToColor(238, 244, 250);
  Self.Canvas.Ellipse(0 + paddingX, 0 + paddingY, Self.ClientWidth -
    paddingX, Self.ClientHeight - paddingY);
end;

procedure TAnalogClockForm.DrawclockNumbers;
var
  Distancia, Angulo, PosX, PosY: integer;
  I: integer;
begin
  if ClientHeight > ClientWidth then
    Distancia := ClientWidth div 2
  else
    Distancia := ClientHeight div 2;

  for i := 1 to 12 do
  begin
    Angulo := (360 div 12) * i;
    PosX := Round(Sin(DegToRad(Angulo)) * Distancia);
    PoxY := Round(Cos(DegToRad(Angulo)) * Distancia);

    Canvas.Pen.Color := RGBToColor(128, 130, 132);
    Canvas.TextOut(PosX, PosY, IntToStr(i));
  end;

end;



end.
