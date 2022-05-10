import 'package:flutter/material.dart';
import 'package:shanty_house/Pages/Authentikasi/Register.dart';
import 'package:shanty_house/Pages/HalamanData/daftarprojek.dart';
import 'package:shanty_house/Pages/HalamanData/graphchart.dart';
import 'package:shanty_house/Pages/HalamanData/listkegiatan.dart';
import 'package:shanty_house/Pages/HalamanUtama/main_page.dart';
import 'package:shanty_house/Pages/splash_page.dart';
import 'Pages/Authentikasi/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => MainPage(),
        '/daftarprojek': (context) => DaftarProjek(),
        '/listkegiatan': (context) => ListKegiatan(),
        '/kurvadata': (context) => KurvaData(),
      },
    );
  }
}
