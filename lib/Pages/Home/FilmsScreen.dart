import 'package:flutter/material.dart';
import 'package:ne_izlesem/Filmlerdao.dart';
import 'package:ne_izlesem/Models/Filmler.dart';
import 'package:ne_izlesem/Models/Kategoriler.dart';
import 'package:ne_izlesem/Models/Yonetmenler.dart';
import 'package:ne_izlesem/Pages/Home/FilmDetailScreen.dart';

class FilmsScreen extends StatefulWidget {
  late Kategoriler kategori;
  FilmsScreen({required this.kategori});

  @override
  State<FilmsScreen> createState() => _FilmsScreenState();
}

class _FilmsScreenState extends State<FilmsScreen> {
  Future<List<Filmler>> tumFilmleriGoster(int kategori_id) async {
    var filmlerListesi = await Filmlerdao().tumFilmlerByKategoriId(kategori_id);
    return filmlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmler : ${widget.kategori.kategori_ad}'),
        backgroundColor: Colors.black38,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Color(0xFF9E9E9E),
              Color(0xFF757575),
              Color(0xFF616161),
              Color(0xFF424242),
            ],
          ),
        ),
        child: FutureBuilder<List<Filmler>>(
          future: tumFilmleriGoster(widget.kategori.kategori_id),
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilmDetail(
                                    film: film,
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/${film.film_resim}"),
                            Text(
                              film.film_ad,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center();
            }
          },
        ),
      ),
    );
  }
}
