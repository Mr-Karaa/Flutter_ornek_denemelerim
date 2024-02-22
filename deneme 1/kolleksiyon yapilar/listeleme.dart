// Bu Bolum Listeler ile alakali olacak
//--------------Liste nasil Yazilir-----------------------//
void main(List<String> args) {
  print("\n //////////////liste nasil yazilir///////////////////// \n");
  int sayi = 9;
  List<int> sayilar = List.filled(5, 7, growable: true);
  sayilar[0] = 4;
  sayilar[1] = 5;
  sayilar[2] = 3;
  sayilar[3] = 94;
  print(sayilar);
  print(sayilar.length);
  print(sayi);

//-------------Liste string de olabilir------------------------//
  print("\n /////////////string liste kullanimi/////////////////////\n ");
  List<String> isimler = List.filled(2, "sari");
  isimler[0] = 5.toString();
  isimler[1] = "melih";
  print(isimler);

//-------------liste karisik da olabilir ----------------------//
  print("\n //////////////her ikiside olursa/////////////////////\n ");
  List karisik = List.filled(5, 1);
  karisik[0] = 45;
  karisik[1] = 'Kara';
  karisik[2] = true;
  print(karisik);
//-----------------liste arasi gezinme---------------------//
  print("\n ////////////////////listede gezinme nasil olur/////////\n ");

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 8;
    print(sayilar[i]);
  }
  print("***********************");
  for (int oankiEleman in sayilar) {
    print(oankiEleman);
  }
}
