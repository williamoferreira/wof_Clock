unit uAnalogClockDialog;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs;

type
  TAnalogClockDialog = class(TComponent)
  private

  protected

  public

  published

  end;

procedure Register;

implementation

procedure Register;
begin
  {$I component1_icon.lrs}
  RegisterComponents('WOF',[TComponent1]);
end;

end.
