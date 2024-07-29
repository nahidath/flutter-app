import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pages/home/home.dart';
import 'package:myapp/pages/home/widgets/bottomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MyBeautyAfroBlog',
          home: BottomNavBar(),
        )
    );

  }
}