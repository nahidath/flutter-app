import 'package:flutter/material.dart';

import '../../../models/article.dart';
import '../../detail/detail.dart';

class PopularArticle extends StatelessWidget {
  PopularArticle({super.key});

  final List<Article> articles = Article.articles(); // à remplacer par la liste des articles

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 300,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailPage(articles[index]),
            ),
          ),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(articles[index].bgImage),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 30),
        itemCount: articles.length,
      ),
    );
  }
}
