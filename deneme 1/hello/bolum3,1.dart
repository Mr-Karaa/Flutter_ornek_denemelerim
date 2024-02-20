import 'dart:io';

void main(List<String> args) {
  print("lutfen ilk notunuzu girniz:");
  double not1 = double.parse(stdin.readLineSync()!);
  print("Ilk notunuz $not1 ' dir.");
  print("lutfen 2. notunuzu giriniz: ");
  double not2 = double.parse(stdin.readLineSync()!);
  print("2.notunuz $not2");
  double sonuc = ((not1 * 0.40) + (not2 * 0.60));
  print('not sonuclariniz : $sonuc');
  if (sonuc >= 90 && sonuc <= 100) {
    print("notunuz aa olarak kayda alinmistir.");
    print("isleme devam etmek istiyormusunz:");
    bool evet = true;
    bool hayir = false;
    print("devam etmek icin 1'i \n islem sonlandirmak icin 2 'yi seciniz:");
    if (evet == true) {
      print("isleme devam ediyoruz");
      print("isminiz nedir?:");
      String? isim = stdin.readLineSync();
      print("$isim");
      print("soyisminz nedir?:");
      String? soyIsim = stdin.readLineSync();
      print("$soyIsim");
      print("yasiniz nedir?:");
      int yas = int.parse(stdin.readLineSync()!);
      print("$yas");
    } else if (hayir == false)
      () {
        print(
            "isleminizi sonlandiriyoruz bizi tercih ettiginiz icin tesekkurler..:)");
      };
    else {
      print('yanlis tuslama yapildi..');
    }
    ;
  } else if (sonuc >= 80 && sonuc < 90) {
    print("notunuz bb");
  } else if (sonuc >= 70 && sonuc < 80) {
    print("notunuz cc");
  } else if (sonuc >= 60 && sonuc < 70) {
    print("notunuz dd");
  } else if (sonuc >= 50 && sonuc < 60) {
    print("notunuz ee");
  } else {
    print("yanlis not girisi");
  }
}
