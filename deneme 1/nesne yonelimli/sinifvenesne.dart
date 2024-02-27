//sinif ve nesne kavramlarinin ornegi
void main(List<String> args) {
  //int sayi = 7; // int dedik ve sayi tuttuk
  //String isim = 'melih'; //string dedik kelimme tuttuk
  //List<int> liste = []; //ve liste ile de bazi yapilari siniflandirdik
  //print(sayi);
  //print(isim);
  //print(liste);

  // iste bugun de aslinda yapacagimiz sey siniflandirma olaack bu dersimizde class yapilarini gorcez
  // simdi taslak tamam uretime gecelim kjanfkafkla
  int sayi = 5; //aslinda boyle tarif etmekten bi farki yok
  insan melih =
      insan(); // = den sonra insan() diyerek aslinda insan melih sinifina deger atamis oluyoruz
  melih.ad =
      'melih'; // girilen degerde ki ad fonksiyonun neye esit olmasi gerektigini belirtiyoruz
  melih.yas = 21; //ayni sekilde yas
  melih.calisiyormu = true; // ve ayni sekkiilde bool degerini
  insan ahmet =
      insan(); //aslinda hepsini birer kutucuk olarak dusun mesala melih kutucugunda ki bilgilerin degerleri ile ahmet kutucugunda ki ve mehemet kutucugunda ki bilgiler farkli farkli olarak kaydrdilir
  ahmet.ad = 'ahmet';
  ahmet.yas = 45;
  ahmet.calisiyormu = false;

  insan mehmet =
      insan(); //gordugumuz gibi mehmette ki de farkli bilgiler ama sinif icerisinde hepsini barindariabiliyoruz
  mehmet.ad = 'mehmet';
  mehmet.yas = 35;
  mehmet.calisiyormu = true;
  //soyle dusun biz bir arac taslagi olusturduk asagida class acarak ve bura da da araci serii uretime gecirmis olduk.
}

class insan {
  //bir sinif olusturduk insan hakkinda olanlari sectim ben siz istediginizi secebilirsiniz
  int?
      yas; // bos gecemezsin hatasi aldik o yuzden ? ile null deger alabilir dedik
  String ad = ''; //yada deger alsin dedik ve bu sekilde yazdik
  bool calisiyormu =
      false; // yine bir baska kullanim bool deger de opsiyonel olarak false okuttuk

  void yuru() {
    //insanin fonksiyonlarinida yine ayni sinif icerisinde yazbiliriz  //sinif icinde ki fonksiyona metotd da denir
    print('yuruyerek geliyor');
  }
}
