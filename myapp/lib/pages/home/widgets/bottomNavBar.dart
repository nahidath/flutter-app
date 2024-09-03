import 'package:flutter/material.dart';

import '../../explorer/explorer.dart';
import '../../profile/profile.dart';
import '../home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Explorer(),
    FavoritesPageBN(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
        color: const Color(0xFFD7CCC8),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              selectedItemColor: const Color(0xFF8B5E3C),
              unselectedItemColor: const Color(0xFF958f92),
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

// class HomePageBN extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return HomePage();
//   }
// }

// class ExplorePageBN extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Explore Page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//     );
//   }
// }

class FavoritesPageBN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorites Page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }
}

// class HomePageBN extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Profile Page', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
//     );
//   }
// }
