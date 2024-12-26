import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_textField.dart';

class EditNoteviewBody extends StatelessWidget {
  const EditNoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextfield(
          hint: 'title',
          focusNode: FocusNode(),
        ),
        CustomTextfield(
          hint: 'title',
          maxlines: 5,
          focusNode: FocusNode(),
        ),
      ],
    );
  }
}
