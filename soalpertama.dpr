program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var 

    i,j,n,simpan : integer;
    bil : array [0..100] of integer;

begin
  { TODO -oUser -cConsole Main : Insert code here }

  // Input Banyak Data
    writeln('=====================================');
    write('Banyak Data : '); readln(n);

    // Input Bilangan
    writeln('=====================================');
    for i := 0 to n-1 do
        begin
            readln(bil[i]);
        end;

    // Pengurutan
    writeln('=====================================');
    write('Barisan : ');
    for j := 0 to n-2 do
    for i := 0 to n-2 do
        begin
            if bil[i] > bil[i+1] then
                begin
                    simpan := bil[i];
                    bil[i] := bil[i+1];
                    bil[i+1] := simpan;
                end;
        end;
    for i := 0 to n-1 do 
        begin
            write(Bil[i],' ');
        end;
        writeln;

    // Ouput 
    writeln('=====================================');
    write('Hasil : ');
    for i := 0 to n-1 do
        begin
            if (i mod 2 = 0) then
                begin
                    write(bil[i],' ');
                end
            else 
                begin
                    write('# ');
                end;
        end;
        writeln;

    writeln('=====================================');
    readln;

end.
