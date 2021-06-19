import 'package:flutter/material.dart';
import 'package:restapi_app/views/note_list.dart';

void main() {
  runApp(MaterialApp(
    title: "REST TEST",
    theme: ThemeData(primarySwatch: Colors.teal),
    home: NoteList(),
  ));
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Working with REST'),
//       ),
//       body: Container(),
//     );
//   }
// }
