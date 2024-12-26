import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_elvButtom.dart';
import 'package:notes_app/views/widgets/custom_textField.dart';

class ModelButtomSheet extends StatefulWidget {
  const ModelButtomSheet({
    super.key,
  });

  @override
  State<ModelButtomSheet> createState() => _ModelButtomSheetState();
}

class _ModelButtomSheetState extends State<ModelButtomSheet> {
  final FocusNode _firstFocusNode = FocusNode();
  final FocusNode _secondFocusNode = FocusNode();
  bool isScrollControlled = false;

  @override
  void initState() {
    super.initState();
    _secondFocusNode.addListener(() {
      setState(() {
        isScrollControlled = _secondFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            CustomTextfield(
              hint: 'title',
              focusNode: _firstFocusNode,
            ),
            CustomTextfield(
              hint: 'contant',
              maxlines: 5,
              focusNode: _secondFocusNode,
            ),
            SizedBox(height: 130),
            CustomElvbuttom(),
          ],
        ),
      ),
    );
  }
}
