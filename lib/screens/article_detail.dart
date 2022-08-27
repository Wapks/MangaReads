import 'package:flutter/material.dart';

class ArticleDetailArguments {
  final String id;

  ArticleDetailArguments({required this.id});
}

class ArticleDetail extends StatefulWidget {
  const ArticleDetail({Key? key}) : super(key: key);

  @override
  State<ArticleDetail> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 235, 224, 1),
        appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: const Text(
              'Article Detail',
              style: TextStyle(color: Colors.white),
            ),
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
        body: const Center(child: Text('Article Detail screen')));
  }
}
