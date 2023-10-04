import 'package:flutter/material.dart';
import 'package:notesapp/add_note_buttom_sheet.dart';
import 'package:notesapp/views/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        backgroundColor: const Color.fromARGB(255, 0, 110, 99),
        hoverColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}

