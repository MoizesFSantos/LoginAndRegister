import 'package:flutter/material.dart';

final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
final _loginEmail = TextEditingController();
final _loginPassword = TextEditingController();

final getLogin = _loginEmail;
final getLoginPassword = _loginPassword;

String? emailValidate(dynamic email) {
  if (email == null || email.isEmpty) {
    return "Please, enter your email";
  } else if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(getLogin.text)) {
    return "Please, enter a correct email";
  }
  return null;
}

String? passwordValidate(password) {
  if (password.isEmpty || password == null) {
    return "Please, enter your password";
  } else if (password < 6) {
    return "short password";
  }
  return null;
}

void loginOK(BuildContext context) {}
