import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_size_widget/auto_size_widget.dart';
import 'package:flutter/material.dart';

import '../../../models/article.dart';
import '../../article/article.dart';


class VerticalCard extends StatelessWidget {
  // final String imgPath;
  // final String title;
  //
  //
  // VerticalCard({required this.imgPath, required this.title});


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child:InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //     const ArticlePage(),
            //   ),
            // );
            print('Card tapped');
          },
          splashColor: Colors.white.withOpacity(0.3), // Couleur de l'effet ripple
          highlightColor: Colors.white.withOpacity(0.2), // Couleur de la surbrillance
          borderRadius: BorderRadius.circular(10), // Pour que l'effet suive la forme de la carte
          child:  Container(
            margin: const EdgeInsets.only(right: 20),
            width: 150,
            decoration: BoxDecoration(
              color: const Color(0xFF8B5E3C),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // image: const DecorationImage(
                    //   image: AssetImage('assets/img/visage.jpg'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),

                //add faded background to text to make it more readable on the image
                AutoSizeWidget(
                  // padding: const EdgeInsets.all(10),
                  initialWidth: 150,
                  initialHeight: 50,
                  maxWidth: 150,
                  maxHeight: 200,
                  showIcon: false,
                  boxDecoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xFF000000),
                        Color(0xFF181818),
                        Color(0xFF2A2A2A),
                        Color(0xFF3C3C3C),
                        Color(0xFF505050),
                        Color(0xFF646464),
                        Color(0xFF797979),
                        Color(0xFF8F8F8F),
                      ],
                    ),
                    color: const Color(0xFFD7CCC8).withOpacity(0.7),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AutoSizeText(
                      //decreased font size to fit the text in the container
                      'Visage',
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ),
                ),

                // const Padding(
                //   padding: EdgeInsets.all(10),
                //   child: Text(
                //     'Visage',
                //     style: TextStyle(
                //       color: Color(0xFF7D3705),
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
              ],
            ),
          )),
    );

  }
}