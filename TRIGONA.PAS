program Trigona(input, output);
const
  Max = 13;
type
  TAction = procedure;

function SizePrompt: Integer;
begin
  write('What is the size of the triangle? ');
  readln(SizePrompt)
end;

function IsSizeValid(Size: Integer): Boolean;
begin
  IsSizeValid := (Size >= 1) and (Size <= Max);
end;

function GetSize: Integer;
var
  Size: Integer;
begin
  repeat
    Size := SizePrompt;
    if not IsSizeValid(Size) then
      writeln('Size must be less than 14 and at least 1');
  until IsSizeValid(Size);
  GetSize := Size;
end;

procedure LoopUntilUserQuits(Action: TAction);
var
  usrch: Char;
begin
  repeat
    Action;
    write('Do you want to continue? ');
    readln(usrch);
  until (usrch = 'n') or (usrch = 'N');
end;

procedure Main;
var
  F, L: array [1..Max] of Integer;
  i, Row, Size: Integer;
begin
  Size := GetSize;
  for i:=2 to Size do begin F[i]:=0; L[i]:=0; end;
  F[1]:=1;
  L[1]:=1;
  for Row:=1 to Size do begin
    for i:=2 to Row do L[i]:=F[i] + F[i-1];
    for i:=1 to Row do F[i]:=L[i];
    for i:=1 to Size-Row do write('  ');
    for i:=1 to Row do write(L[i]:4);
    writeln;
  end;
end;

begin
  LoopUntilUserQuits(@Main);
end.
