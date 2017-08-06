program 4PolyAddArray(input, output);
const maxN=100;
var p, q, r: array [0..maxN] of real;
    N, i: integer;
begin
  readln(N);
  for i:=0 to N-1 do read(p[i]);
  for i:=0 to N-1 do read(q[i]);
  for i:=0 to N-1 do r[i]:= p[i] + q[i];
  for i:=0 to N-1 do write(r[i]);
  writeln
end.
