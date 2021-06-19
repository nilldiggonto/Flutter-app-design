import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  // const NoteModify({Key? key}) : super(key: key);
  final String? noteId;
  bool get isEditin => noteId != null;
  NoteModify({this.noteId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditin ? 'Edit one' : 'Create one'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Write Title',
              ),
            ),
            Container(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Write Content',
              ),
            ),
            Container(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 35,
              child: ElevatedButton(
                  onPressed: () {
                    if (isEditin) {
                      //
                    } else {
                      //
                    }
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'submit',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
