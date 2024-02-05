// chord_list_widget.dart

import 'package:flutter/material.dart';

class ChordListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3, // number of chords,
      itemBuilder: (context, index) {
        // return a GestureDetector for each chord item
        return GestureDetector(
          onTap: () {
            // Handle click, navigate to ChordDetailScreen with the selected chord
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChordDetailScreen(chord: // selected chord),
              ),
            );
          },
          child: ListTile(
            title: // display chord name,
            // Additional details or styling for each chord item
          ),
        );
      },
    );
  }
}
