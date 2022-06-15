import 'package:flutter/material.dart';
import '../../Models/Film.dart';

class AllFilms extends StatefulWidget {
  @override
  State<AllFilms> createState() => _AllFilmsState();
}

class _AllFilmsState extends State<AllFilms> {
  Future<List<Film>> tumFilmleriGoster() async {
    var filmlerListesi = <Film>[];

    var f1 = Film("Anadoluda", "birzamanlaranadoluda.png");
    var f2 = Film("Django", "django.png");
    var f3 = Film("Inception", "inception.png");
    var f4 = Film("Interstaller", "interstellar.png");
    var f5 = Film("The Hateful Eight", "thehatefuleight.png");
    var f6 = Film("The Pianist", "thepianist.png");

    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);

    return filmlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Film>>(
        future: tumFilmleriGoster(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var filmlerListesi = snapshot.data;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3.5,
              ),
              itemCount: filmlerListesi!.length,
              itemBuilder: (context, indeks) {
                var film = filmlerListesi[indeks];
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/${film.imagePath}"),
                      ),
                      Text(
                        film.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
