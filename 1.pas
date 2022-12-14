var
  F_in,F_out: Text;
  line,s: string;
  K,i:integer;
 
begin
 Write('Введите номер строчки перед которой нужно вставиь пустую строку: ');
 Readln(K);
 Assign(F_in,'D:\text.txt');
 Assign(F_out,'D:\text1.txt');
 Reset(F_in);
 Rewrite(F_out);
 
 i:=0;
 While not eof(F_in) do
  begin
   Readln(F_in,line);
   inc(i);
   if i<>K then 
     Writeln(F_out,line)
   else
     begin
     Writeln(F_out,'');
     Writeln(F_out,line);
     end;
  end;
 //переписывает из доп файла в основной
 Close(F_in);
 Close(F_out);
 Rewrite(F_in);
 Reset(F_out);
 While not eof(F_out) do
  begin
   Readln(F_out,S);
   Writeln(F_in,S);
  end;
 Close(F_in);
 Close(F_out);
 
end.