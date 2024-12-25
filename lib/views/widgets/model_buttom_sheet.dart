import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_elvButtom.dart';
import 'package:notes_app/views/widgets/custom_textField.dart';

class addModelButtomSheet extends StatelessWidget {
  const addModelButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextfield(
              hint: 'title',
            ),
            CustomTextfield(
              hint: 'contant',
              maxlines: 5,
            ),
            SizedBox(height: 70),
            CustomElvbuttom(),
          ],
        ),
      ),
    );
  }
}
