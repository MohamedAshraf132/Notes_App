import 'package:flutter/material.dart';
import 'package:notes_app/views/edit%20notes/Edit_Noteview_Body.dart';
import 'package:notes_app/views/edit%20notes/Edit_noteView_appbar.dart';

class EditNoteview extends StatelessWidget {
  const EditNoteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          EditNoteviewAppbar(),
          Expanded(
            child: ListView(
              children: [
                EditNoteviewBody(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
