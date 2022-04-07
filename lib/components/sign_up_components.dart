import 'package:flutter/material.dart';
import 'package:login_and_register/controllers/sign_up_auth.dart';

class SignUpComponent extends StatefulWidget {
  @override
  State<SignUpComponent> createState() => _SignUpComponentState();
}

class _SignUpComponentState extends State<SignUpComponent> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        TextFormField(
          // ignore: prefer_const_constructors
          controller: getName,
          decoration: const InputDecoration(
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.people,
                  color: Color.fromARGB(255, 194, 193, 193),
                ),
              ),
              hintText: 'Name',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              border: OutlineInputBorder(),
              labelStyle: TextStyle(color: Colors.white)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        TextFormField(
          controller: getEmail,
          validator: emailValidation,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 194, 193, 193),
                ),
              ),
              hintText: 'Email',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              border: OutlineInputBorder(),
              labelStyle: TextStyle(color: Colors.white)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        TextFormField(
          controller: getPass,
          validator: passValidation,
          obscureText: showPassword,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
              child: Icon(
                showPassword ? Icons.visibility_off : Icons.visibility,
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
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        TextFormField(
          obscureText: showPassword,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
              child: Icon(
                showPassword ? Icons.visibility_off : Icons.visibility,
                color: const Color.fromARGB(255, 194, 193, 193),
              ),
            ),
            hintText: 'Confirm Password',
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.5),
            ),
            border: const OutlineInputBorder(),
          ),
        ),
      ]),
    );
  }
}
