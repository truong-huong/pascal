program giainenxau;
uses crt;
var f:text;
	g:string;
	a,b:char;
	dapan : byte;
	datalength : integer;
	data : array[1..10000] of char;
function xlgiainen(a,b:char):string;
	var return : string;
		c,i:byte;
		d:integer;
	begin
		val(a,c,d);
		return := '';
		for i:=1 to c do return := return + b ;
		xlgiainen := return;

	end;

procedure xlnen;
	var i,sl :integer;
		kt:char;
		kk:string;
	begin
		g := '';
		sl := 1;
	 	kk := '';
		for i :=1 to datalength do
			if data[i] = data[i+1] then sl := sl + 1 else 
				begin
				 	Str(sl,kk);
					g := g + kk + data[i];
					sl := 1;

				end;

	end;


procedure nen;
	var sl,i:integer;
		kt : char;
		
	begin
		g := '';
		assign(f,'IN.INP');
		reset(f);

		i := 1;
		while not eof(f) do
			begin
				read(f,kt);
				data[i] := kt;
				i := i +1;
			end;
		datalength := i ;

		close(f);

		xlnen;

	end;
procedure giainen;
	var xau : string;
	begin
		g := '';
		assign(f,'IN.INP');
		reset(f);
		while not eof(f) do
			begin
				read(f,a,b);
				g := g + xlgiainen(a,b);
			end;
			close(f);


	end;
begin
	clrscr;
	write('Chon nen(0) hay giai nen(1): ');
	readln(dapan);
	if dapan = 1 then giainen else nen;
	writeln('Ket qua : ', g);
	readln;
end.

