program Soal3;
uses crt;

var
  N, i, pilihan : integer;

begin
  clrscr;
  { Meminta batas deret dan pilihan kategori }
  write('Masukkan nilai N: ');
  readln(N);

  writeln('Pilih kategori deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan: ');
  readln(pilihan);

  writeln;
  writeln('Hasil deret:');

  { Perulangan angka dari 1 sampai N }
  i := 1;

  while i <= N do
  begin
    { Jika pilihan ganjil, lewati angka genap }
    if (pilihan = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    { Jika pilihan genap, lewati angka ganjil }
    if (pilihan = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    { Lewati angka yang merupakan kelipatan 5 }
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    { Tampilkan angka yang lolos penyaringan }
    write(i, ' ');

    i := i + 1;
  end;

  writeln;
end.