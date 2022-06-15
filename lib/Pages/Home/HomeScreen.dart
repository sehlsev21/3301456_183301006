import 'package:flutter/material.dart';
import 'package:ne_izlesem/Pages/Home/ProfileScreen.dart';
import '../About/AboutScreen.dart';
import 'AllFilmsScreen.dart';
import 'ImdbScreen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Ana Sayfa",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 200,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ),
                            Text(
                              "Profil",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllFilms(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 200,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.movie,
                              color: Colors.white,
                            ),
                            Text(
                              "Tüm Filmler",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllFilms(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 200,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.star_rate,
                              color: Colors.white,
                            ),
                            Text(
                              "Favori Filmler",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllFilms(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 200,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            Text(
                              "Ayarlar",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutScreen(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 200,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.help,
                              color: Colors.white,
                            ),
                            Text(
                              "Hakkında",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.black,
                    height: 36,
                    thickness: 2,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Popüler Filmler",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset("assets/inception.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/birzamanlaranadoluda.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/interstellar.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/thehatefuleight.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/thepianist.png"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Colors.black,
                    height: 36,
                    thickness: 2,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Resmi IMDB sayfasına gitmek için tıklayınız:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              child: ElevatedButton(
                child: Text(
                  "IMDB Sayfasına Git",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IMDBScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  primary: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
