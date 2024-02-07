// Import the ChordDetailScreen if you haven't already
import 'package:chord_dictionary/models/chord.dart';

import '../screens/chord_detail_screen.dart';
import 'package:flutter/material.dart';

class ChordListWidget extends StatelessWidget {
  final List<Chord> chords = [const Chord(title: "C", imagePath: "assets/c_major.jpg")];

  ChordListWidget({super.key});
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: chords.length,
      itemBuilder: (BuildContext context, int index) {
        // Return a GestureDetector for each chord item
        return GestureDetector(
          onTap: () {
            // Handle click, navigate to ChordDetailScreen with the selected chord
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChordDetailScreen(chord: chords[index]),
              ),
            );
          },
          child: ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(chords[index].title), // Display chord name
          ),
        );
      },
    );
  }
}
