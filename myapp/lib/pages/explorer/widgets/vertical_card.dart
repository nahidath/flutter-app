import 'package:flutter/material.dart';

import '../../../models/article.dart';


class VerticalCard extends StatelessWidget {
  // final String imgPath;
  // final String title;
  //
  //
  // VerticalCard({required this.imgPath, required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 150,
      decoration: BoxDecoration(
        // color: const Color(0xFFD7CCC8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/img/visage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //add faded background to text to make it more readable on the image
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFD7CCC8).withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Text(
              'Visage',
              style: const TextStyle(
                color: Color(0xFF7D3705),
                fontSize: 18,
                fontWeight: FontWeight.bold,
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
    );
  }
}