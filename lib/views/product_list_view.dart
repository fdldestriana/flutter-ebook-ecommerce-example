import 'package:ecommerce_example/data/source/product_list.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:ecommerce_example/widgets/re_button.dart';
import 'package:ecommerce_example/widgets/re_product_item.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 536,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/background/banner.png",
                fit: BoxFit.cover,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Fashion\nsale",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ReButton(
                      text: "Check",
                      onPressed: () {},
                      width: Get.width * 0.30,
                      height: Get.height * 0.04)
                ],
              ),
              titlePadding: const EdgeInsets.only(left: 15, bottom: 32),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: Get.height * 0.09,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New",
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "You've never seen it before",
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                    Text(
                      "View all",
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, top: 10),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: productList.length,
                (context, index) {
                  return ReProductItem(
                    product: productList[index],
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 150 / 260,
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 26),
            ),
          ),
        ],
      ),
    );
  }
}
