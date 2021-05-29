program ConvertNumber;
var
  num, f: Real;
  i, m: Integer;
  a: Integer;
  usrch: Char;
  d: array [0..100] of integer;
begin
  repeat
  write('Dwste ton ariqmo sto dekadiko susthma: ');
  readln(num);
  a:=trunc(num);
  i:=0;
  m:=round(ln(a)/ln(2))+1;

  repeat
    d[i]:=a mod 2;
    a:=a div 2;
    i:=i + 1;
  until i >= m;
  for m:=i-1 downto 0 do write(d[m]);
  write(',');

  f:=frac(num);
  i:=-1;
  repeat
    write(trunc(2*f));
    f:=frac(2*f);
    i:=i-1;
  until i <= -10;
  writeln;
  write('Continue ? ');
  readln(usrch);
  until (usrch = 'n') or (usrch = 'N');
end.