import 'package:flutter/material.dart';
import '../widgets/chord_list_widget.dart'; // Import your ChordListWidget

class MainScreen extends StatelessWidget {
  final String title;
  MainScreen({super.key, required this.title})

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Chords"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Use ChordListWidget to display the list of chords
            ChordListWidget(),
          ],
        ),
      ),
    );
  }
}
