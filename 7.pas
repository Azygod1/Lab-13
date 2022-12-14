var
  F_in,F_out: Text;
  Name,S: String;
 
begin
 
 
 Assign(F_in,'D:\text.txt');
 Reset(F_in);
 Assign(F_out,'D:\text1.txt');
 Rewrite(F_out);
 

 While not eof(F_in) do
  begin
   Readln(F_in,S);
   Writeln(F_out,S);
  end;
  Write('Введите строку: ');
 Readln(S);
  Writeln(F_out,S);
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