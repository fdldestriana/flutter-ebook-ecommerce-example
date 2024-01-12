import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:flutter/material.dart';

class ReFavoriteButton extends StatefulWidget {
  const ReFavoriteButton({super.key});

  @override
  State<ReFavoriteButton> createState() => _ReFavoriteButtonState();
}

class _ReFavoriteButtonState extends State<ReFavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isFavorite = !isFavorite;
        setState(() {});
      },
      child: Container(
        width: Get.width * 0.10,
        height: Get.height * 0.04,
        decoration: BoxDecoration(
            color: lightColorScheme.onPrimary, shape: BoxShape.circle),
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite
              ? lightColorScheme.primary
              : lightColorScheme
                  .copyWith(background: const Color(0xFF9B9B9B))
                  .background,
        ),
      ),
    );
  }
}
