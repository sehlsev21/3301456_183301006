import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset("assets/amblem.png"),
              SizedBox(height: 40),
              Text(
                'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir '
                'ÇINAR tarafından yürütülen 3301456 kodlu '
                'MOBİL PROGRAMLAMA dersi kapsamında 183301006 '
                'numaralı Muhammed Sehil SEVGİLİ tarafından 02 '
                'Nisan 2022 günü yapılmıştır.',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
