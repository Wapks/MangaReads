// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class FormData {
  String? email;
  String? password;

  FormData({
    this.email,
    this.password,
  });

  factory FormData.fromJson(Map<String, dynamic> json) =>
      _$FormDataFromJson(json);

  Map<String, dynamic> toJson() => _$FormDataToJson(this);
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  FormData formData = FormData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 235, 224, 1),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Sign in'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 30, 5, 0),
        child: Column(
          children: <Widget>[
            const Text(
              'Hey there! 👋 ',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w800,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      hintText: 'Username',
                      label: Text('Username'),
                    ),
                    onChanged: (value) {
                      formData.email = value;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      label: Text('Password'),
                    ),
                    obscureText: true,
                    onChanged: (value) {
                      formData.password = value;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    child: const Text(
                      'SIGN ME IN!',
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // _showDialog('Yes! Signed in Successfully');
                        Navigator.pushNamed(context, '/articles');
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // void _showDialog(String message) {
  //   showDialog<void>(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Text(message),
  //       titleTextStyle: const TextStyle(fontSize: 16.0, color: Colors.amber),
  //       backgroundColor: Colors.black45,
  //       actions: [
  //         TextButton(
  //           child: const Text('OK'),
  //           onPressed: () => Navigator.of(context).pop(),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
