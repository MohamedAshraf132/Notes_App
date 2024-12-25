import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  CustomNoteItem({
    super.key,
  });
  final List notes = [
    {
      'title': 'Note 1',
      'description': 'This is the first note in the notes list for the project',
      'date': '2022-02-01',
    },
    {
      'title': 'Note 2',
      'description': 'This is the first note in the notes list for the project',
      'date': '2022-02-01',
    },
    {
      'title': 'Note 3',
      'description': 'This is the first note in the notes list for the project',
      'date': '2022-02-01',
    },
    {
      'title': 'Note 4',
      'description': 'This is the first note in the notes list for the project',
      'date': '2022-02-01',
    },
    {
      'title': 'Note 5',
      'description': 'This is the first note in the notes list for the project',
      'date': '2022-02-01',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffFFCC80),
        ),
        child: Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  notes[0]['title'],
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              subtitle: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  notes[0]['description'],
                  style: TextStyle(
                      color: const Color.fromARGB(255, 93, 93, 93),
                      fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.black,
                iconSize: 35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 255, bottom: 20),
              child: Text(
                notes[0]['date'],
                style: TextStyle(color: const Color.fromARGB(255, 96, 94, 94)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
