import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pages/favorite/widgets/singleCardHorizontal.dart';



class Favorite extends StatelessWidget {

  Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarColor: Color(0xFFD7CCC8), statusBarIconBrightness: Brightness.dark),
      child:  Scaffold(
        backgroundColor: const Color(0xFFD7CCC8),
        appBar: AppBar(
          backgroundColor: const Color(0xFFD7CCC8),
          elevation: 0,
          toolbarHeight: 75,
          scrolledUnderElevation: 1,
          surfaceTintColor: const Color(0xFFD7CCC8),
          shadowColor: Theme.of(context).colorScheme.shadow,
          title: Row(
            children :[
              Text('Favoris  ', style: TextStyle(color: Color(0xFF242424), fontSize: 24, fontWeight: FontWeight.w600)),
              Icon(Icons.favorite, color: Color(0xFF242424)),
            ]
          )
          // centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(
            // top: 15,
            left: 10,
            right: 10,
          ),
          child:
              SingleChildScrollView(
              child:
                Column(
                  children: [
                    SingleCH(),
                    SingleCH(),
                    SingleCH(),
                    SingleCH(),
                    SingleCH(),
                    SingleCH(),
                    SingleCH(),
                    SingleCH(),
                    SingleCH(),
                  ],
                ),
              ),
          )
        ),
    );

  }
}