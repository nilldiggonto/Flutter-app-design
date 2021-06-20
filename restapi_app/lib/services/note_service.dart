import 'dart:convert';

import 'package:restapi_app/models/api_response.dart';
import 'package:restapi_app/models/list_model.dart';
import 'package:http/http.dart' as http;

class NoteService {
  static const headers = {'apiKey': 'd89a03ea-bc83-4d39-8345-d33422a456cb'};
  static const API = 'https://tq-notes-api-jkrgrdggbq-el.a.run.app/';
  Future<APIResponse<List<NoteForListing>>> getNoteList() async {
    return await http
        .get(Uri.parse('${API}/notes'), headers: headers)
        .then((data) {
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        final notes = <NoteForListing>[];
        for (var item in jsonData) {
          final note = NoteForListing(
            noteID: item['noteID'],
          );
        }
      }
    });
  }
}
