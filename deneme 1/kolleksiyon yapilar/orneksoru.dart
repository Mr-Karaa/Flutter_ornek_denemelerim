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

  //keyleri string degerleri dynamic olan map olustur. bu yapiya pc islemci cekirdek sayisini ram miktarini ve ssd olup olmadigini bilsiginisini tut ve ekrana yazdir...

  Map<String, dynamic> pc = {
    'cekirdek': 16,
    'ram': 32,
    'ssd var mi': true,
  };
  for (var oankiEntry in pc.entries) {
    print(" bilgiler ${oankiEntry.key} : ${oankiEntry.value}");
  }

  //her elemanında keyler strıng value dynamıc olan map her eleman da ıl ılce plaka sonra lısteyı okunaklı yazssın

  List<Map<String, dynamic>> iller =
      <Map<String, dynamic>>[]; //buyuktur kucuuktur isaretini unutma
  Map<String, dynamic> sehir1 = Map<String, dynamic>();
  sehir1['il_adi:'] = 'tokat';
  sehir1['ilce_sayisi:'] = 7; //kullanim sekli 1
  sehir1['plaka:'] = 60;

  Map<String, dynamic> sehir2 = <String, dynamic>{};
  sehir2['il_adi:'] = 'istanbul';
  sehir2['ilce_sayisi:'] = 10; //kullanim sekli 1
  sehir2['plaka:'] = 34; //kullanim sekli 2 bu sekilde de yazilabilir

  var sehir3 = <String, dynamic>{};
  sehir3['il_adi:'] = 'amasya';
  sehir3['ilce_sayisi:'] = 5; //kullanim sekli 1
  sehir3['plaka:'] = 05; //kullanim sekli 3 bu sekilde de yazilabilir

  iller.add(sehir1);
  iller.add(sehir2);
  iller.add(sehir3);
  iller.add({   //suslu parantez goruyorsan bu map yapisidir asla unutma
    'il_adi': 'izmir',
    'ilce_sayisi': 5,
    'plaka': 35,
  });
  print(iller);
}
