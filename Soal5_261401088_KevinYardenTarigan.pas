program Soal5;
uses crt;
var
  M, N : integer;
  i, j : integer;
  nilai, totalNilai, rataRata : real;
  jumlahLulus, jumlahTidakLulus : integer;

begin
  clrscr;
  { Input jumlah mahasiswa dan jumlah tugas }
  write('Masukkan jumlah mahasiswa: ');
  readln(M);

  write('Masukkan jumlah tugas: ');
  readln(N);

  jumlahLulus := 0;
  jumlahTidakLulus := 0;

  writeln;

  { Perulangan untuk setiap mahasiswa }
  for i := 1 to M do
  begin
    totalNilai := 0;

    writeln('--- Mahasiswa ke-', i, ' ---');

    { Input nilai setiap tugas }
    for j := 1 to N do
    begin
      write('Masukkan nilai tugas ke-', j, ': ');
      readln(nilai);

      totalNilai := totalNilai + nilai;
    end;

    { Menghitung rata-rata }
    rataRata := totalNilai / N;

    writeln('Rata-rata: ', rataRata:0:2);

    { Menentukan kelulusan }
    if rataRata >= 65 then
    begin
      writeln('Status: LULUS');
      jumlahLulus := jumlahLulus + 1;
    end
    else
    begin
      writeln('Status: TIDAK LULUS');
      jumlahTidakLulus := jumlahTidakLulus + 1;
    end;

    writeln;
  end;

  { Menampilkan rekapitulasi akhir }
  writeln('===== REKAPITULASI =====');
  writeln('Jumlah mahasiswa LULUS       : ', jumlahLulus);
  writeln('Jumlah mahasiswa TIDAK LULUS : ', jumlahTidakLulus);

end.