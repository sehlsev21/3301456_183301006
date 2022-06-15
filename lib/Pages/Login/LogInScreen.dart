import 'package:flutter/material.dart';
import 'package:ne_izlesem/Pages/Home/Controller/HomeController.dart';
import '../../Service/auth.dart';
import '../Signup/SignUpScreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Container(
            decoration: const BoxDecoration(
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
                CircleAvatar(
                  radius: 100,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset('assets/neizlesem.jpg')),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white24),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: "Email"),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white24),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: "Şifre"),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black38)),
                        onPressed: () {
                          _authService
                              .signIn(_emailController.text,
                                  _passwordController.text)
                              .then((value) {
                            return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeController()));
                          });
                        },
                        child: const Text(
                          "Giriş Yap",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 100,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Sign(),
                            ),
                          );
                        },
                        child: const Text(
                          "Kayıt Ol",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
