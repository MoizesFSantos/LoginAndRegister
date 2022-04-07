import 'dart:convert';
import 'package:http/http.dart' as http;

class SignUpService {
  signup(String name, String email, String password) async {
    var url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyC5JnZrtJk3sZtfWpsulJlnOtWjoZEteQ0');
    http.Response response = await http.post(
      url,
      // the firebase's paramns
      body: json.encode({
        "name": name,
        "email": email,
        "password": password,
        "returnSecureToken": true
      }),
    );
    print(response.body);
  }
}
