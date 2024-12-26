import 'package:flutter/material.dart';

class EditNoteviewAppbar extends StatelessWidget {
  const EditNoteviewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Text(
            "Notes",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 56, 53, 51),
                borderRadius: BorderRadius.circular(18),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.check,
                  size: 30,
                ),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
