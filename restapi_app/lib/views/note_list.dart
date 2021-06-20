import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:restapi_app/models/list_model.dart';
import 'package:restapi_app/services/note_service.dart';
import 'package:restapi_app/views/note_delete.dart';
import 'package:restapi_app/views/note_modify.dart';

class NoteList extends StatefulWidget {
  // const NoteList({Key? key}) : super(key: key);
  // final service = NoteService();
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  NoteService get service => GetIt.I<NoteService>();
  List<NoteForListing> notes = [];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  void initState() {
    // TODO: implement initState
    notes = service.getNoteList();
    // print(notes);
    super.initState();
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
