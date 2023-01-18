import 'screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const kBackgroundColor = Color(0xff202020);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Residence Management',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white24,
        backgroundColor: kBackgroundColor,
      ),
      home: const SplashScreen(title: 'Flutter Login UI'),
    );
  }
}
