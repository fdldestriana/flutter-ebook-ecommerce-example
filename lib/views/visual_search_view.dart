import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:ecommerce_example/widgets/re_button.dart';
import 'package:flutter/material.dart';

class VisualSearchView extends StatelessWidget {
  const VisualSearchView({super.key});
  final String appbarTitle = "Visual search";
  final String imagePath = "assets/background/visual_search_view_bg.png";
  final String advice =
      "Search for an outfit by taking a photo or uploading an image";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          appbarTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              advice,
              style: TextStyle(color: lightColorScheme.onPrimary, fontSize: 24),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            ReButton(
              text: "TAKE A PHOTO",
              onPressed: () {},
              width: double.infinity,
              height: Get.height * 0.06,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, Get.height * 0.06),
              ),
              onPressed: () {},
              child: Text(
                "UPLOAD AN IMAGE",
                style: TextStyle(color: lightColorScheme.onPrimary),
              ),
            )
          ],
        ),
      ),
    );
  }
}
