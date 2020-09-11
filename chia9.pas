program chia9;
uses crt;
const fi = 'IN.INP';
	fo = 'OUT.OUT';
var f : text;
	m,i,k:integer;
	n:char;
	t:longint;
	a:array[1..100] of integer;


procedure doc;
	var code : integer;
	begin
		assign(f,fi);
		reset(f);
		readln(f,m);

		for i:=1 to m do begin
			read(f,n);
			val(n,k,code);
			if code = 0 then a[i] := k ;
		end;
		close(f);
	end;

procedure xuli;
	begin
		for i:=1 to m do 
			begin
				{ ap dung quy tac chia het cho 9 }
				t:=t+a[i];

			end;
		assign(f,fo);
		rewrite(f);
		write(f,t mod 9);
		close(f);	 
	end;

begin
	clrscr;
	doc;
	xuli;
	readln;
end.
