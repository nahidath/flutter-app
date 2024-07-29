import 'package:flutter/material.dart';

import '../../../models/article.dart';
import '../../article/article.dart';

class PopularArticle extends StatelessWidget {
  PopularArticle({super.key});

  final List<Article> articles = Article.articles(); // à remplacer par la liste des articles

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ArticlePage(articles[index]),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ajuste la taille de la colonne au contenu
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 300,
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
                      child: Image.asset('assets/your_image.png'), // Remplacez par articles[index].bgImage
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  width: 280,
                  child: Text(
                    articles[index].name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: articles.length,
      ),
    );
  }
}
