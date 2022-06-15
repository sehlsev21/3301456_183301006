import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şifreyi Değiştir"),
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
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: "Parola"),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: "Parola Tekrar"),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onDoubleTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      width: 150,
                      height: 37,
                      child: Text(
                        "Şifreyi Değiştir",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: () {
                        //Şifre değiştirme sayfasına gidilecek
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangePassword(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: Text(
                        "İptal Et",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            YaziHareket(),
          ],
        ),
      ),
    );
  }
}

class YaziHareket extends StatefulWidget {
  const YaziHareket({Key? key}) : super(key: key);

  @override
  State<YaziHareket> createState() => _YaziHareketState();
}

class _YaziHareketState extends State<YaziHareket>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuad)
          ..addListener(() => this.setState(() {}))
          ..addStatusListener((durum) {
            debugPrint(durum.toString());
          });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "ÖNEMLİ: Şifreyi Değiştirmek için butona 2 kere basınız !!!",
        style: TextStyle(
            fontSize: _animation.value * 13,
            fontWeight: FontWeight.bold,
            color: Colors.red[900]),
      ),
    );
  }
}
