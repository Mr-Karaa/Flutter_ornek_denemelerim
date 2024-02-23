import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //sehiri tutuan bir liste olustur, 4 il ekle hepsini dongu ile ekrana yazdir
  List<String> sehirler = List.filled(4, "");
  print(sehirler);
  sehirler[0] = 'istanbul';
  sehirler[1] = 'ankara';
  sehirler[2] = 'adana';
  sehirler[3] = 'tokat';
  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //keyleri string degerleri dynamic olan map olustur. bu yapiya pc islemci cekirdek listsini ram miktarini ve ssd olup olmadigini bilsiginisini tut ve ekrana yazdir...

  Map<String, dynamic> pc = {
    'cekirdek': 16,
    'ram': 32,
    'ssd var mi': true,
  };
  for (var oankiEntry in pc.entries) {
    print(" bilgiler ${oankiEntry.key} : ${oankiEntry.value}");
  }
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //her elemanında keyler strıng value dynamıc olan map her eleman da ıl ılce plaka sonra lısteyı okunaklı yazssın

  List<Map<String, dynamic>> iller =
      <Map<String, dynamic>>[]; //buyuktur kucuuktur isaretini unutma
  Map<String, dynamic> sehir1 = Map<String, dynamic>();
  sehir1['il_adi:'] = 'tokat';
  sehir1['ilce_listsi:'] = 7; //kullanim sekli 1
  sehir1['plaka:'] = 60;

  Map<String, dynamic> sehir2 = <String, dynamic>{};
  sehir2['il_adi:'] = 'istanbul';
  sehir2['ilce_listsi:'] = 10; //kullanim sekli 1
  sehir2['plaka:'] = 34; //kullanim sekli 2 bu sekilde de yazilabilir

  var sehir3 = <String, dynamic>{};
  sehir3['il_adi:'] = 'amasya';
  sehir3['ilce_listsi:'] = 5; //kullanim sekli 1
  sehir3['plaka:'] = 05; //kullanim sekli 3 bu sekilde de yazilabilir

  iller.add(sehir1);
  iller.add(sehir2);
  iller.add(sehir3);
  iller.add({
    //suslu parantez goruyorsan bu map yapisidir asla unutma
    'il_adi:': 'izmir',
    'ilce_listsi:': 5,
    'plaka:': 35,
  });
  // print(iller[0]['il_adi:']);bu sekilde icerigine de erisebilirsin
  for (var i = 0; i < iller.length; i++) {
    var oankiEleman = iller[i];
    print(
        'listein ${i + 1} elemaninda bulunan sehir adi : ${oankiEleman['il_adi:']} ilce listsi :${oankiEleman['ilce_listsi:']} plaka kodu : ${oankiEleman['plaka:']}');
  }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//5 elemanli 2 farkli liste olustur elemanlar 0-50 rastgele olusturulsun bu elemanlari da tek bir lsiteye aktarin, olusan son listenin elemanlairnin karelerini tutan set yapisi olustur.

  List<int> list1 = List.filled(5, 0); //liste 1 olusturuldu
  var list2 = List.filled(5, 0); //liste 2 olusturuldu
  List<int> toplam = []; //iki listenin birlesecegi bos liste olusturuldu
  var sonSet = <int>{}; //set yapisi olusturuldu

  for (var i = 0; i < 5; i++) {
    //for ile random sayilar olsuturuldu ve listelere eklendi
    list1[i] = Random().nextInt(50);
    list2[i] = Random().nextInt(50);
  }
  print(list1); //lsit 1 yazdirildi
  print(list2); //list 2 yazdierildi
  toplam = [...list1, ...list2]; //toplam adli listeye ikside eklendi

  //toplam.addAll(list2); boyle de yapilabilr
  //toplam.addAll(list1);
  print(toplam);

  for (var gecici in toplam) {
    //for in kullanarak listede gezdik ve toplamda ki sayilari gecici ye atadik
    sonSet.add(
        gecici * gecici); //sonSet add . diyerek karelerini buraya atamis olduk
  }
  print(sonSet); //daha sonra da son set yapsini yazdirdik. ve sonuc ♥

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // kullanicidan alinana int degerli sayilari bir listede tut eger 0 a basilirsa tutulan sayilari ortlamasini al

  int not = 0; //ilk once notu 0 a esitle
  List<int> girilenNot = <int>[]; //girilen notu tutmak icin bir liste olustur
  do {
    //do while dongusu olusturduk
    print(
        'notunuzu giriniz; cikmak icin -1 a basin'); //kullanicidan veri almak icin  cikmak icin bir tus atadik
    not = int.parse(stdin.readLineSync()!); //simdi notu int parse metodu ile stdin diyerek veri girmesini bekliyoruz
    if (not != -1) {
      //eger not -1 esit olmazsa devam et dedik
      girilenNot.add(not); // notlari listeye ekle dedik
    }
  } while (not != -1); //ve dongunun sartini sagladik 0 esit olmamali
  print(
      "girilen not sayisi ${girilenNot.length}"); //kac not girilmis gormek icin bunu yazdik
  double ortalama = elemanOrtalama(girilenNot); //double olarak eleman ortalama olusturduk bu olusturdugumuz yapi main disinda calisacak olan yapi ile iletisim kurmak icin
  print("ortalma ; $ortalama"); //ortalma yi yazdir dedik fakat bundan once mainin altinda tanimlanmis olan parametreler calisacak
}

double elemanOrtalama(List<int> liste) { //double yapisi ile iletisim yapacak elamani atatatik ve dedik ki sana bir liste  gelecek int degerinde ve onun ismide liste dedik
  int toplam = 0; //toplam parametresini 0 a esitledik
  for (int i = 0; i < liste.length; i++) { //for dongusunde listenin uzunligunu 1 arti ve toplami toplamin listenin i ci ekemaniyla toplaina esitle dedik
    toplam = toplam + liste[i];
  }
  return toplam / liste.length; //sonra toplamin uzunluga bolumunu dondur dedik ve mainde ki print ortlama yazdigimiz yere yazdirdik boylece bu soruyu da hallettik
}
