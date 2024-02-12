import 'package:flutter/material.dart';

import '../widgets/chord_list_widget.dart';

class ChordListScreen extends StatelessWidget {
  final String root;
  const ChordListScreen({super.key, required this.root});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChordListWidget(rootNote: root)
    );
  }

}