// import 'package:flutter_test/flutter_test.dart'
import 'package:flutter/material.dart';
import 'package:intro_app/firstPage.dart';
import 'package:intro_app/secondPage.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Working with Tab'),
        backgroundColor: Colors.teal,
        // bottom:
      ),
      bottomNavigationBar: Material(
        color: Colors.teal,
        child: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.access_alarm),
            ),
            Tab(
              icon: Icon(Icons.access_time),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(),
          SecondPage(),
        ],
      ),
    );
  }
}
