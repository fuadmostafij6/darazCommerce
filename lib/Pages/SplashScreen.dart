import 'dart:async';

import 'package:daraz/Pages/Home.dart';
import 'package:flutter/material.dart';

import 'BottomNavBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BottomNavBar()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.shopify,
              size: 100.0,
              color: Colors.white,
            ),
            Text(
              "Splash",
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            )
          ],
        ),
      ),
    );
  }
}
