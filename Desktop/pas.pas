//fpc 3.0.0

program lladd(input, output);
type 
    link = ^node;
    node = record
        c: integer;
        next: link
        end;
var 
    N: integer;
    z: link;
    
function readlist(N: integer): link;
    var t: link; j: integer;
    begin
    t:=z;
    for j:=0 to N-1 do
        begin
        new(t^.next);
        t:=t^.next;
        read(t^.c)
        end;
    t^.next := z;
    readlist := z^.next;
    z^.next := z
    end;

function add(p,q: link): link;
    var t: link;
    begin
    t:=z;
    repeat
        new(t^.next); (* create the node first *)
        t:=t^.next; (*assign current t to t's next *)
        t^.c := p^.c + q^.c; (* assign value to current t *)
        p := p^.next; q := q^.next; (* assign current value to next value *)
    until (p=z) and (q=z); (*until last node z is reached *)
    t^.next := z; (* last node t's next is the first node--a full circle *)
    add := z^.next (*return z node's next *)
    end;

procedure writelist(r: link);
    begin
    while r<>z do
        begin 
        write(r^.c);
        r := r^.next; 
        end;
    writeln
    end;
    

begin
    readln(N);
    new(z);
    writelist(add(readlist(N),readlist(N)))
end.

