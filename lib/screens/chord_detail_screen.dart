// chord_detail_screen.dart

import 'package:flutter/material.dart';

class ChordDetailScreen extends StatelessWidget {
  final Chord chord; // Assuming Chord is a data model for your chord information

  ChordDetailScreen({required this.chord});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chord.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How to play ${chord.name} on the piano:'),
            // Additional details or instructions for the chord
          ],
        ),
      ),
    );
  }
}
