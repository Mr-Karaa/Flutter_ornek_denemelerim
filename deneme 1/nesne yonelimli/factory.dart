//factory kurucular

void main(List<String> args) {
  Ogrenci melih = Ogrenci(1, "kara");
  melih.bilgiler();
  Ogrenci hasan = Ogrenci.idSiz("dakka");
  hasan.bilgiler();
  Ogrenci wer = Ogrenci.deneme(-98, "ayse");
  wer.bilgiler();
}

class Ogrenci {
  //class olusturduk
  int? id = 0; //id varsayilan atatik
  String ad = ""; //ad kismina da varsayilan atadik
  Ogrenci(this.id, this.ad) {
    //ogrenci adina bir parametre olusturduk
    print("varsayilan calisti");
  }

  Ogrenci.idSiz(this.ad) {
    //idsi olmadan bir parametre olsuturduk
    print("isimli calisti");
  }
  void bilgiler() {
    //bilgileri yazdiracagimiz bolumu aarladik daha sonra mainin icerisinde kullnacagimzi bolum
    print("numara $id ismi $ad");
  }

  factory Ogrenci.deneme(int id, String ad) {
    //factory kullanimi bu sekilde once factory metodu yazilir sonra Ogrenci adinda olusturdugumuz parametre ve daha sonra da ne isim vereceksek o yazilir ben deneme adinda isim verdim daha sonra icerigin de int degerin de ud ve string degerinde de bir ad degsikeni tutmasini isteedim factory de diger metotlardan en onemli ozellik sart saglamasidir
    if (id < 0) { //eger id 0 dan kucukse id ye varsayilan olarak 1 ata dedik ad ise varsayilan kalsin
      return Ogrenci(1, ad); // return ettik burada
    } else { //eger degilse de id ve adi oldugu gibi yazdir dedik
      return Ogrenci(id, ad);
    }
  }
}
