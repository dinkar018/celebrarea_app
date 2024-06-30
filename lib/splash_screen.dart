import 'dart:async';

import 'package:crop_image_app/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white60,
        child: Center(
            child: Text(
          'celebrare',
          style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.w700, color: Colors.grey),
        )),
      ),
    );
  }
}
