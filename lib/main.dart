import 'package:flutter/material.dart';
import 'package:login_and_register/screens/home.dart';
import 'package:login_and_register/screens/sign_up.dart';
import 'screens/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(255, 30, 123, 199),
      ),
      initialRoute: '/signIn',
      routes: {
        '/signIn': (context) => const SignIn(),
        '/home': (context) => const Home(),
        '/signUp': (context) => const SignUp(),
      },
    );
  }
}
