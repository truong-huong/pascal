program daycon;
uses crt;
const fi = 'IN.INP';
	fo = 'OUT.OUT';
var n,i,j,l,k:integer;
	f:text;
	m1,m2:longint;
	a:array[1..32000] of integer;
	b:integer;

procedure doc;
	begin
		assign(f,fi);
		reset(f);
		read(f,n,m1);
		for i:=1 to n do read(f,a[i]);
	end;

procedure xuli;
	begin
		k := 0;
		assign(f,fo);
		rewrite(f);
		for i:=1 to n do
			begin 
				j := i ;
				m2 := 0;
				while (j <= n) and (m2 < m1) do
					begin
						m2 := m2 + a[j];
						j := j + 1; 
					end;
				if (m2 = m1) then begin
					k := 1;
					for l := i to j - 1 do write (f,a[l],' ');
					writeln(f);
				end;
				
			end;
		if k = 0 then write(f,0);
		close(f);
	end;

begin
	clrscr;
	doc;
	xuli;
	readln;
end.
