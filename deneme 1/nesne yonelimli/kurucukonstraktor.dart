import 'dart:async';

void main(List<String> args) {
  //ilk once taslagimizi olusturalim
  //class araba taslak orayi incele ilk once
  Araba mercedes = Araba(1998, "mercedes w124 series", false);
  //boyle diyerek kutucugu olusturduk simdi bunun icerisne gerekn bilgileri ekleyelim
/*   mercedes.modelYili =   //1. yol olarak bu kullanilabilir kolaylik olarak ta
      1998; //burada mercede "." diyerek yazmis oldugumuz model yili marka ve manuelmi bilgilreini dolduralim
  mercedes.marka = "benz";
  mercedes.manuelMi = false; */
  mercedes
      .bilgileriSoyle(); //yazarak terminalde yaptigimiz islemleri gorebilirz ayni zamand adiyelim guncelleme yapmak sitedik:
  mercedes.manuelMi = true; //guncel bilgiyi yazip
  print("bilgiler guncelsstirildi");
  mercedes.bilgileriSoyle(); // yazdirirsak (f5)
  //bu sekilde de guncelleme yapabilir bilgileri degistirebilirz
  var renault = Araba(2012, "renault clio",
      false); //mesela burayi null birakalim tam olrak nasilmis gorelim
  renault.bilgileriSoyle();
  var bmw = Araba(2021, "bmw i series", false);
  var opel = Araba.markasizAraba(2013,
      true); //adlandirilmis oldugu icin yine esitlerken adlandirilmis bolumu koymamiz lazim araba. diyerek
  var nissan = Araba.modelsiz("navara", true);
  print(
      "////////////////"); //burada aslinda altaki yas hesapla metotdunu calistirdik
  bmw.yasHesapla();
  print(
      "////////////////"); //burada aslinda altaki yas hesapla metotdunu calistirdik
  mercedes.yasHesapla();
  print(
      "////////////////"); //burada aslinda altaki yas hesapla metotdunu calistirdik
  renault.yasHesapla();
  print(
      "////////////////"); //burada aslinda altaki yas hesapla metotdunu calistirdik
  opel.bilgileriSoyle();
  opel.yasHesapla();
  nissan.bilgileriSoyle();
  nissan.yasHesapla();
}

//peki hersey tamamsa kurucu metot nedir
//kurucu metot biz gormesek te burada ki Araba() satirnin orada acilan bir gorunmez metot kanitlayada biliriz
//void bilgileri soyleden oncedeki satira bak
//simdi burada naptik
class Araba {
  // araba adinda bir sinif olusturduk
  int? modelYili; //int olarak model yili aldik fakat null olarak
  String? marka; //yine null olarak markasini ve
  bool?
      manuelMi; //null olarak maunel mi otomatik mi bu bilgileri sinifimiz icerisinde taslak olrak hazirladik
/*   Araba() {      //1.yontem
    print(
        "kurucu metot baslaitldi"); //bu sekilde bir kanit sunabilirim simdi f5 yaparsak aslinda class araba dan once burasi calisir deneyelim ...
  } */
  Araba(this.modelYili, this.marka, this.manuelMi) {
    print("konsol aktif");
  }
  Araba.markasizAraba(this.modelYili, this.manuelMi) {
    //burada ise adlnadiirilmis bir metot olusturduk yani normalde bunn uzeriondeki araba satirini kullanamiyorken suan araba.  yazdikrtan sonra ayni olmayan bir cok metot olusturlabilir.
    print("markasiz konsol aktif");
  }
  Araba.modelsiz(this.marka, this.manuelMi) {
    print("modelsiz arac aktif");
  }
  // Araba(int? modelYili, String? marka, bool? manuelMi) { //anahtar kelime kullaniraken this yontemi bu sekilde kullanilir diger yontem ise ustte
  //   this.modelYili = modelYili;
  //   this.manuelMi = manuelMi;
  //   this.marka = marka;
  //   print("kurucu metot baslatildi");
  // } // 2. yontem bu sekilde de yazarak kolaylik elde edebilriz
  void bilgileriSoyle() {
    //bilgileri soyle diye bir metot olusturduk
    print(
        "model yili: ${modelYili} , markasi: ${marka} , manuel mi: ${manuelMi}"); // ve printle bu bilgileri yazdiracagimiz satiri eklemis olduk
    //simdi iskeletimiz tamam void mainin icerisine girip tabiri caizsse uretime gecelim klafjakjfajflka
  }

  void yasHesapla() {
    if (modelYili != null) {
      print(
          ' $marka arabasinin yasi ${2024 - modelYili!}'); //unlem koymamizin sebebi burada ki deger null olabilir diyo ve bizi uyariyor bizde unlem koyarak diyoruz ki rahat ol kardesim sen null deger almayacaksin.
    } else {
      print("model yili olmadigindan hesaplanamadi");
    }
  }
}
