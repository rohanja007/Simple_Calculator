import 'package:flutter/material.dart';
import 'package:simple_calculator/view/splashScreen.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Splashscreen()
    );
  }
}
