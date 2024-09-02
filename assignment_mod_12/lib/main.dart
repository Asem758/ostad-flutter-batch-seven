import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // For kIsWeb
import 'desktop_screen.dart';
import 'tablet_screen.dart';
import 'mobile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Determine the screen size
    var screenWidth = MediaQuery.of(context).size.width;

    // Determine if the app is running on the web
    bool isWeb = kIsWeb;

    if (isWeb || screenWidth >= 1024) {
      // Show desktop version
      return DesktopScreen();
    } else if (screenWidth >= 600) {
      // Show tablet version
      return TabletScreen();
    } else {
      // Show mobile version
      return MobileScreen();
    }
  }
}
