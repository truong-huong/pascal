uses crt;
var i,l,k:integer;
	kq,fi,fo:string;
	a,b:array[1..100] of char;
	c:array[1..100] of integer;
	min,h:char;


procedure doi3;
	begin
		kq := copy(fi,1,1);
		delete(fi,1,1); 
	end;
 
procedure xuat;
	begin
		l:=0;
		for i:=1 to length(fi) do begin
			if fi[i] > fi[1] then begin l:=l+1; b[l] := fi[i]; c[l] := i;  end;
		end;
		min := b[1];
		k := 1;
		for i:=1 to l do if b[i] < min then begin min:=b[i]; k := i; end;

		delete(fi,c[k],1);

		kq := kq + b[k];

 		for i:=1 to length(fi) do
 			for k:= length(fi) downto i do
 				if fi[i] > fi[k] then begin
 					h := fi[i];
 					fi[i] := fi[k];
 					fi[k] := h;
 				end; 


		fi := kq + fi;

		if fi <> fo then write(fi) else write(0);


	end;

begin

	clrscr;
 
	fi := '52146345459';
	fo := fi;
	doi3;
	xuat;

	readln;
end.
