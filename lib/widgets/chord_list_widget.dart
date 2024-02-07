// Import the ChordDetailScreen if you haven't already
import 'package:chord_dictionary/models/chord.dart';

import '../screens/chord_detail_screen.dart';
import 'package:flutter/material.dart';

class ChordListWidget extends StatelessWidget {

  final List<Chord> chords = [Chord(title: "C")];

  ChordListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Sample chord data (replace it with your actual data)
     // Example chord names

    return ListView.builder(
      itemCount: chords.length,
      itemBuilder: (context, index) {
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
            title: Text(chords[index].title), // Display chord name
          ),
        );
      },
    );
  }
}
