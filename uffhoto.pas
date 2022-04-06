unit uffhoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, rImageZoom;

type
  Tffhoto = class(TForm)
    rImageZoom1: TrImageZoom;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffhoto: Tffhoto;

implementation

{$R *.dfm}

procedure Tffhoto.FormShow(Sender: TObject);
begin
if Screen.MonitorCount > 1 then
begin
  self.Top:= Screen.Monitors[1].BoundsRect.Top;
  self.left:= Screen.Monitors[1].BoundsRect.Left;
end;
end;

end.
