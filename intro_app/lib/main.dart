import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Future<String> makeRequest() async{

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
