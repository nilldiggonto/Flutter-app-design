import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Nav App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Intro'),
        backgroundColor: Colors.teal.shade900,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              // child: Text('Drawer Header'),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.teal.shade300,
                    Colors.teal.shade600,
                  ],
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.network(
                          'https://www.nicepng.com/png/full/700-7004866_pen-red-transprent-png-free-download-pink.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Drawer intro',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CustomeListTile(Icons.person, 'Profile', () {}),
            CustomeListTile(Icons.settings, 'Settings', () {}),
            CustomeListTile(Icons.notifications, 'Notification', () {}),
            CustomeListTile(Icons.notification_add, 'Add', () {}),
          ],
        ),
      ),
    );
  }
}

class CustomeListTile extends StatelessWidget {
  // const CustomeListTile({Key? key}) : super(key: key);
  IconData icon;
  String text;
  VoidCallback oneTap;
  CustomeListTile(this.icon, this.text, this.oneTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: InkWell(
          // onTap: oneTap,
          splashColor: Colors.teal,
          onTap: oneTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
