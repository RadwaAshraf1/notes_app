import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/tools/my_tools.dart';
import 'package:notesapp/views/widgets/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(noteBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'assets/fonts/Poppins-Regular.ttf',
      ),
      home: const NotesView(),
    );
  }
}
