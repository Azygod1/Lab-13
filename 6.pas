var
   filetext: text;
   a:string;
   i,n,ii,k:integer;
begin
writeln('введите n и k:');
Read(n,k);
assign(filetext,'D:\text.txt');
rewrite(filetext);
for i:=1 to n do
    begin
    for ii:=1 to k-1 do
    write(filetext,'*');
    writeln(filetext,'*');
    end;
close(filetext);
reset(filetext);
for i:=1 to 10 do begin
    readln(filetext,a);
    writeln(a);
end;
close(filetext);
end.