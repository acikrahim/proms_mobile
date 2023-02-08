import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../main/bottom_nav.dart';
import '/screens/authentication/forgot_password.dart';
import '/widgets/auth_header.dart';
import '/shared/colors.dart';
import '/shared/styles/button_style.dart';
import '/shared/styles/text_style.dart';
import '/shared/styles/input_style.dart';

import '/shared/apis/auth_service.dart';
import '/models/login_response.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Future<SharedPreferences> _sharedPreferences =
      SharedPreferences.getInstance();
  final _storage = const FlutterSecureStorage();
  final _loginForm = GlobalKey<FormState>();
  late String identifier;
  late String _password;

  Future<void> _login(BuildContext ctx) async {
    final SharedPreferences sharedPreferences = await _sharedPreferences;

    _loginForm.currentState?.save();
    bool? valid = _loginForm.currentState?.validate();
    if (valid != null && valid) {
      LoginResponse? loginResponse =
          await AuthService().login(identifier, _password);
      if (loginResponse != null) {
        await _storage.write(key: 'jwt', value: loginResponse.jwt);

        await sharedPreferences.setString(
            'user', userToJson(loginResponse.user));

        await sharedPreferences.setBool('isLoggedIn', true);

        Navigator.of(ctx).push(
          MaterialPageRoute(builder: (context) => const BottomNav()),
        );
      }
    }
  }

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
                      'Hello!',
                      style: TxtStyle().h2(),
                    ),
                    Text('Sign in into your account',
                        style: TxtStyle().h6Grey()),
                    const SizedBox(height: 30),
                    Form(
                        key: _loginForm,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputStyle().textInputAuth(
                                  'User Name', 'Enter your user name'),
                              textInputAction: TextInputAction.next,
                              onSaved: (value) => identifier = value!,
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              obscureText: true,
                              decoration: InputStyle().textInputAuth(
                                  'Password', 'Enter your password'),
                              onSaved: (value) => _password = value!,
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
                        _login(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const BottomNav()),
                        // );
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
