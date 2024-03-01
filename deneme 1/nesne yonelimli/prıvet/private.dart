import 'private_data.dart';
//gorulmesini istemedigimiz bilgileri private degiskeni olarak atariz ornegin sifre gibi kullnaici adi gibi

//normalde yapmamaliyiz fakat ornek olsun diye sifre ve kullanici adini kof=dumzuuhn icine gomelim

void main(List<String> args) {
  VeritabaniIslemleri db = VeritabaniIslemleri();

  
  bool sonuc = db.baglam(); //sonucu baglama atadik
  if (sonuc == true) { //eger sonuc dogru ise giris yap degilse yapma dedik
    print("giris onaylandi");
  } else {
    print("yanlis bilgiler girildi");
  }
  print(db.baglam()); //ve baglamin dogrulugunu test etmek amaciyla ben boyle bir satir daha ekledim


  //guvenlik icin ve private ifade kullanmak icin bir sayfa daha acmali ve privet iceriklerimizi daha dogrusu sinifimizi oraya koyalim daha sonra bilgilerimizi bu siniftan cekelim ve kullanalim
  //private_data.dart adinda bir sayfa olusturdum
}
