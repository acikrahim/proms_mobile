// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api
import 'package:proms_mobile/widgets/auth_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:proms_mobile/shared/helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 320,
              child: AuthHeader(320, true, Icons.login_rounded),
            ),
            Container(
                padding: EdgeInsets.all(4.0),
                margin: EdgeInsets.all(8.0), // This will be the login form
                child: Column(
                  children: [
                    const Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: 60,
                          fontFamily: 'SpaceGrotesk',
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Signin into your account',
                      style: TextStyle(
                          fontFamily: 'SpaceGrotesk', color: Colors.grey),
                    ),
                    SizedBox(height: 30.0),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Container(
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                              child: TextField(
                                decoration: ThemeHelper().textInputDecoration(
                                    'User Name', 'Enter your user name'),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                              child: TextField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration(
                                    'Password', 'Enter your password'),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Forgot your password?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'SpaceGrotesk',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration:
                                  ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text(
                                    'Sign In'.toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
//child: Text('Don\'t have an account? Create'),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(text: "Don't have an account? "),
                                TextSpan(
                                  text: 'Create',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'SpaceGrotesk',
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                              ])),
                            ),
                          ],
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
