import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pages/article/widgets/card_img.dart';
import 'package:myapp/pages/article/widgets/card_vid.dart';
import '../../models/article.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarColor: Color(0xFFD7CCC8), statusBarIconBrightness: Brightness.dark),
        child: Scaffold(
          backgroundColor: const Color(0xFFD7CCC8),
          body: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30),
            child:
            Stack(
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
                            // padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child : Image(
                                image: AssetImage(article.bgImage),
                                fit: BoxFit.cover,
                              ),
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
                          Column(
                            children: article.description.map<Widget>((e) {
                              if (e is String) {
                                return Text(
                                  e,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                );
                              } else if (e is CardImg) {
                                //add padding
                                return Padding(
                                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                                  child: e,
                                );
                              }else if (e is CardVid) {
                                //add padding
                                return e;
                              }
                              return const SizedBox();
                            }).toList(),
                          ),

                          // CardVid(width: 330, height: 220, videoId: 'AIeOHiQvlCQ'),
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
        ),
    );
    // return CardVid(width: 330, height: 220, videoId: 'AIeOHiQvlCQ');
  }
}
