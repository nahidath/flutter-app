import 'package:flutter/material.dart';
import 'package:myapp/pages/profile/widgets/ProfileSection.dart';

import '../home/widgets/bottomNavBar.dart';



class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8B5E3C),
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 170),
                     ProfileSection(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}