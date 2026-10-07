program Soal8;
uses crt;

var
  golongan : char;
  jamKerja, jamLembur : integer;
  gajiPokok, lembur, bonus, totalGaji : longint;

begin
  clrscr;
  { Input golongan dan jumlah jam kerja }
  write('Masukkan golongan karyawan (A/B/C): ');
  readln(golongan);

  write('Masukkan total jam kerja per minggu: ');
  readln(jamKerja);

  { Menentukan gaji pokok berdasarkan golongan }
  case golongan of
    'A', 'a':
      gajiPokok := 1500000;

    'B', 'b':
      gajiPokok := 2000000;

    'C', 'c':
      gajiPokok := 2500000;

    else
      begin
        writeln('Golongan tidak valid.');
        exit;
      end;
  end;

  { Menghitung lembur jika jam kerja lebih dari 40 jam }
  if jamKerja > 40 then
  begin
    jamLembur := jamKerja - 40;
    lembur := jamLembur * 20000;
  end
  else
  begin
    jamLembur := 0;
    lembur := 0;
  end;

  { Bonus khusus golongan C jika jam kerja lebih dari 50 jam }
  bonus := 0;

  if ((golongan = 'C') or (golongan = 'c')) and (jamKerja > 50) then
    bonus := 100000;

  { Menghitung total gaji }
  totalGaji := gajiPokok + lembur + bonus;

  { Menampilkan rincian gaji }
  writeln;
  writeln('===== RINCIAN GAJI =====');
  writeln('Golongan  : ', golongan);
  writeln('Gaji Pokok: Rp', gajiPokok);
  writeln('Lembur    : Rp', lembur);
  writeln('Bonus     : Rp', bonus);
  writeln('Total Gaji: Rp', totalGaji);

end.