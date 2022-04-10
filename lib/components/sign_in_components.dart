import 'package:flutter/material.dart';
import '../controllers/sign_in_auth.dart';

// ignore: use_key_in_widget_constructors
class SignInComponents extends StatefulWidget {
  const SignInComponents({Key? key}) : super(key: key);
  @override
  State<SignInComponents> createState() => _SignInComponentsState();
}

class _SignInComponentsState extends State<SignInComponents> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginKey,
      child: Column(
        children: [
          TextFormField(
            controller: getLogin,
            validator: emailValidate,
            keyboardType: TextInputType.emailAddress,
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
                suffixIcon: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 194, 193, 193),
                  ),
                ),
                hintText: 'Email',
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                border: const OutlineInputBorder(),
                labelStyle: const TextStyle(color: Colors.white)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          TextFormField(
            controller: getLoginPassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Password is required";
              }
              return null;
            },
            obscureText: obscureText,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: const Color.fromARGB(255, 194, 193, 193),
                ),
              ),
              hintText: 'Password',
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
