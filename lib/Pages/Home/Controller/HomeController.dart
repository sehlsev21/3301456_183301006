import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ne_izlesem/Pages/About/AboutScreen.dart';
import 'package:ne_izlesem/Pages/Home/CategoriesScreen.dart';
import 'package:ne_izlesem/Pages/Home/HomeScreen.dart';
import '../../../Service/auth.dart';
import '../../Login/LogInScreen.dart';
import '../AllFilmsScreen.dart';
import '../EkstrasScreen.dart';
import '../FavoriteFilmsScreen.dart';
import '../ProfileScreen.dart';
import '../SettingsScreen.dart';

class HomeController extends StatefulWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  _HomeControllerState createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  AuthService _authService = AuthService();

  int currentIndex = 0;
  final screens = [
    Home(),
    Profile(),
    AllFilms(),
    CategoriesScreen(),
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
            DrawerHeader(
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
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(90)),
                  child: Image.asset('assets/neizlesem.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                "Ana Sayfa (Vize)",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              title: Text(
                "Profil (Vize)",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.movie,
                color: Colors.black,
              ),
              title: Text(
                "Tüm Filmler (Vize)",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.theaters,
                color: Colors.black,
              ),
              title: Text(
                "Kategoriler (Final)",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.black,
              ),
              title: Text(
                "Hakkında (Vize)",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 4;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
              title: Text(
                "Çıkış",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                _authService.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
