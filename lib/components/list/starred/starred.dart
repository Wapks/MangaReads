import 'package:flutter/material.dart';

class StarredPage extends StatelessWidget {
  const StarredPage({super.key});

  static const name = 'starred';
  static const path = '/starred';

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}
