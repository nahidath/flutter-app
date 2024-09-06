import 'package:flutter/material.dart';




class CardImg extends StatelessWidget {
  final String imgPath;
  final double width;
  final double height;
  final bool isFavorite;


  CardImg({required this.imgPath, this.width = 330, this.height=220, isFav, this.isFavorite = false});


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
      //add heart icon in top right corner
      child: isFavorite ? Align(
        alignment: Alignment.topRight,
        child: Icon(
           Icons.favorite ,
          color: Colors.red,
          size: 35,
        ),
      ) : SizedBox(height:0),
    );
  }
}