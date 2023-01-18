import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  static const name = 'users';
  static const path = '/users';

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}
