function 2EuclidGCD(u, v:integer): integer;
  begin
  if v=0 then gcd:=u
         else gcd:= gcd(v, u mod v)
  end;
