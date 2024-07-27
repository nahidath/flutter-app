import 'package:flutter/material.dart';
import '../../models/article.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFD7CCC8),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 30),
        child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment : Alignment.center,
              padding: const EdgeInsets.only(top: 110),
                child: SizedBox(
                  width: 330,
                  height: 220,
                  child :
                  Card(
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

              ),
              Container(
                padding: const EdgeInsets.only(top: 25),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.name,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          article.category,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          "Ecrit le ${article.date}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      article.description,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFF4A4A4A),
                      ),
                      softWrap: true,
                    ),

                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
