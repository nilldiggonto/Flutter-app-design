import 'package:flutter/material.dart';
import 'package:pizza_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyan[900],
        accentColor: Colors.cyanAccent[400],
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      home: HomeScreen(),
    );
  }
}
