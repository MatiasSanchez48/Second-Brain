import 'dart:convert';

import 'package:second_brain/models/models.dart';
import 'package:second_brain/repository/repository_general.dart';

class NoteRepository extends RepositoryGeneral {
  const NoteRepository({required super.prefs});

  static final String _key = RepositoryGeneral.keyNotes;

  List<Note> getAll() {
    final notes = prefs.getStringList(_key) ?? [];
    return notes
        .map((e) => Note.fromJson(jsonDecode(e) as Map<String, dynamic>))
        .toList();
  }

  Future<void> saveAll(List<Note> notes) async {
    final raw = notes.map((e) => jsonEncode(e.toJson())).toList();
    await prefs.setStringList(_key, raw);
  }

  Future<void> add(Note note) async {
    final notes = getAll()..add(note);
    await saveAll(notes);
  }

  Future<void> delete(String id) async {
    final notes = getAll()..removeWhere((note) => note.id == id);
    await saveAll(notes);
  }

  Future<void> update(Note note) async {
    final notes = getAll()
      ..removeWhere((n) => n.id == note.id)
      ..add(note);
    await saveAll(notes);
  }

  Future<void> removeNotes(List<Note> notesToRemove) async {
    final notes = getAll()..removeWhere((note) => notesToRemove.contains(note));
    await saveAll(notes);
  }

  Future<void> clearKey() async {
    await prefs.remove(_key);
  }
}
