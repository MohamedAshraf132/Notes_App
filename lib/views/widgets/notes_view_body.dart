import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(),
        Expanded(
          child: NotesListView(),
        ),
      ],
    );
  }
}
