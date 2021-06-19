import 'package:flutter/material.dart';
import 'package:restapi_app/models/list_model.dart';
import 'package:restapi_app/views/note_delete.dart';
import 'package:restapi_app/views/note_modify.dart';

class NoteList extends StatelessWidget {
  // const NoteList({Key? key}) : super(key: key);
  final notes = [
    new NoteForListing(
      noteId: "1",
      noteTitle: 'first note',
      createDateTime: DateTime.now(),
      lastEditTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "2",
      noteTitle: 'second note',
      createDateTime: DateTime.now(),
      lastEditTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "3",
      noteTitle: 'Third note',
      createDateTime: DateTime.now(),
      lastEditTime: DateTime.now(),
    ),
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of data'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => NoteModify(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: (__, index) {
            return Dismissible(
              key: ValueKey(notes[index].noteId),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction) {},
              confirmDismiss: (direction) async {
                final result = await showDialog(
                    context: context, builder: (_) => NoteDelete());
                return result;
              },
              background: Container(
                color: Colors.red,
                padding: EdgeInsets.only(left: 16),
                child: Align(
                  child: Icon(Icons.delete, color: Colors.white),
                  alignment: Alignment.centerLeft,
                ),
              ),
              child: ListTile(
                title: Text(
                  notes[index].noteTitle!,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                subtitle: Text(
                  'Edited on ${formatDateTime(notes[index].lastEditTime!)}',
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => NoteModify(noteId: notes[index].noteId),
                    ),
                  );
                },
              ),
            );
          },
          separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
          itemCount: notes.length),
    );
  }
}
