import 'package:flutter/material.dart';

class KeyButton extends StatefulWidget {
  final VoidCallback onPressed;
  final int keyNumber; // numbered from 1 to 88
  final bool isInteractive;
  final bool isSelected;

  const KeyButton(
      {super.key,
      required this.onPressed,
      required this.keyNumber,
      required this.isInteractive,
      required this.isSelected});

  @override
  State<KeyButton> createState() => _KeyButtonState();
}

class _KeyButtonState extends State<KeyButton> {
  late bool isBlack;
  bool _isPressed = false;

  @override
  void initState() {
      super.initState();
      int remainder = widget.keyNumber % 12;
      isBlack = [2, 4, 7, 9, 11].contains(remainder);
  }


  

  void _togglePressed() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    Container keyContainer;
    if (isBlack) {
      keyContainer = Container(
        width: 30,
        height: 150,
        alignment: Alignment.bottomCenter,
        color: _isPressed
            ? Colors.lightBlue
            : (widget.isSelected ? Colors.lightBlue : Colors.black),
        child: Text(
          widget.keyNumber.toString(),
          style: TextStyle(color: Colors.white70),
        ),
      );
    } else {
      keyContainer = Container(
        width: 58.77,
        height: 210,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: _isPressed
                ? Colors.lightBlue
                : (widget.isSelected ? Colors.lightBlue : Colors.white)),
        child: Text(widget.keyNumber.toString()),
      );
    }

    if (widget.isInteractive) {
      return GestureDetector(
        onTap: _togglePressed,
        child: keyContainer,
      );
    } else {
      return keyContainer;
    }
  }
}
