import 'package:flutter/material.dart';
import 'package:myapp/pages/home/widgets/search.dart';

import 'widgets/bottomNavBar.dart';
import 'widgets/category.dart';
import 'widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              // Transform(
              //   transform: Matrix4.identity()..rotateZ(20),
              //   origin: const Offset(150, 50),
              //   child: Image.asset(
              //     'assets/images/bg_liquid.png',
              //     width: 200,
              //   ),
              // ),
              // Positioned(
              //   right: 0,
              //   top: 200,
              //   child: Transform(
              //     transform: Matrix4.identity()..rotateZ(20),
              //     origin: const Offset(180, 100),
              //     child: Image.asset(
              //       'assets/images/bg_liquid.png',
              //       width: 200,
              //     ),
              //   ),
              // ),
              Column(
                children: [
                  const HeaderSection(),
                  const SearchSection(),
                  CategorySection(),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }


}
