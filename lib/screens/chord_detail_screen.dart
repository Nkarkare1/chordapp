// chord_detail_screen.dart

import 'package:flutter/material.dart';
import '../models/chords.dart';

class ChordDetailScreen extends StatelessWidget {
  final Chord
      chord; // Assuming Chord is a data model for your chord information

  const ChordDetailScreen({required this.chord, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chord.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How to play ${chord.title} on the piano:'),
            Image(
              image: AssetImage(chord.imagePath),
            )
          ],
        ),
      ),
    );
  }
}
