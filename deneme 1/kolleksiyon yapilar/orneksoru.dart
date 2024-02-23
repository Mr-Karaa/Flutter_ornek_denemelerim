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
  Map<String, dynamic> sehir1 = Map<String, dynamic>(); //kullanim sekli 1
  
  Map<String, dynamic> sehir2 = <String, dynamic>{}; //kullanim sekli 2 bu sekilde de yazilabilir
  var sehir3 = <String,dynamic>{}; //kullanim sekli 3 bu sekilde de yazilabilir
}
