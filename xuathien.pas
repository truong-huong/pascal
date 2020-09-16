uses crt;

var f:text;
	st1,st2,tg:string;
	d,i:integer;

procedure readdata;
	begin
		assign(f,'IN.INP');
		reset(f);
		readln(f,st1);
		read(f,st2);
		close(f);
	end;

begin
	clrscr;
	readdata;
	if length(st2) > length(st1) then begin
		for i:=1 to length(st2) do
			begin
				tg := copy(st2,1,3);
				if st1 = tg then d:=d+1;
				delete(st2,1,1);
				if length(st2) < length(st1) then break;
			end;
	 	write(d);
	end else write(0);
	readln;
end.
