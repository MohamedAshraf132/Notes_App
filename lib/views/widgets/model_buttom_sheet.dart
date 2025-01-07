// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/views/widgets/custom_elvButtom.dart';
import 'package:notes_app/views/widgets/custom_textField.dart';

class ModelButtomSheet extends StatelessWidget {
  // bool isScrollControlled = false;

  ModelButtomSheet({
    Key? key,
    //required this.isScrollControlled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomTextfield(
            onSaved: (p0) {
              title = p0;
            },
            hint: 'title',
          ),
          CustomTextfield(
            onSaved: (p0) {
              subtitle = p0;
            },
            hint: 'contant',
            maxlines: 5,
          ),
          SizedBox(height: 130),
          CustomElvbuttom(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save;
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  title = null;
                  subtitle = null;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
