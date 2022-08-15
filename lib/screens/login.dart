import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 235, 224, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(64, 57, 53, 1),
          title: const Text('Login'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: const Center(child: Text('Login screen')));
  }
}
