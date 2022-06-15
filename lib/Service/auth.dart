import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //Giriş Yap Fonksiyonu
  Future<User?> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  //Çıkış Yap Fonksiyonu
  signOut() async {
    return await _auth.signOut();
  }

  //Kayıt Ol Fonksiyonu
  Future<User?> createPerson(
      String username, String email, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    await _firestore
        .collection("Person")
        .doc(user.user?.uid)
        .set({'userName': username, 'email': email, 'password': password});

    return user.user;
  }
}
