program soal1;
uses crt;
{ Program total belanja toko buku dengan diskon }

var
  N, i : integer;
  harga, total : longint;
  persen, diskon, totalbayar : real;

begin
  clrscr;
  { 1. Minta jumlah barang }
  write('Masukkan jumlah barang yang ingin dibeli : ');
  readln(N);

  { 2. Nilai awal total harus 0 sebelum dijumlahkan }
  total := 0;

  { 3. Input harga tiap barang, tampilkan rincian, lalu akumulasi }
  writeln;
  writeln('--- Input Harga Barang ---');
  for i := 1 to N do
  begin
    write('Harga barang ke-', i, ' : Rp');
    readln(harga);
    total := total + harga;
  end;

  { 4. Tentukan persen diskon (disimpan sebagai desimal) }
  if total < 100000 then
    persen := 0
  else if total < 500000 then
    persen := 0.1
  else
    persen := 0.2;

  { 5. Hitung diskon dan total bayar }
  diskon := total * persen;
  totalbayar := total - diskon;

  { 6. Tampilkan hasil }
  writeln;
  writeln('===== RINCIAN BELANJA =====');
  writeln('Jumlah barang        : ', N);
  writeln('Total sebelum diskon : Rp', total);
  writeln('Diskon               : ', persen * 100:0:0, '%');
  writeln('Besar diskon         : Rp', diskon:0:0);
  writeln('Total bayar akhir    : Rp', totalbayar:0:0);
end.