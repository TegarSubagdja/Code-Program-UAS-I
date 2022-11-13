program soalkedua;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var

    i,n : integer;
    bil : array [1..100] of integer;
    nilai: array [1..100] of boolean;
    besar, kecil : boolean;

begin

    // Input Banyak Bilangan 
    writeln('=====================================');
    write('Banyak Bilangan : '); readln(n);

    // Input Bilangan 
    writeln('------------------------------------');
    for i := 1 to n do 
        begin
            write('Bil-',i,' : '); readln(bil[i]);
        end;

    // Proses Pembandingan
    for i := 1 to n-1 do 
        begin
            if bil[i] > bil[i+1] then
                begin
                    nilai[i] := true;
                end
            else 
                begin
                    nilai[i] := false;
                end;
        end;

    besar := true;
    kecil := false;
    for i := 1 to n-1 do 
        begin
            besar := nilai[i] and besar;
            kecil := nilai[i] or kecil;
        end;

    // Ouput Hasil Pembandingan
    writeln('=====================================');
    if besar = true then 
        begin
            writeln('Besar ke Kecil');
        end
    else if kecil = false then 
        begin
            writeln('Kecil ke Besar');
        end
    else 
        begin
            writeln('Bilangan Acak');
        end;
    writeln('=====================================');
    readln;

    

end.
 