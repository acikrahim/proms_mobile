import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'screens/authentication/login.dart';
import 'screens/authentication/forgot_password.dart';
import 'screens/authentication/first_time_login.dart';
import 'screens/main/bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const kBackgroundColor = Color(0xff202020);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Residence Management',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white24,
        // backgroundColor: kBackgroundColor,
      ),
      // home: const SplashScreen(title: 'Flutter Login UI'),
      routes: {
        SplashScreen.routeName: (ctx) =>
            const SplashScreen(title: 'Flutter Login UI'),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        ForgotPasswordScreen.routeName: (ctx) => const ForgotPasswordScreen(),
        FirstTimeLoginScreen.routeName: (ctx) => const FirstTimeLoginScreen(),
        BottomNav.routeName: (ctx) => const BottomNav()
      },
    );
  }
}
