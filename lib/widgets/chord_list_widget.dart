
import 'package:chord_dictionary/models/chords.dart';

import '../screens/chord_detail_screen.dart';
import 'package:flutter/material.dart';

class ChordListWidget extends StatelessWidget {
  final String rootNote;
  

  const ChordListWidget({super.key, required this.rootNote});
  

  @override
  Widget build(BuildContext context) {
    Map<String, List<Chord>> chordsByRoot = Chord.getChordsByRoot(rootNote);

    return ListView.builder(
      
      itemCount: chordsByRoot[rootNote]!.length,
      itemBuilder: (BuildContext context, int index) {
        // Return a GestureDetector for each chord item
        return GestureDetector(
          onTap: () {
            // Handle click, navigate to ChordDetailScreen with the selected chord
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChordDetailScreen(chord: chordsByRoot[rootNote]![index]),
              ),
            );
          },
          child: ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(chordsByRoot[rootNote]![index].title), // Display chord name
          ),
        );
      },
    );
  }
}
