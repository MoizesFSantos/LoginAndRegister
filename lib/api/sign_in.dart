import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginService {
  login(String email, String password) async {
    var url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyC5JnZrtJk3sZtfWpsulJlnOtWjoZEteQ0');
    http.Response response = await http.post(
      url,
      body: json.encode(
          {"email": email, "password": password, "returnSecureToken": true}),
    );
    return response;
  }
}
