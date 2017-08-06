snippet 5PolyMultArray 
for i:=0 to 2*(N-1) do r[i]:=0;
for i:=0 to N-1 do
  for j:=0 to N-1 do
    r[i+j]:=r[i+j]+p[i]*q[j];
