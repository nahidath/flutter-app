import 'package:flutter/material.dart';
import 'package:myapp/pages/home/widgets/popular.dart';

import 'newest.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.face_retouching_natural,
      'color': const Color(0xFF7D3705),
      'title': 'Visage'
    },
    {
      'icon': Icons.accessibility_new,
      'color': const Color(0xFFC95706),
      'title': 'Corps'
    },
    {
      'icon': Icons.face_3,
      'color': const Color(0xFFDD8100),
      'title': 'Cheveux'
    },
    {
      'icon': Icons.add_circle,
      'color': const Color(0xFFE39D35),
      'title': 'Plus'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF3E7E4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.all(25),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index]['color'] as Color),
                    child: Icon(
                      categories[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    categories[index]['title'] as String,
                    style: TextStyle(
                      color: Color(0xFF242424),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              separatorBuilder: (_, index) => const SizedBox(width: 33),
              itemCount: categories.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            width: 410,
            child: const Text(
              'Articles populaires',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(0xFF242424),
              ),
            ),
          ),
          PopularArticle(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            margin: const EdgeInsets.only(top: 30),
            width: 410,
            child: const Text(
              'Nouveaux articles',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(0xFF242424),
              ),
            ),
          ),
          NewestArticle(),
        ],
      ),
    );
  }
}
