import 'package:ecommerce_example/color_schemes.dart';
import 'package:flutter/material.dart';

class ReNewTag extends StatelessWidget {
  const ReNewTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 24,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(29),
          ),
          color: lightColorScheme
              .copyWith(
                shadow: const Color(0xFF222222),
              )
              .shadow),
      child: Center(
        child: Text(
          "NEW",
          style: TextStyle(
              color: lightColorScheme.onPrimary,
              fontSize: 11,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
