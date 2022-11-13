program soalketiga;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var

    i,j,n,savenilai : integer;
    savename : string;
    nama : array [1..100]  of string;
    nilai : array [1..100] of integer;

begin

    // Input Banyak nilaiangan 
    writeln('=====================================');
    write('Banyak Mahasiswa : '); readln(n);

    // Input Nama dan Nilai 
    writeln('=====================================');
    for i := 1 to n do 
        begin
            write('Nama : '); readln(nama[i]);
            write('Nilai : '); readln(nilai[i]);
            writeln('------------------------------------');
        end;

    // Proses Pembandingan
    for j := 1 to n-1 do
    for i := 1 to n-1 do 
        begin
            if nilai[i] < nilai[i+1] then
                begin
                    savenilai := nilai[i];
                    nilai[i] := nilai[i+1];
                    nilai[i+1] := savenilai;

                    savename := nama[i];
                    nama[i] := nama[i+1];
                    nama[i+1] := savename;
                end;
        end;

    // Ouput Hasil Pengurutan 
    for i := 1 to n do 
        begin
            writeln('Nama : ', nama[i]);
        end;
    writeln('=====================================');
    readln;
end.
