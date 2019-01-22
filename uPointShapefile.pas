unit uPointShapefile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, MapWinGIS_TLB,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Map1: TMap;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
procedure CreatePointShapefile();
var
  sf : IShapefile;
  shp : IShape;
  result: Boolean;
  xMin,yMin,xMax,yMax : Double;
  i,temp_i,rnd,index:Integer;
  pnt:IPoint;
begin
  Form2.Map1.Projection := PROJECTION_NONE;
  sf := CoShapefile.Create;
  // MWShapeId field will be added to attribute table
  result := sf.CreateNewWithShapeID('',SHP_POINT);
  xMin := 0.0;
  yMin := 0.0;
  xMax := 1000.0;
  yMax := 1000.0;
  // the location of points will be random
    // Get an integer random number in the range 1..100
  for i := 1 to 1000 do
  begin
    rnd := 1 + System.Random(1000);    // The 1000 value gives a range 0..999
    //ShowMessage('int = '+IntToStr(rnd));
    pnt := CoPoint.Create;
    pnt.x := xMin + (xMax - xMin) * System.Random;
    pnt.y := yMin + (yMax - yMin) * System.Random;
    shp := CoShape.Create;
    shp.Create(SHP_POINT);
    index := 0;
    temp_i := i;
    shp.InsertPoint(pnt,index);
    sf.EditInsertShape(shp,temp_i);

  end;
  sf.DefaultDrawingOptions.SetDefaultPointSymbol(dpsStar);
  Form2.Map1.AddLayer(sf,True);
  // save if needed
  sf.SaveAs(ExtractFilePath( ParamStr(0))+ 'points.shp', Nil);

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
   CreatePointShapefile();
end;

end.
