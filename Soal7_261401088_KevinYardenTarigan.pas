program Soal7;
uses crt;

var
  kode : char;
  lamaParkir, tarif : longint;

begin
clrscr;
  { Input kode kendaraan dan lama parkir }
  write('Masukkan kode kendaraan (M/K/B): ');
  readln(kode);

  write('Masukkan lama parkir (jam): ');
  readln(lamaParkir);

  { Menentukan tarif berdasarkan kode kendaraan }
  case kode of
    'M', 'm':
      begin
        { Mobil }
        if lamaParkir > 10 then
          tarif := 30000
        else if lamaParkir = 1 then
          tarif := 5000
        else
          tarif := 5000 + ((lamaParkir - 1) * 3000);
      end;

    'K', 'k':
      begin
        { Motor }
        if lamaParkir > 10 then
          tarif := 10000
        else if lamaParkir = 1 then
          tarif := 2000
        else
          tarif := 2000 + ((lamaParkir - 1) * 1000);
      end;

    'B', 'b':
      begin
        { Bus }
        if lamaParkir > 10 then
          tarif := 50000
        else if lamaParkir = 1 then
          tarif := 10000
        else
          tarif := 10000 + ((lamaParkir - 1) * 5000);
      end;

    else
      begin
        writeln('Kode kendaraan tidak valid.');
        exit;
      end;
  end;

  { Menampilkan hasil }
  writeln;
  writeln('===== RINCIAN PARKIR =====');
  writeln('Kode kendaraan : ', kode);
  writeln('Lama parkir    : ', lamaParkir, ' jam');
  writeln('Total tarif    : Rp', tarif);

end.