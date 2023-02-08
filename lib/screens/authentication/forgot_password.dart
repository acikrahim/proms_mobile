import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '/screens/authentication/login.dart';

import '/widgets/auth_header.dart';
import '/shared/colors.dart';
import '/shared/styles/button_style.dart';
import '/shared/styles/text_style.dart';
import '/shared/styles/input_style.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = '/forgot-password';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 320,
              child: AuthHeader(),
            ),
            Container(
                padding: const EdgeInsets.all(4.0),
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Welcome!',
                      style: TxtStyle().h2(),
                    ),
                    Text('Did you forgot your password?',
                        style: TxtStyle().h6Grey()),
                    const SizedBox(height: 30),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputStyle()
                                  .textInputAuth('Email', 'Enter your email'),
                            ),
                          ],
                        )),
                    const SizedBox(height: 60),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                          style: BtnStyle().backButton(),
                          child: Text(
                            'back'.toUpperCase(),
                            style: TxtStyle().btnText(),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                            );
                          },
                        )),
                        const SizedBox(width: 12),
                        Expanded(
                            child: ElevatedButton(
                          style: BtnStyle().submitBtn(),
                          child: Text(
                            'submit'.toUpperCase(),
                            style: TxtStyle().btnText(),
                          ),
                          onPressed: () {},
                        ))
                      ],
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
