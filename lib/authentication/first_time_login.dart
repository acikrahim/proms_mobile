// ignore_for_file: prefer_const_constructors
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:proms_mobile/authentication/signin.dart';
import 'constants.dart';

class FirstTimeLoginScreen extends StatefulWidget {
  const FirstTimeLoginScreen({Key? key}) : super(key: key);

  @override
  State<FirstTimeLoginScreen> createState() => _FirstTimeLoginScreenState();
}

class _FirstTimeLoginScreenState extends State<FirstTimeLoginScreen> {
  var userAvailable = false;

  @override
  void initState() {
    //to lead to dashboard if user already login
    log('userAvailable?: $userAvailable');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage('logo.png'), fit: BoxFit.cover))),
          userAvailable
              ? SizedBox()
              : Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(fixedSize: Size(200, 20)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignInScreen())));
                      },
                      child: const Text('Login'))),
          userAvailable
              ? SizedBox()
              : Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(200, 20),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back')),
                )
        ],
      )),
    );
  }
}
