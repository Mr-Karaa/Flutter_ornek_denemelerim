

void main(List<String> args) {
  print("1.notu gir gir");
  int not1 = int.parse(stdin.readLineSync()!);
  print("2.notu gir");
  int not2 = int.parse(stdin.readLineSync()!);
  double sonuc = (not1 + not2)/2;
  print("sonucunuz $sonuc");

  print("programa hosgeldinn ♥");
  print("lutfen ilk notunu gir ;");
  int not1 = int.parse(stdin.readLineSync()!);
  print("not 1 $not1");
  int not2 = int.parse(stdin.readLineSync()!);
  print("not2 $not2'dir onayliyormsunuz:");
  double cevap = not1 + not2 / 2;
  print("ortalama $cevap");

  print(hacimHesapla(8, 9, 10));
}

int hacimHesapla(kenar1, kenar2, yukseklik) {
  return kenar1 * kenar2 * yukseklik;
}
