import 'dart:io';

void main(List<String> args) {
  String ad = "melih";
  String soyad = "kara";
  int yas = 21;

  print(
      "merhaba benim adim $ad $soyad yasim $yas ismimdeki karakter sayisi ${(ad + soyad).length}");

  int ub = 3;
  int ui = 4;
  int uu = 5;
  print("ucgenin kenarlar toplami ${uu + ui + ub}");

  int notDegeri = 80;
  if (notDegeri >= 90 && notDegeri <= 100) {
    print("aa");
  } else if (notDegeri >= 80) {
    print("ba");
  } else {
    print("kaldin");
  }

  print("adini gir");
  String? isim = stdin.readLineSync();
  print("girdigin isim $isim");

  print("yas gir");
  int yass = int.parse(stdin.readLineSync()!);
  print("yas : $yass");
}
