import 'package:flutter/material.dart';
import '../../../models/article.dart';

class NewestArticle extends StatelessWidget {
  NewestArticle({super.key});

  final List<Article> articles = Article.articles(); // à remplacer par la liste des articles


  @override
  Widget build(BuildContext context) {
    return Column(
      children: articles
          .map(
            (article) => Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 20),
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   borderRadius: BorderRadius.circular(15),
          // ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ajuste la taille de la colonne au contenu
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 380,
                height: 190,
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
                      child: Image.asset(article.bgImage),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  child: Text(
                    article.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}
