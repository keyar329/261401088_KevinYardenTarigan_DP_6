program Soal10;
uses crt;

var
  nomor : integer;

begin
  clrscr;
{ Input nomor hari (1-7) }
  write('Masukkan nomor hari (1-7): ');
  readln(nomor);
  
{ Menentukan nama hari berdasarkan nomor hari }
  case nomor of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
    else
      writeln('Nomor hari tidak valid.');
  end;
end.