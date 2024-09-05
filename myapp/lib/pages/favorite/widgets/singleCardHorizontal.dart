import 'package:flutter/material.dart';

import '../../article/widgets/card_img.dart';



class SingleCH extends StatelessWidget {
  // final String imgPath;

  // singleCH({required this.imgPath});
  SingleCH({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 338,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
                children :[
                  CardImg(imgPath: 'assets/img/black_woman_face.jpg'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        width : 250,
                        height : 70,
                        transformAlignment: Alignment.center,
                        child :
                        Text('Titre article', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF242424)),overflow: TextOverflow.ellipsis, maxLines: 2,),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.grey),
                        onPressed: () => {},
                      ),
                    ],
                  )
                ]
            ),
          ),
        )
    );
  }

}