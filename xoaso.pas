{
	- Giữ nguyến số đầu.
	- Xóa số nhỏ nhất lặp lại
	- Xóa số nhỏ nhất trong các số còn lại
}
uses crt;
var so , fis : string;
	i,n,k:integer;
	a:array[1..32000] of char;
	f:text;

procedure readdata;
	begin;
		assign(f,'IN.INP');
		reset(f);
		readln(f,n,k);
		read(f,so);
		close(f);
		{ --------- }
		fis := so[1];
		delete(so,1,1);
	end;
function snn : char;
	var min : char;
	begin
		min := so[1];
		for i:=1 to length(so) do if so[i] < min then min := so[i];
		snn := min;
	end;
function slll(a:char) : integer;
	var s : integer;
	begin
		s := 0;
		for i := 1 to length(so) do if so[i] = a then s := s + 1;
		slll := s;
	end;
procedure xoaso(b:char);
	var c :integer;
	begin
		c := pos(b,so);
		delete(so,c,1);
		k := k - 1;
	end;
procedure xuli;
	begin
		for i:=1 to n - 1 do a[i] := so[i];
		while (k > 0) do 
			begin
				for i:=1 to slll(snn) do if (k > 0 ) then xoaso(snn);
			end;
		fis := fis + so;
		write(fis);
	end;
begin
	clrscr;
	readdata;
	xuli;
	readln;
end.
