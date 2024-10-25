import 'dart:async';

import 'package:aplikasi_kuliner/styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/main');
    });

    return Scaffold(
      backgroundColor: pageBgColor,
      body: Center(
        child: Image.asset("assets/logo.png"),
      ),
    );
  }
}
