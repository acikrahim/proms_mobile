// ignore_for_file: prefer_const_constructors
import 'authentication/constants.dart';
import 'authentication/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Residence Management',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white24,
        backgroundColor: kBackgroundColor,
      ),
      home: SplashScreen(title: 'Flutter Login UI'),
    );
  }
}
