program Soal4;
uses crt;
var
  pilihan : integer;
  a, b, hasil : real;
  hasilDiv, hasilMod : integer;
  lagi : char;

begin
  clrscr;
  repeat
    writeln('===== KALKULATOR SEDERHANA =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    { Meminta dua angka operand }
    write('Masukkan angka pertama: ');
    readln(a);
    write('Masukkan angka kedua: ');
    readln(b);

    case pilihan of
      1:
        begin
          hasil := a + b;
          writeln('Hasil penjumlahan = ', hasil:0:2);
        end;

      2:
        begin
          hasil := a - b;
          writeln('Hasil pengurangan = ', hasil:0:2);
        end;

      3:
        begin
          hasil := a * b;
          writeln('Hasil perkalian = ', hasil:0:2);
        end;

      4:
        begin
          if b <> 0 then
          begin
            hasil := a / b;
            writeln('Hasil pembagian = ', hasil:0:2);
          end
          else
            writeln('Error: tidak dapat membagi dengan nol.');
        end;

      5:
        begin
          hasilDiv := trunc(a) div trunc(b);
          hasilMod := trunc(a) mod trunc(b);
          writeln('Hasil DIV = ', hasilDiv);
          writeln('Hasil MOD = ', hasilMod);
        end;

      else
        writeln('Pilihan tidak valid.');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(lagi);
    writeln;

  until (lagi = 'T') or (lagi = 't');

end.
