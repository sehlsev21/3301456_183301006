import 'package:flutter/material.dart';
import 'package:ne_izlesem/Kategorilerdao.dart';
import 'package:ne_izlesem/Models/Kategoriler.dart';
import 'package:ne_izlesem/Pages/Home/FilmsScreen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  Future<List<Kategoriler>> tumKategorileriGoster() async {
    var kategoriListesi = await Kategorilerdao().tumKategoriler();
    return kategoriListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Kategoriler>>(
        future: tumKategorileriGoster(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var kategoriListesi = snapshot.data;
            return ListView.builder(
              itemCount: kategoriListesi!.length,
              itemBuilder: (context, indeks) {
                var kategori = kategoriListesi[indeks];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilmsScreen(
                                  kategori: kategori,
                                )));
                  },
                  child: Card(
                    child: SizedBox(
                      height: 50,
                      child: Container(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              kategori.kategori_ad,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
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
    );
  }
}
