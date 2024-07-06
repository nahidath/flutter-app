import 'package:flutter/material.dart';
import '../../../models/article.dart';

class NewestArticle extends StatelessWidget {
  NewestArticle({super.key});

  final List<Article> articles = Article.articles(); // à remplacer par la liste des articles


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: articles
            .map(
              (article) => Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    article.bgImage,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      article.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}
