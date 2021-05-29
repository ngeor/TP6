program NumConv(input, output);
var
  c: char;
  r: Word;
  sysfrom, systo: Integer;

function IsBinaryDigit(ch: Char): Boolean;
begin
  IsBinaryDigit:= (ch = '0') or (ch = '1');
end;

function IsOctademicalDigit(ch: Char): Boolean;
begin
  IsOctademicalDigit:= (ch >= '0') and (ch <= '7');
end;

function IsDecimicalDigit(ch: Char): Boolean;
begin
  IsDecimicalDigit:= (ch >= '0') and (ch <= '9');
end;

function IsHexDigit(ch: Char): Boolean;
begin
  IsHexDigit:= ((ch >= '0') and (ch <= '9')) or ((ch>='a') and (ch<='f')) or ((ch>='A') and (ch <= 'F'));
end;

procedure WriteBinary(anum: word);
var
  k, i, digits: Integer;
  a: word;
begin
  digits:=1;
  a:=anum;

  while (anum div 2) <> 0 do begin
    anum:=anum div 2;
    digits:=digits + 1;
  end;
  for i:=1 to 16-digits do begin
    write('0');
    if i=4 then write('|');
  end;

  for i:=16-digits+1 to 16 do begin
    if 16-i <> 0 then anum:=a shr (16-i) else anum:=a;
    k:= anum mod 2;
    write(k:1);
    if i=4 then write('|');
  end;
end;

begin
{  repeat
    write('Dvste to ariumhtiko systhma proeleyshs (2, 8, 10, 16) : ');
    readln(sysfrom);
    if ((sysfrom <> 2) and (sysfrom <> 8) and (sysfrom <> 10) and (sysfrom <> 16)) then
      writeln('Lauos systhma. Janaprospauhste...');
  until ((sysfrom = 2) or (sysfrom = 8) or (sysfrom = 10) or (sysfrom = 16));
  repeat
    write('Dvste to ariumhtiko systhma proorismou (2, 8, 10, 16) : ');
    readln(systo);
    if ((systo <> 2) and (systo <> 8) and (systo <> 10) and (systo <> 16)) then
      writeln('Lauos systhma. Janaprospauhste...');
  until ((systo = 2) or (systo = 8) or (systo = 10) or (systo = 16));}


  while (not eof) do begin
    r:=0;
    c:='0';
    while (not eoln) and (IsOctademicalDigit(c)) do begin
      read(c);
      if IsOctademicalDigit(c) then r:=r * 8 + ord(c) - 48;
    end;

    writebinary(r);
    if eof or eoln then writeln else write(' ');
    if eoln then readln;

  end;
end.
