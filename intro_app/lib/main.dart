import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List? data;

  Future<void> makeRequest() async {
    String url = 'https://randomuser.me/api/?results=15';
    var response =
        await http.get(Uri.parse(url), headers: {'Accept': 'application/json'});

    // Map
    setState(() {
      var extractData = json.decode(response.body);
      data = extractData['results'];
    });

    // print(data[0]['name']['first']);

    // print(response.body);
    // var a = response.body;
    // return '';R
    // return response;
  }

  @override
  void initState() {
    this.makeRequest();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
          itemCount: data == null ? 0 : data!.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text(data![i]['name']['first']),
              subtitle: Text(data![i]['phone']),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  data![i]['picture']['thumbnail'],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnotherPage(data![i]),
                  ),
                );
              },
            );
          }),
    );
  }
}

class AnotherPage extends StatelessWidget {
  // const AnotherPage({Key? key}) : super(key: key);
  AnotherPage(this.data);
  final data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Detail page'),
        ),
        body: Center(
          child: Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
                color: Color(0xff7c94b6),
                image: DecorationImage(
                  image: NetworkImage(data!['picture']['large']),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(75.0),
                ),
                border: Border.all(
                  color: Colors.amber,
                  width: 4.0,
                )),
          ),
        ));
  }
}
