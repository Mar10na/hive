import 'package:flutter/material.dart';
import 'package:hive/newproject/note.dart';

class PageProvider extends ChangeNotifier {
  List<Note> pages = [];
  void changePage(Note note) {
    pages.add(note);
    notifyListeners();
  }

  void removePage(int index) {
    pages.remove(index);
     notifyListeners();
  }
}
