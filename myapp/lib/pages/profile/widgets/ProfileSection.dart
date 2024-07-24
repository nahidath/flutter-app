import 'package:flutter/material.dart';


class ProfileSection extends StatelessWidget {
  ProfileSection({super.key});

  final profilList = [
    {
      'icon': Icons.person,
      'title': 'Modifier les informations',
    },
    {
      'icon': Icons.notifications,
      'title': 'Notifications',
    },
    {
      'icon': Icons.info,
      'title': 'A propos',
    },
    {
      'icon': Icons.logout,
      'title': 'Déconnexion',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFD7CCC8),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          //profile menu here
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
                        color: profilList[index]['color'] as Color),
                    child: Icon(
                      profilList[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    profilList[index]['title'] as String,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              separatorBuilder: (_, __) => const SizedBox(width: 20),
              itemCount: profilList.length,
            ),
          ),



        ],
      ),
    );
  }
}
