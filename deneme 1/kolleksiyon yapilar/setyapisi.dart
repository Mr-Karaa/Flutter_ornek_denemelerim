void main(List<String> args) {
  Set<String> isimler =
      Set(); // set yapisi aslinda girilen birseyi ayni ise sadece birini tutuyo iki defa melih olmasina ragmne icinde sadece birini sakladi.
  isimler.add("Melih");
  isimler.add("berat");
  isimler.add("mert");
  isimler.add("meryem");
  isimler.add("Melih");
  isimler.add("psurwer");
  isimler.add("lawendrus");
  for (var s1 in isimler) {
    print("isim: $s1");
  }
}
