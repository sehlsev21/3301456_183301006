import 'package:flutter/material.dart';
import 'package:ne_izlesem/Pages/Home/homepage.dart';
import 'package:ne_izlesem/Pages/Signup/sign.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: CircleAvatar(
              radius: 100,
              child: Image.asset('assets/neizlesem.jpg'),
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 300,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                labelText: "Kullanıcı Adı",
              ),
            ),
          ),
          Container(height: 20),
          Container(
            width: 300,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                labelText: "Şifre",
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 100,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sign(),
                      ),
                    );
                  },
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
