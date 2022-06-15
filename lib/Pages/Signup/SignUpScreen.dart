import 'package:flutter/material.dart';
import '../../Service/auth.dart';
import '../Login/LogInScreen.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  final TextEditingController _UserNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayıt Ol'),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                    labelText: "İsim-Soyisim"),
              ),
            ),
            Container(height: 20),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: "Email"),
              ),
            ),
            Container(height: 20),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: _UserNameController,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: "Kullanıcı Adı"),
              ),
            ),
            Container(height: 20),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white24),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: "Şifre"),
              ),
            ),
            Container(height: 20),
            Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  _authService
                      .createPerson(_UserNameController.text,
                          _emailController.text, _passwordController.text)
                      .then((value) {
                    return Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black38)),
                child: Text(
                  "Kayıt Ol",
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
    );
  }
}
