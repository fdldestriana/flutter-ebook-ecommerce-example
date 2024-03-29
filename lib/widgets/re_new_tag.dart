import 'package:ecommerce_example/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReNewTag extends StatelessWidget {
  const ReNewTag({required this.isNew, super.key});
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isNew,
      child: Container(
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
            style: GoogleFonts.montserrat(
                color: lightColorScheme.onPrimary,
                fontSize: 11,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
