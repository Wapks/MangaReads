import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const name = 'settings';
  static const path = '/settings';

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}
