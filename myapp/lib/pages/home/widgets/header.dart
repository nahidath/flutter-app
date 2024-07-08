import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hello beauté,",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Quoi de neuf aujourd'hui?",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: const Color(0xFFDAA520),
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
