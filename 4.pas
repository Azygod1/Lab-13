var
  f, f1: text;
  n, i, s, ch,ii: integer;



begin
  assign(f, 'D:\text.txt');
  reset(f);
  readln(f, n);
  for ch := 1 to n do
  begin
    i:=0;
    for ii:=1 to ch do
      if ch mod ii = 0 then
        i+=1;
    if i = 5  then
      s += ch; 
  end;
  
  assign(f1, 'D:\text1.txt');
  rewrite(f1);
  write(f1, s);   
  close(f1);
end.