import 'dart:developer';
import 'package:http/http.dart' as http;
import './api_constant.dart';
import 'package:proms_mobile/models/login_response.dart';

class AuthService {
  Future<LoginResponse?> login(String identifier, password) async {
    try {
      var url = Uri.parse(ApiConstants.authLoginUrl);
      var response = await http
          .post(url, body: {'identifier': identifier, 'password': password});

      if (response.statusCode == 200) {
        LoginResponse model = loginResponseFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
