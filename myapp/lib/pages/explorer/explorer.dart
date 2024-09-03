import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pages/explorer/widgets/vertical_card.dart';

import '../home/widgets/search.dart';



class Explorer extends StatelessWidget {

  Explorer({super.key});

  final categories = [
    {
      'icon': Icons.face_retouching_natural,
      'title': 'Visage'
    },
    {
      'icon': Icons.accessibility_new,
      'title': 'Corps'
    },
    {
      'icon': Icons.face_3,
      'title': 'Cheveux'
    },
    {
      'icon': Icons.add_circle,
      'title': 'Maquillage'
    },
    {
      'icon': Icons.add_circle,
      'title': 'Style de vie'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarColor: Color(0xFFD7CCC8), statusBarIconBrightness: Brightness.dark),
      child:  Scaffold(
        backgroundColor: const Color(0xFFD7CCC8),
        body: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          child:
          Column(
              children: [
                SizedBox(height: 20),
                SearchSection(),
                Container(
                    height: 40,
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Center(
                      child :
                      ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) => Row(
                            children: [
                              TextButton.icon(
                                style : ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all<Color>(const Color(0xFF7D3705)),
                                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      )
                                  ),
                                ),
                                onPressed: () {},
                                icon: Icon(categories[index]['icon'] as IconData, color: Colors.white, size: 15),
                                label: Text(categories[index]['title'] as String),
                              ),
                            ],
                          ),
                          separatorBuilder: (_, index) => const SizedBox(width: 10),
                          itemCount: categories.length
                      ),
                    ),
                ),
                SizedBox(height: 45),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    children: [
                      Wrap(
                          runSpacing : 20,
                        children: [
                          VerticalCard(),
                          VerticalCard(),
                          VerticalCard(),
                          VerticalCard(),
                          VerticalCard(),
                          VerticalCard(),
                          VerticalCard(),
                        ],
                      )

                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );

  }
}