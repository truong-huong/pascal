program dt;
uses crt;
const fi = 'IN.INP';
	fo = 'OUT.OUT';
var f : text;
	i,t :integer;
	str : string;

procedure doc;
	begin
		assign(f,fi);
		reset(f);
		read(f,str);
		close(f);
	end;

procedure xuli;
	begin
		for i:=1 to length(str) do if str[i] in ['0'..'9'] then t:=t+1;
		assign(f,fo);
		rewrite(f);
		write(f,t);
		close(f);
	end;

begin
	clrscr;
	doc;
	xuli;
	readln;
end.
