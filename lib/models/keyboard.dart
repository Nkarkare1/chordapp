import 'package:flutter/material.dart';

import 'piano_keys.dart';
import 'chords.dart';

class Keyboard extends StatefulWidget {
  final bool isInteractive;
  final String?
      rootNoteForChord; // if this keyboard's sole purpose is to display how to play a chord
  final String? chordQuality;

  const Keyboard(
      {super.key,
      required this.isInteractive,
      required this.rootNoteForChord,
      required this.chordQuality});

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  late List<bool> _isSelectedList;

  @override
  void initState() {
    super.initState();
    if (widget.rootNoteForChord != null && widget.chordQuality != null) {
      _isSelectedList =
          Chord.chordGenerator(widget.chordQuality!, widget.rootNoteForChord!);
    } else {
      _isSelectedList = List.generate(13, (index) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: <KeyButton>[
            KeyButton(
              onPressed: () => {},
              keyNumber: 1,
              isInteractive: widget.isInteractive,
              isSelected: _isSelectedList[1],
            ),
            KeyButton(
              onPressed: () => {},
              keyNumber: 3,
              isInteractive: widget.isInteractive,
              isSelected: _isSelectedList[3],
            ),
            KeyButton(
              onPressed: () => {},
              keyNumber: 5,
              isInteractive: widget.isInteractive,
              isSelected: _isSelectedList[5],
            ),
            KeyButton(
              onPressed: () => {},
              keyNumber: 6,
              isInteractive: widget.isInteractive,
              isSelected: _isSelectedList[6],
            ),
            KeyButton(
              onPressed: () => {},
              keyNumber: 8,
              isInteractive: widget.isInteractive,
              isSelected: _isSelectedList[8],
            ),
            KeyButton(
              onPressed: () => {},
              keyNumber: 10,
              isInteractive: widget.isInteractive,
              isSelected: _isSelectedList[10],
            ),
            KeyButton(
              onPressed: () => {},
              keyNumber: 12,
              isInteractive: widget.isInteractive,
              isSelected: _isSelectedList[12],
            ),
          ],
        ),
        Positioned(
          left: 44,
          bottom: 59,
          child: KeyButton(
            onPressed: () {},
            keyNumber: 2,
            isInteractive: widget.isInteractive,
            isSelected: _isSelectedList[2],
          ),
        ),
        Positioned(
          left: 103,
          bottom: 59,
          child: KeyButton(
            onPressed: () {},
            keyNumber: 4,
            isInteractive: widget.isInteractive,
            isSelected: _isSelectedList[4],
          ),
        ),
        Positioned(
          left: 220,
          bottom: 59,
          child: KeyButton(
            onPressed: () {},
            keyNumber: 7,
            isInteractive: widget.isInteractive,
            isSelected: _isSelectedList[7],
          ),
        ),
        Positioned(
          left: 279,
          bottom: 59,
          child: KeyButton(
            onPressed: () {},
            keyNumber: 9,
            isInteractive: widget.isInteractive,
            isSelected: _isSelectedList[9],
          ),
        ),
        Positioned(
          left: 337,
          bottom: 59,
          child: KeyButton(
            onPressed: () {},
            keyNumber: 11,
            isInteractive: widget.isInteractive,
            isSelected: _isSelectedList[11],
          ),
        ),
      ],
    );
  }
}
