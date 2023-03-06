import 'package:do_pratice/article.dart';
import'package:flutter/material.dart';


class ArticlePage extends StatelessWidget {
  final Article article;
  const ArticlePage({super.key,required this.article});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top:mq.padding.top,
          bottom: mq.padding.bottom,
          left: 0,
          right: 0
        ),
        child: Column(
          children: [
            Text(
              article.title,
              style: Theme.of(context).textTheme.headlineLarge,

            ),
            const SizedBox(height:9),
            Text(article.content)
          ],
        ),
      ),
    );
  }
}