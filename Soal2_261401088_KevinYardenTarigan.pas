program Soal2;
uses crt;
var
  pwrahasia, pwinput : string;
  percobaan : integer;
  berhasil : boolean;

begin
  clrscr;
  { Menentukan password rahasia dan nilai awal }
  pwrahasia := 'akukaya123';
  percobaan := 0;
  berhasil := false;

  repeat
    { Meminta pengguna memasukkan password }
    write('Masukkan password: ');
    readln(pwinput);

    { Setiap input password dihitung sebagai satu percobaan }
    percobaan := percobaan + 1;

    { Memeriksa apakah password benar }
    if pwinput = pwrahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Password salah');

  until percobaan = 3;

  { Jika sudah 3 kali mencoba dan belum berhasil }
  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.
