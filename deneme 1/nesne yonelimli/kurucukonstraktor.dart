void main(List<String> args) {
  //ilk once taslagimizi olusturalim
  //class araba taslak orayi incele ilk once

  Araba mercedes =
 Araba(1998,"benz", true); 
      
      //boyle diyerek kutucugu olusturduk simdi bunun icerisne gerekn bilgileri ekleyelim


/*   mercedes.modelYili =   //1. yol olarak bu kullanilabilir kolaylik olarak ta
      1998; //burada mercede "." diyerek yazmis oldugumuz model yili marka ve manuelmi bilgilreini dolduralim
  mercedes.marka = "benz";
  mercedes.manuelMi = false; */



  mercedes
      .bilgileriSoyle(); //yazarak terminalde yaptigimiz islemleri gorebilirz ayni zamand adiyelim guncelleme yapmak sitedik:
  mercedes.manuelMi = true; //guncel bilgiyi yazip
  mercedes.bilgileriSoyle(); // yazdirirsak (f5)
  //bu sekilde de guncelleme yapabilir bilgileri degistirebilirz
  var renault =
      Araba(null ,null ,null); //mesela burayi null birakalim tam olrak nasilmis gorelim
  renault.bilgileriSoyle();
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
  Araba(int? modelYili, String? marka, bool? manuelMi) {
    print("object");
  }// 2. yontem bu sekilde de yazarak kolaylik elde edebilriz

  void bilgileriSoyle() {
    //bilgileri soyle diye bir metot olusturduk
    print(
        "model yili: ${modelYili} , markasi: ${marka} , manuel mi: ${manuelMi}"); // ve printle bu bilgileri yazdiracagimiz satiri eklemis olduk
    //simdi iskeletimiz tamam void mainin icerisine girip tabiri caizsse uretime gecelim klafjakjfajflka
  }
}
