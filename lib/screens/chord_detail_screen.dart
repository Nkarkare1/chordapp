// chord_detail_screen.dart

import 'package:flutter/material.dart';
import '../models/chords.dart';
import '../models/keyboard.dart';

class ChordDetailScreen extends StatelessWidget {
  final Chord
      chord; // Assuming Chord is a data model for your chord information

  const ChordDetailScreen({required this.chord, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("" + chord.rootNote + " " + chord.quality[0].toUpperCase() + chord.quality.substring(1)),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2, // takes up 2/3 of screen in column
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text('Top 2/3 of the screen'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Keyboard(isInteractive: false, rootNoteForChord: chord.rootNote, chordQuality: "major",)
          ),
        ],
      ),
    );
  }
}
