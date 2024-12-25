import 'package:flutter/material.dart';

class CustomElvbuttom extends StatelessWidget {
  const CustomElvbuttom({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.cyan,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          fixedSize: Size(330, 50)),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        'Save',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
