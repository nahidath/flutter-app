import 'package:flutter/material.dart';



class ProfilePicture extends StatelessWidget {
  final String imagePath;
  final double radius;
  final bool isEdit;

  const ProfilePicture({
    required Key key,
    required this.imagePath,
    this.radius = 50,
    this.isEdit = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: radius * 2,
          width: radius * 2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        if (isEdit)
          Positioned(
            bottom: 0,
            right: 4,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}