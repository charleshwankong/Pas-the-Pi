program 6PolyMultLL(input, output);
type link = ^node;
     node = record c: real; next: link end;
var N: integer; z: link;
 function readlist(N: integer): link;
procedure writelist(r: link);
function add(p, q: link): link;
begin
  readln(N); new(z);
  writelist(add(readlist(N), readlist(N)))
end.
