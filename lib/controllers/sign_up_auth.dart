import 'package:flutter/material.dart';
import 'package:login_and_register/alerts/error.dart';
import 'package:login_and_register/alerts/register_success.dart';
import '../api/sign_up.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final _registerName = TextEditingController();
final _registerEmail = TextEditingController();
final _registerPassword = TextEditingController();
final _confirmPassword = TextEditingController();

final getName = _registerName;
final getEmail = _registerEmail;
final getPass = _registerPassword;
final getPassConfirm = _confirmPassword;

String? emailValidation(text) {
  if (text.isEmpty) {
    return 'email adress invalid';
  } else {
    return null;
  }
}

String? passValidation(pass) {
  if (pass.isEmpty) {
    return 'cannot be empty';
  } else if (pass.length < 6) {
    return ' too short';
  } else {
    return null;
  }
}

void doSignUp(BuildContext context) {
  if (formKey.currentState!.validate()) {
    SignUpService().signup(getName.text, getEmail.text, getPass.text);
    success(context);
  } else {
    alert(context);
  }
}
