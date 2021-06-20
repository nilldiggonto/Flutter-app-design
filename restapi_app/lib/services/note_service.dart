import 'package:restapi_app/models/list_model.dart';

class NoteService {
  List<NoteForListing> getNoteList() {
    return [
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
  }
}
