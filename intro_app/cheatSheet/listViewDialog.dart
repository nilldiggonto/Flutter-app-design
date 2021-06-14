import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

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
        title: Center(
          child: Text('intro to flutter'),
        ),
      ),
      body: _MyList(),
    );
  }
}

class _MyList extends StatelessWidget {
  const _MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(4.0),
      itemCount: 5,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text('Title about list builder'),
          subtitle: Text(
            'I am subtitle',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.amber),
          ),
          leading: Icon(Icons.face),
          trailing: ElevatedButton(
            child: Text('remove'),
            onPressed: () {
              deleteDialog(context).then((value) {
                print('$value');
              });
            },
          ),
        );
      },
    );
  }
}

Future<bool> deleteDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Will deleted'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text('yes'),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text('No'))
        ],
      );
    },
  );
}



// Hlw world body
//  body: Center(
//           child: Text(
//             'Yo i wrote something',
//             style: TextStyle(
//                 fontSize: 24.0, color: Colors.red, fontFamily: 'BigShoulder'),
//           ),
//         ),