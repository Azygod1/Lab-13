var A: array[1..100] of integer;
    f,f1: text;
    N, i,min,max: integer;

function ReadFromFile: integer;
var i: integer;
begin
 assign(f, 'D:\text.txt');
 reset(f);
 i := 0;
 while (not eoln(f)) and (not eof(f)) do begin
    i := i + 1;
    readln(f,A[i]);  
    end; 
 close(f);    
 ReadFromFile := i;
end;
Begin
   N := ReadFromFile ;
   max:=A[1];
   for i:=2 to N do
     begin
     if A[i]>max then
       max:=A[i];
     end;
     
   min:=A[1];
  for i:=2 to N do
    begin
     if A[i]<min then
       min:=A[i];
      end;
      
assign(f1, 'D:\text1.txt');
rewrite(f1);

write(f1,'максимальное число: ');
writeln(f1,max); 
write(f1,'минимальное число: ');
writeln(f1,min);    
close(f1);
end.