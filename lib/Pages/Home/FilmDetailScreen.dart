import 'package:flutter/material.dart';
import 'package:ne_izlesem/Models/Filmler.dart';

class FilmDetail extends StatefulWidget {
  Filmler film;
  FilmDetail({required this.film});

  @override
  State<FilmDetail> createState() => _FilmDetailState();
}

class _FilmDetailState extends State<FilmDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.film_ad),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/${widget.film.film_resim}"),
              Text(
                "Yıl: " + widget.film.film_yil.toString(),
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(
                "Yönetmen: " + widget.film.yonetmen.yonetmen_ad.toString(),
                style: TextStyle(fontSize: 25, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
