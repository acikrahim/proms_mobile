// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:proms_mobile/screens/main/bottom_nav.dart';
import 'package:proms_mobile/screens/authentication/login.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

  const SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Future<SharedPreferences> _sharedPreferences =
      SharedPreferences.getInstance();
  bool isVisible = false;
  bool isLoggedIn = false;

  _SplashScreenState() {
    _getLoginResult();
    Timer(const Duration(milliseconds: 1600), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => isLoggedIn && isLoggedIn
                    ? const LoginScreen()
                    : const LoginScreen()),
            (route) => false);
      });
    });

    Timer(const Duration(milliseconds: 10), () {
      setState(() async {
        isVisible = true;
      });
    });
  }

  void _getLoginResult() async {
    final SharedPreferences sharedPreferences = await _sharedPreferences;
    setState(() {
      isLoggedIn = (sharedPreferences.getBool('isLoggedIn')) as bool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffc47500), Color(0xff0c82df)],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: isVisible ? 1.0 : 0,
        duration: const Duration(milliseconds: 1200),
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
                    offset: const Offset(5.0, 3.0),
                    spreadRadius: 2.0,
                  )
                ]),
            child: const Center(
              child: ClipOval(
                child: Icon(
                  Icons.android_outlined,
                  size: 128,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
