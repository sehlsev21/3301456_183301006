import 'package:flutter/material.dart';
import 'package:ne_izlesem/Pages/About/AboutScreen.dart';
import 'package:ne_izlesem/Pages/Home/HomeScreen.dart';
import '../../Login/LogInScreen.dart';
import '../AllFilmsScreen.dart';
import '../ProfileScreen.dart';

class HomeController extends StatefulWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  _HomeControllerState createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  int currentIndex = 0;
  final screens = [
    Home(),
    Profile(),
    AllFilms(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ne İzlesem?'),
        backgroundColor: Colors.black38,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black38,
              ),
              child: Text(
                'Ne İzlesem',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                "Ana Sayfa",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: Text(
                "Profil",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.movie,
                color: Colors.black,
              ),
              title: Text(
                "Tüm Filmler",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.star_rate,
                color: Colors.black,
              ),
              title: Text(
                "Favori Filmler",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                //Toast mesaj bastır.
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Ayarlar",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                //Toast
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.black,
              ),
              title: Text(
                "Hakkında",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
            Center(
              child: ListTile(
                leading: Icon(
                  Icons.movie,
                  color: Colors.black,
                ),
                title: Text(
                  "Çıkış",
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
