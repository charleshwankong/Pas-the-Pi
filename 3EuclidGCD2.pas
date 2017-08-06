function 3EuclidGCD2(u, v:integer):integer;
  var t: integer;
  begin
  while v<>0 do
    begin t:=u mod v; u:= v; v:= t end;
  gcd:= u
  end;
