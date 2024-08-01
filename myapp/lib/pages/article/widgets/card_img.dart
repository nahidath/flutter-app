import 'package:flutter/material.dart';




class CardImg extends StatelessWidget {
  final String imgPath;
  final double width = 330;
  final double height = 220;


  CardImg({required this.imgPath, width, height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}