// ignore_for_file: prefer_const_constructors
import 'authentication/constants.dart';
import 'authentication/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
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
