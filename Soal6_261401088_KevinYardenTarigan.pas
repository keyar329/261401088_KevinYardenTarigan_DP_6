program Soal6;
uses crt;

var
  nilaiTugas, nilaiUTS, nilaiUAS : real;
  kehadiran, nilaiAkhir : real;
  indeks : char;

begin
  clrscr;
  { Input nilai }
  write('Masukkan Nilai Tugas : ');
  readln(nilaiTugas);

  write('Masukkan Nilai UTS   : ');
  readln(nilaiUTS);

  write('Masukkan Nilai UAS   : ');
  readln(nilaiUAS);

  write('Masukkan Kehadiran (%) : ');
  readln(kehadiran);

  { Menghitung Nilai Akhir }
  nilaiAkhir := (nilaiTugas * 0.30) +
                (nilaiUTS * 0.30) +
                (nilaiUAS * 0.40);

  { Menentukan indeks huruf }
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  { Menampilkan hasil }
  writeln;
  writeln('===== HASIL PENILAIAN =====');
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf : ', indeks);

  { Menentukan status kelulusan }
  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    writeln('Status      : LULUS')
  else
    writeln('Status      : TIDAK LULUS');

end.