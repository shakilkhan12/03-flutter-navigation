import 'package:drawer_navigation/about_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'categories.dart';

void main() {
  runApp(const MainApp());
}

// https://youtu.be/cbAnN7ck8y8?list=PLFyjjoCMAPtxq8V9fuVmgsYKLNIKqSEV4&t=1910
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        AboutScreen.id: (context) => AboutScreen(),
        Categories.id: (context) => Categories()
      },
      // home: Scaffold(
      //   body: HomeScreen(),
      // ),
    );
  }
}
