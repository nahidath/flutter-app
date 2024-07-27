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
          //add text before profile menu
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nom Prenom',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          //profile menu here
          Container(
            height: 460.3,
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: ListView.separated(
              itemBuilder: (_, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () { },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD7CCC8),
                      padding: const EdgeInsets.all(10),
                      fixedSize: Size(MediaQuery.of(context).size.width, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Color(0xFF959597), width: 0.2),
                      ),
                      elevation: 2,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          profilList[index]['icon'] as IconData,
                          color: Color(0xFF242424),
                          size: 28,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          profilList[index]['title'] as String,
                          style: const TextStyle(
                            color: Color(0xFF242424),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
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
