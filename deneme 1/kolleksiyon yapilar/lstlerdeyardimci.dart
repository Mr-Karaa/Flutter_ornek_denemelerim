void main(List<String> args) {
  List<int> sayilar = [11, 5, 3, 8];
  if (sayilar.isNotEmpty) {
    print(sayilar.first); // listedeki ilk sayiyi basar
    print(sayilar.last); // lsitede ki son sayiyi basar
  }
  print(sayilar.firstOrNull); // listede ki ilk rakam mi null mu
  print("bos mu?: ${sayilar.isEmpty}"); // liste dolu mu bos mu
  print("eleman sayisi nedir? : ${sayilar.length}"); // lsitede ki eleman sayisi
  print("anlik ters sira: ${sayilar.reversed}"); //anlik ters sira bastirir

  sayilar.add(45); //lsiteye ekleme yapar (ama en sona)
  print(sayilar);
  sayilar.remove(5); // listede ki soylenen elamani siler
  print(sayilar);
  sayilar.removeAt(1); //listedeki elamnain indexine gore silme yapar
  print(sayilar); //sayilar.clear(); //("listedeki sayilari siler")
  if (sayilar.contains(8)) {
    //icinde belirtilen elaman var mi yok mu onu kontrol eder
    print("evet 8 var ");
  } else {
    print("hayir 8 yok");
  }
  print(sayilar);
  print(sayilar.elementAt(1)); // su indexteki elemani yaz
  print(sayilar.indexOf(8)); //yazilan elemanin indexini ver
  sayilar.add(7);
  sayilar.shuffle(); // sayilari rastglee olarak karistirir
  print(sayilar);
}
