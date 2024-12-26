import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/model_buttom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 43, 162, 178),
        elevation: 20,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return ModelButtomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: NotesViewBody(),
      ),
    );
  }
}
