program Trigona(input, output);
const
  Max = 13;
var
  F, L: array [1..Max] of Integer;
  i, Row, Size: Integer;
  usrch: Char;
begin
  repeat
    repeat
      write('What is the size of the triangle? ');
      readln(Size);
      if (Size > Max) or (Size < 1) then
        writeln('Size must be less than 14 and at least 1');
    until (Size <= Max) and (Size >=1);
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
    write('Do you want to continue? ');
    readln(usrch);
  until (usrch = 'n') or (usrch = 'N');
end.
