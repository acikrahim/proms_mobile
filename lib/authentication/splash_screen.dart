// ignore_for_file: prefer_const_constructors
import 'dart:developer';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:proms_mobile/authentication/login.dart';
import 'package:proms_mobile/authentication/first_time_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = false;

  _SplashScreenState() {
    Timer(const Duration(milliseconds: 2000), () {
      //check if logged in already?
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false);
      });
    });

    Timer(Duration(milliseconds: 10), () {
      setState(() {
        isVisible =
            true; // Now it is showing fade effect and navigating to Login page
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffc47500), Color(0xff0c82df)],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: isVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 1200),
        child: Center(
          child: Container(
            height: 140.0,
            width: 140.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 2.0,
                    offset: Offset(5.0, 3.0),
                    spreadRadius: 2.0,
                  )
                ]),
            child: Center(
              child: ClipOval(
                child: Icon(
                  Icons.android_outlined,
                  size: 128,
                ), //put your logo here
              ),
            ),
          ),
        ),
      ),
    );
  }
}
      