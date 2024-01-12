import 'package:ecommerce_example/data/source/product_list.dart';
import 'package:ecommerce_example/widgets/re_product_item.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: productList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => ReProductItem(
              product: productList[index],
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 150 / 260,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 26,
            ),
          ),
        ),
      ),
    );
  }
}
