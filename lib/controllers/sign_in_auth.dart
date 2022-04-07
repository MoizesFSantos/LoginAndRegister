import 'package:flutter/material.dart';
import 'package:login_and_register/api/sign_in.dart';

import '../alerts/error.dart';

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

void loginOK(BuildContext context) {
  if (loginKey.currentState!.validate()) {
    LoginService().login(getLogin.text, getLoginPassword.text);
    _navigateSucess(context);
  } else {
    alert(context);
  }
}

_navigateSucess(BuildContext context) =>
    Navigator.of(context).pushReplacementNamed('/home');
