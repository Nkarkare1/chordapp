import 'package:flutter/material.dart';
import '../widgets/chord_list_widget.dart'; // Import your ChordListWidget

class MainScreen extends StatelessWidget {
  final String title;
  const MainScreen({super.key, required this.title});

  @override
    @override
  Widget build(BuildContext context) {
    const title = 'Chords';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chords'),
          backgroundColor: Colors.blueAccent,
        ),
        body: ChordListWidget()
      ),
    );
  }
}