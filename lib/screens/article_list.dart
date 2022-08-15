import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 235, 224, 1),
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(64, 57, 53, 1),
            title: const Text('Articles'),
            centerTitle: true,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.logout_rounded),
                  tooltip: 'Logout',
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  }),
            ]),
        body: const Center(child: Text('Article List screen')));
  }
}
