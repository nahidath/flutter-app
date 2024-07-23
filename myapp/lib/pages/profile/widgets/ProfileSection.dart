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
      'icon': Icons.help,
      'title': 'A propos',
    },
    {
      'icon': Icons.logout,
      'title': 'Logout',
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



        ],
      ),
    );
  }
}
