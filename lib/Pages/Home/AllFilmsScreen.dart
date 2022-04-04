import 'package:flutter/material.dart';
import '../../Models/Film.dart';

class AllFilms extends StatefulWidget {
  @override
  State<AllFilms> createState() => _AllFilmsState();
}

class _AllFilmsState extends State<AllFilms> {
  static List<String> filmName = [
    'Bir Zamanlar Anadoluda',
    'Inception',
    'Interstellar',
    'The Hateful Eight',
    'The Pianist'
  ];
  static List<String> filmImage = [
    'assets/birzamanlaranadoluda.jpg',
    'assets/inception.jpg',
    'assets/interstellar.jpg',
    'assets/thehatefuleight.jpg',
    'assets/thepianist.jpg',
  ];
  final List<Film> filmList = List.generate(filmName.length,
      (index) => Film('${filmName[index]}', '${filmImage[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: filmList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(filmList[index].name),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(filmList[index].imagePath),
              ),
            ),
          );
        },
      ),
    );
  }
}
