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
          ),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        if (isEdit)
          Positioned(
            bottom: -4,
            right: 4,
            child: IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color(0xFFDAA520)),
                shape: WidgetStateProperty.all(
                    const CircleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    )
                ),
                fixedSize: WidgetStateProperty.all(const Size(40, 40)),
              ),
              onPressed: () {  },
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}