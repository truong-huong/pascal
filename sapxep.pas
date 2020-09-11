program catso;
uses crt;
const fi = 'IN.INP';
	fo = 'OUT.OUT';

type rec = record
	 	st:string;
	 	sl:integer;
	 end;

var f : text;
	a:array[1..200] of rec;
	n,j,i:integer;


procedure doc;
	 begin
	 	assign(f,fi);
	 	reset(f);
	 	readln(f,n);
	 	for i:=1 to n do 
	 		begin
	 			readln(f,a[i].st);
	 			a[i].sl := length(a[i].st);
	 		end;
	 end;

procedure xuli;
	var mi : rec;
	begin
		for i := 1 to n-1 do
			for j := i + 1 to n do
				if a[i].sl > a[j].sl then begin
					mi := a[i] ;
					a[i] := a[j];
					a[j] := mi ;
				end;

		assign(f,fo);
		rewrite(f);
		for i:=1 to n do writeln(f,a[i].st);		
		close(f);

	end;

begin
	clrscr;
	doc;
	xuli;
	readln;
end.
