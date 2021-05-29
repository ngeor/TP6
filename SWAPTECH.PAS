program SwapTechniques;
var
  a, b: Integer;

{ Oi duo diadikasies Swap1 kai Swap2 einai isodunames }

procedure Swap1(var x, y: Integer);
var
  z: Integer;
begin
  z:=x;
  x:=y;
  y:=z;
end;

procedure Swap2(var x, y: Integer);
begin
  x:=x + y;
  y:=x - y;
  x:=x - y;
end;

begin
  a:=5;
  b:=9;
  writeln(a,', ', b);
  swap2(a, b);
  writeln(a,', ', b);
end.