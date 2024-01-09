import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:flutter/material.dart';

class FindingView extends StatelessWidget {
  const FindingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: lightColorScheme.primary,
              size: 62,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const Text(
              "Finding similar \nresults...",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
