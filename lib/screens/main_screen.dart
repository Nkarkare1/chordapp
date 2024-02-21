import 'package:chord_dictionary/widgets/root_name_button_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String title;
  const MainScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    const title = 'Chord Dictionary';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: const Column(
          children: [
            Row(
              children: [
                RootNameButton(root: 'C'),
                RootNameButton(root: 'D')
              ]),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: IconButton(icon: const Icon(Icons.home), onPressed: () {},),
        )
      ),
      
    );
  }
}