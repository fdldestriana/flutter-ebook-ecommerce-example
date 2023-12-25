import 'package:flutter/material.dart';

class ReButton extends StatelessWidget {
  const ReButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width,
      required this.height});

  final String text;
  final Function()? onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
      ),
      child: Text(
        text,
      ),
    );
  }
}
