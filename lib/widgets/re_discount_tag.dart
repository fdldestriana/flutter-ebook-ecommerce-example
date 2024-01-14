import 'package:ecommerce_example/color_schemes.dart';
import 'package:flutter/material.dart';

class ReDiscountTag extends StatelessWidget {
  const ReDiscountTag({required this.discount, super.key});
  final int discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 24,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(29),
          ),
          color: lightColorScheme.primary),
      child: Center(
        child: Text(
          "-$discount%",
          style: TextStyle(
              color: lightColorScheme.onPrimary,
              fontSize: 11,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
