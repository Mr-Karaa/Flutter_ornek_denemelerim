void main(List<String> args) {
  var listem = <String>[];
  var mySet = <String>{
    'melih'
  }; // eger tek bir deger girersem set olur deger belirtmek istiyorsam da ,string vb.> yazmalisin
  var myMap = <String, dynamic>{
    'kara': 44
  }; //boyle yazarsam da map ifadesi olusur yine belirmek icin <artik deger neyse> yazip belirtebilirsin.

  var tekSayilar = [1, 3, 5, 7];
  var ciftSayilar = [2, 4, 6, 8];
  var sonListe = [...tekSayilar, ...ciftSayilar];

  //3 nokta koyup kumeyi yazarsak ilk once girilen listeyi 2.olarak da sonra yaizlan lsiteyi icine alip print diyince de yazdiracak

  // sonListe.addAll(tekSayilar + ciftSayilar);   // normalde boyle yapariz ve bu yol uzun
  print(sonListe);

  var map1 = {'ad': 'kara'}; //ayni islemi mapde de kullanabiliriz
  var map2 = {'yas': 21};
  var sMap = {...map1, ...map2};
  print(sMap);

  var set1 = {6}; //ayni islemi set de de kullanabilirz
  var set2 = {"ali", "ahmet"};
  var set3 = {"ali"};
  var set4 = {"ahmet"};
  var sSet = {...set1, ...set2, ...set3, ...set4};
  print(sSet);

  print(mySet);
  print(listem);
  print(myMap);
}
