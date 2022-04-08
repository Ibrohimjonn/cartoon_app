import 'package:cartoon_app/pages/feed_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi Cartoon',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'GoogleSans',
          canvasColor: Colors.white,
          primaryIconTheme: IconThemeData(color: Colors.black)
      ),
      home: Feed_Page(),
    );
  }
}
