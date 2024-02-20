
void main(List<String> args) {
  double sayi1 = 5;
  double sayi2 = 4;
  double sayi3 = 9;
  double sonuc = (sayi1 + sayi2 + sayi3) / 3;
  print("sonuc:$sonuc");

  print("-------------------------------------------");

  int kenar1 = 5;
  int kenar2 = 5;
  int kenar3 = 5;
  if ((kenar2 != kenar3) && (kenar2 != kenar1) && (kenar3 != kenar1)) {
    print("ozel deil");
  } else if ((kenar2 == kenar1) && (kenar1 == kenar3)) {
    print("es kenar ucgendir");
  } else {
    print("ikizkenar");
  }
  print("------------------------------------------------");

  double vize = 48;
  double fnal = 140;
  print("vize notu:$vize");
  print("final notu:$fnal");
  sonuc = vize * 0.40 + fnal * 0.60;
  print("sonucunuz:$sonuc");
  if (sonuc <= 50) {
    print("sinifta kaldiniz gecmis olsun....");
  } else {
    print("tebrikler gectiniz ve notunuz :$sonuc");
    if ((sonuc >= 90) && (sonuc < 100)) {
      print("aa");
    } else if ((sonuc >= 80) && (sonuc <= 90)) {
      print("bb");
    } else if ((sonuc >= 70) && (sonuc <= 80)) {
      print("cc");
    } else if ((sonuc >= 60) && (sonuc <= 70)) {
      print("dd");
    } else if ((sonuc > 50) && (sonuc <= 60)) {
      print("ee");
    } else {
      print("yanlis giris yaptiniz notu tekrar bakiniz");
    }
  }

  print(
      "*******************************************************--------------");

  String ad = "melih";

  for (int i = 0; i < 5; i++) {
    print("$ad");
  }
  int a = 0;
  while (a < 5) {
    print(ad);
    a++;
  }
  print("++--");
  int b = 0;
  do {
    print('$ad');
    b++;
  } while (b < 5);

  print("----------------------------------------------------------------");


  for (int i = 0; i < 100; i++) {
    if ((i % 3 == 0) && (i % 5 == 0)) {
      
      print("15e tam bolinen sayi :$i 'nin karesi: ${i*i}");
    }
  }
}
