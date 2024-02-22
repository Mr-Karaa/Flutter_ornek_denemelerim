void main(List<String> args) {
  // anahataer deger adi altinda tutulur set gibi sirasiz saklaar
  // herhnagi v=bir veeri turu kullanabilir onemli olan key degeri unique yani essiz olmalli
  //sabit degil dinamik yapilirdir
  Map<String, int> alanKodlari = {
    // int ve string olarak bir map yappisi
    "ankara": 312,
    "bursa": 224,
    "istanbul": 212,
  };
  print(alanKodlari);
  print(alanKodlari["istanbul"]);
  print("////////////////////**************////////////////");
  Map<String, dynamic> melih = {
    //string ve dynamic olan bir map yapisi
    "soyadi:": "kara",
    "yas": 21,
    "bekar mi": true,
  };
  // not genelde flutterde en cok string ve dynamic gorucegiz...
  print(melih);
  print(melih["yas"]);

  print("////////////************////////////////");
  //bos bir map yapisi olusturmak icin gerekenler;
  Map<String, dynamic> sayi = Map();
  Map<String, dynamic> sayi1 = {}; //buraya eleman eklemek icin de
  sayi1["zam"] = 12;
  print(sayi);
  print(sayi1);

  print("/////////************///////////////");

  for (String oankiAnahtar in melih.keys) {
    // for ile icinde gezinme
    print(oankiAnahtar);
    print(melih[oankiAnahtar]);
  }

  print("/////////************//////////");
  for (dynamic deger in melih.values) {
    //dynamic olarak da degeri gezebilirsin
    print(deger);
  }

  print("/////////////************///////////");
  for (var element in melih.entries) {
    //entires ile de keyini ve dgeerini ogrenebilirsin
    print("Key : ${element.key} /// \n degeri : ${element.value}");
  }
  
}
