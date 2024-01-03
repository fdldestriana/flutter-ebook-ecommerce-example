import 'package:flutter/material.dart';

class ReButton extends StatelessWidget {
  const ReButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width,
      required this.height,
      this.buttonColor});

  final String text;
  final Function()? onPressed;
  final double width;
  final double height;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: (buttonColor != null) ? Colors.transparent : null,
        minimumSize: Size(width, height),
      ),
      child: Text(
        text,
      ),
    );
  }
}
