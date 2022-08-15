import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 30, 5, 0),
          child: Column(children: <Widget>[
            const Text(
              'Hi 👋 Signin to your MCL account',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(69, 52, 42, 1)),
            ),
            const SizedBox(height: 20),
            Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                      decoration: const InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Username',
                    label: Text('Username'),
                  )),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      label: Text('Password'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ]))
          ]),
        ));
  }
}
