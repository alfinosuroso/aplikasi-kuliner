import 'package:aplikasi_kuliner/home_page.dart';
import 'package:aplikasi_kuliner/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => SplashPage(),
      '/main': (context) => MainApp()
    },
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
