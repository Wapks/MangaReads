import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/article_detail.dart';
import 'package:hello_flutter/screens/article_list.dart';
import 'package:hello_flutter/screens/login.dart';
import 'package:hello_flutter/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyComicList',
        initialRoute: '/articles',
        routes: {
          '/login': (context) => const Login(),
          '/profile': (context) => const Profile(),
          '/articles': (context) => const ArticleList(),
          '/article-details': (context) => const ArticleDetail()
        });
  }
}
