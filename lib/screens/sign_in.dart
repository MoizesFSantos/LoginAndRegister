import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Scaffold(
        body: Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Login'),
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
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () => {},
                          child: const Icon(
                            Icons.visibility_off,
                            color: Color.fromARGB(255, 194, 193, 193),
                          ),
                        ),
                        hintText: 'Password',
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: const Text('SignIn'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
