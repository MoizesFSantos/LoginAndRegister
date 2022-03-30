import 'package:flutter/material.dart';
import 'package:login_and_register/components/sign_up_components.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 30, 123, 199),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/signIn');
                    }),
                IconButton(
                  icon: const Icon(Icons.save_alt_rounded),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                )
              ],
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 70, horizontal: 30),
                      height: MediaQuery.of(context).size.height * .75,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(150, 120),
                          bottomLeft: Radius.elliptical(150, 120),
                        ),
                      ),
                      child: SignUpComponent(),
                    ),
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
