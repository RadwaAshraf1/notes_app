import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_app_bar.dart';
import 'package:notesapp/views/widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
           SizedBox(height: 50,),
          CustomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
        ],
      ),
    );
  }
}
