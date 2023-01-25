import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:proms_mobile/screens/home/bottom_nav.dart';
import 'package:proms_mobile/screens/authentication/forgot_password.dart';
import 'package:proms_mobile/widgets/auth_header.dart';
import 'package:proms_mobile/shared/colors.dart';
import 'package:proms_mobile/shared/button_style.dart';
import 'package:proms_mobile/shared/text_style.dart';
import 'package:proms_mobile/shared/input_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 320,
              child: AuthHeader(320, true, Icons.login_rounded),
            ),
            Container(
                padding: const EdgeInsets.all(4.0),
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Hello!',
                      style: TxtStyle().h2(),
                    ),
                    Text('Sign in into your account',
                        style: TxtStyle().h6Grey()),
                    const SizedBox(height: 30),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputStyle().textInputAuth(
                                  'User Name', 'Enter your user name'),
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              obscureText: true,
                              decoration: InputStyle().textInputAuth(
                                  'Password', 'Enter your password'),
                            ),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen()),
                          );
                        },
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'SpaceGrotesk',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      style: BtnStyle().submitBtn(),
                      child: Text(
                        'Sign In'.toUpperCase(),
                        style: TxtStyle().btnText(),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNav()),
                        );
                      },
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: Text.rich(TextSpan(children: [
                          const TextSpan(text: "Don't have an account? "),
                          TextSpan(
                            text: 'Create',
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SpaceGrotesk',
                                color: Theme.of(context).colorScheme.secondary),
                          )
                        ])))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
