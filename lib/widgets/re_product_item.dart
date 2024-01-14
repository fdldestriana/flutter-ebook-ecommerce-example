import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/data/model/product.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:ecommerce_example/widgets/re_discount_tag.dart';
import 'package:ecommerce_example/widgets/re_favorite_button.dart';
import 'package:ecommerce_example/widgets/re_new_tag.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReProductItem extends StatelessWidget {
  const ReProductItem({required this.product, super.key});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                product.image,
                width: Get.width * 0.39,
                height: Get.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 9,
              top: 8,
              child: ReNewTag(isNew: product.isNew),
            ),
            Positioned(
              left: 9,
              top: 8,
              child: ReDiscountTag(
                discount: product.discount,
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
          product.brand,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.montserrat(
            color: lightColorScheme
                .copyWith(background: const Color(0xFF9B9B9B))
                .background,
            fontSize: 11,
          ),
        ),
        Expanded(
          child: Text(
            product.name,
            style: GoogleFonts.montserrat(
                color: lightColorScheme.shadow,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${product.price} \$',
                style: GoogleFonts.montserrat(
                    color: lightColorScheme.shadow,
                    fontSize: 13,
                    decoration: product.discount != 0
                        ? TextDecoration.lineThrough
                        : null),
              ),
              const SizedBox(
                width: 5,
              ),
              Visibility(
                visible: product.discount != 0,
                child: Text(
                  '${product.price - (product.price * product.discount / 100)} \$',
                  style: GoogleFonts.montserrat(
                      color: lightColorScheme.primary, fontSize: 13),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
