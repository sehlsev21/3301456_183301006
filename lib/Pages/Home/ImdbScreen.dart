import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IMDBScreen extends StatelessWidget {
  const IMDBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMDB Resmi Sayfası'),
        backgroundColor: Colors.black38,
      ),
      body: Container(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 9.48 / 16,
              child: WebView(
                initialUrl: "https://www.imdb.com/",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
