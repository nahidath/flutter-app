import 'package:flutter/material.dart';




class CardImg extends StatelessWidget {
  final String imgPath;
  final double width;
  final double height;
  final bool isVideo = false;

  CardImg({required this.imgPath, required this.width, required this.height, isVideo});

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