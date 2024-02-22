// bu kisim cok onemli cunku burayi cok kullanacagiz..

// boyutu sabit olmayan lsiteler buyuup kuculeblien listeler
void main(List<String> args) {
  //1. yontem olarak boyle kulanilabilir
  List<int> sayilar = [];
  sayilar.add(7);
  sayilar.add(8);
  sayilar.add(4);
  sayilar.add(6);
  print(sayilar);

  //ek olarak belki [1,2,4] diye bir listeniz var ve yeni bir eleman eklemek istiyorusnz hemen orada da asagidaki gibi yapalim
  List<int> sayilar2 = [1, 5, 12];
  sayilar2.add(77);
  print(sayilar2);
  // list. filled kullanimi groawble true olursa buyuyup kuculebilir ve kolayca lsite olsuturabnilrsin

  List<int> sayilar3 = List.filled(5, 1, growable: true);
  sayilar3.add(88);
  print(sayilar3);
  print(sayilar3.length);
}
