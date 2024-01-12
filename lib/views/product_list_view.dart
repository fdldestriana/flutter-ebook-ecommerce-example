import 'package:ecommerce_example/data/source/product_list.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:ecommerce_example/widgets/re_product_item.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: Get.width * 0.05,
        ),
        shrinkWrap: true,
        itemCount: productList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => ReProductItem(
          product: productList[index],
        ),
      ),
    );
  }
}
