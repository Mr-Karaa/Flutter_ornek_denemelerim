import 'dart:math';

class VeritabaniIslemleri { //sinifimizi olusturduk
  String _kullaniciAdi = "kara"; //kullanici adimizi ve sifremizi yazdik
  String _sifre = "1234";
  bool baglam() { //baglam dedik ve sartlarimizi bu satirdan itibaren belirttik
    if (_internetVarMI()) { //eger internet varsa dedim
      if ((_kullaniciAdi == _kullaniciAdi) && (_sifre == _sifre)) {//iste private degeri bu kullanici adi ve sifrenin biizm private sayfamizda cagirilmamasini ve gosterilmememsini istiyoruz
      // kullanici adi yazdiktan sonra  altcizgi _kullaniciAdi dedik ve aslinda kullanici adini private olarak atamis olduk.

    //sifre icinde aynisi yaptik

    //ben internet varmi gibi bir bilgininde kullanici icin pek oenmli olmadigini dusundum ve onu da private olarak atadim 
        
         //kullanici adi ve sifreyi kontrol et dogru ise bu degeri true olarak dondur
        return true;
      } else { //degilse de false olarak dondur dedik
        return false;
      }
    } else { //eger internet yoksa da hic deger dondurme ve cik dedik
      return false;
    }
  }

  bool _internetVarMI() { //internet var mi degiskenini bool ile atadik
    if (Random().nextBool()) { //biz random olmasini istedik ve daha onceden de gordugumuz degiskenleri koyduk yani random bir deger dondurmasini istedik bu sayede internet var mi yok mu bunuda test etmis olacagiz
      return true;
    } else {
      return false;
    }
  }
}
