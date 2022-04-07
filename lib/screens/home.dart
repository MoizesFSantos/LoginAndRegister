import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 106, 212),
        title: const Text('Home'),
      ),
      body: const Center(
        child: Card(
          shadowColor: Colors.grey,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
