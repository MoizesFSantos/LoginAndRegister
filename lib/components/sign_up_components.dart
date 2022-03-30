import 'package:flutter/material.dart';

class SignUpComponent extends StatefulWidget {
  @override
  State<SignUpComponent> createState() => _SignUpComponentState();
}

class _SignUpComponentState extends State<SignUpComponent> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        // ignore: prefer_const_constructors
        decoration: InputDecoration(
            suffixIcon: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.people,
                color: Color.fromARGB(255, 194, 193, 193),
              ),
            ),
            hintText: 'Name',
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
    ]);
  }
}
