import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  List<dynamic> _articles = [];
  bool isLoading = true;

  Future<dynamic> readJson() async {
    final String response =
        await rootBundle.loadString('lib/shared/articles.json');
    return json.decode(response);
  }

  @override
  void initState() {
    super.initState();
    readJson().then((response) {
      setState(() {
        _articles = response["data"];
        isLoading = false;
      });
    });
  }

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
      body: _articles.isNotEmpty
          ? GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              children: _articles
                  .map(
                    (e) => (Center(
                      child: Text(e['title']),
                    )),
                  )
                  .toList(),
            )
          : Column(
              children: [
                const Text("No articles found"),
                TextButton(
                  onPressed: readJson,
                  child: const Text("Reload Data"),
                )
              ],
            ),
    );
  }
}
