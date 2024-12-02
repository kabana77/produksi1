unit Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TSplashForm = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    vtimer : integer;
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}

procedure TSplashForm.FormCreate(Sender: TObject);
begin
  vtimer:=0;
//  Image1.Picture.LoadFromFile('\Images\Splash.bmp');
end;

procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
  vtimer:=vtimer+1;
  Timer1.Enabled:=vtimer<30;
end;

end.
