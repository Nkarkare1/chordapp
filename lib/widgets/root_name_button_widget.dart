
import 'package:chord_dictionary/screens/chord_list_screen.dart';
import 'package:flutter/material.dart';

class RootNameButton extends StatelessWidget {
  final String root;
  const RootNameButton({super.key, required this.root});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChordListScreen(root: root)));
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20), // Set borderRadius to make edges rounded
          ),
        ),
        child: Text(root,
        style: const TextStyle(fontSize: 24)));
  }
}
