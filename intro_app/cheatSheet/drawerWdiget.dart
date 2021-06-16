// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intro_app/about.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Menu'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Nill'),
              accountEmail: Text('mail@mail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatarfiles.alphacoders.com/178/178524.jpg'),
              ),
            ),
            ListTile(
              title: Text('About Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => AboutPage(),
                  ),
                );
              },
            ),
            Divider(
              color: Colors.teal,
              height: 4.0,
            ),
            ListTile(
              title: Text('About Page two'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => AboutPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
