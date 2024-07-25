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
    );
  }


}
