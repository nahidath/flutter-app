import 'package:flutter/material.dart';
import 'package:myapp/pages/profile/widgets/ProfileSection.dart';
import 'package:myapp/pages/profile/widgets/profilePicture.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF8B5E3C),
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: SingleChildScrollView(
          child : Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 175,
                    color: const Color(0xFF8B5E3C),
                  ),
                   ProfileSection(),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width / 2 - 55,
                child:
                ProfilePicture(
                  imagePath: 'assets/img/user-no-photo.png',
                  radius: 60,
                  isEdit: true,
                  key: Key('profile-picture'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}