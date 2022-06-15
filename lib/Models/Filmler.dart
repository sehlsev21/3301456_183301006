import 'package:ne_izlesem/Models/Kategoriler.dart';
import 'package:ne_izlesem/Models/Yonetmenler.dart';

class Filmler {
  int film_id;
  String film_ad;
  int film_yil;
  String film_resim;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(this.film_id, this.film_ad, this.film_yil, this.film_resim,
      this.kategori, this.yonetmen);
}
