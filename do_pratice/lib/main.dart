import 'package:do_pratice/news_change_notifier.dart';
import 'package:do_pratice/news_page.dart';
import 'package:do_pratice/news_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      home:ChangeNotifierProvider(
      create:(_) => NewsChangeNotifier(
        NewsService()
      ),
      child:NewsPage()
    ));
  }
}