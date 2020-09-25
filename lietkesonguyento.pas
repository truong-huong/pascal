uses crt;
var j,b,i,n:integer;
	a:array[1..10000] of boolean;
begin
	clrscr;
	write('Nhap so can kiem tra: ');readln(n);
	fillchar(a,sizeof(a),true);
	for i:=2 to round(sqrt(n)) do if a[i] = true then begin
		b:=0;
		while ((sqr(i) + b*i ) <= n) do begin
			a[(sqr(i) + b*i)] := false;
			b:=b+1;
		end;
	end;
	for i:=1 to n do write(a[i],' ');
	writeln('');
	for i:=1 to n do if a[i] = true then write(i,' ');
	readln;
end.
