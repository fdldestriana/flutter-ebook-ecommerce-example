import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/data/model/product.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:ecommerce_example/widgets/re_favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({required this.product, super.key});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.40,
      height: Get.height * 0.32,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  product.image,
                  width: Get.width * 0.39,
                  height: Get.height * 0.23,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: -Get.width * 0.01,
                bottom: -Get.height * 0.02,
                child: const ReFavoriteButton(),
              )
            ],
          ),
          Expanded(
            child: Row(
              children: [
                ...List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: lightColorScheme
                        .copyWith(background: const Color(0xFFFFBA49))
                        .background,
                    size: 14,
                  ),
                )
              ],
            ),
          ),
          Text(
            product.name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.montserrat(
                color: lightColorScheme
                    .copyWith(background: const Color(0xFF9B9B9B))
                    .background,
                fontSize: 11),
          ),
          Expanded(
            child: Text(
              product.brand,
              style: GoogleFonts.montserrat(
                  color: lightColorScheme.shadow, fontSize: 15),
            ),
          ),
          Expanded(
            child: Text(
              '${product.price / 100} \$',
              style: GoogleFonts.montserrat(
                  color: lightColorScheme.shadow, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
