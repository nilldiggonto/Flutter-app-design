import 'package:flutter/material.dart';
// import 'package:restapi_app/views/note_list.dart';
import 'package:get_it/get_it.dart';
import 'package:restapi_app/services/note_service.dart';
import 'package:restapi_app/views/note_list.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => NoteService());
  // GetIt.instance<NoteService>();
}

void main() {
  setupLocator();
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REST TEST',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: NoteList(),
    );
  }
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
