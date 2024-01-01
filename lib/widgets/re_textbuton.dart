import 'package:ecommerce_example/color_schemes.dart';
import 'package:flutter/material.dart';

class ReTextButton extends StatelessWidget {
  const ReTextButton({required this.label, required this.onPressed, super.key});

  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(color: lightColorScheme.scrim, fontSize: 14),
          ),
          const Expanded(
            child: Icon(
              Icons.arrow_forward,
            ),
          )
        ],
      ),
    );
  }
}
