import 'package:flutter/material.dart';


class VerticalCard extends StatelessWidget {
  VerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 150,
      decoration: BoxDecoration(
        color: const Color(0xFFD7CCC8),
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
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Visage',
              style: TextStyle(
                color: Color(0xFF7D3705),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}