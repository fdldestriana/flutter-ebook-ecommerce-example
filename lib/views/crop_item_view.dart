import 'dart:io';
import 'package:ecommerce_example/color_schemes.dart';
import 'package:flutter/material.dart';

class CropItemView extends StatelessWidget {
  final String imagePath;

  const CropItemView({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: const Text(
          'Crop the item',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Image.file(File(imagePath)),
      bottomNavigationBar: BottomAppBar(
        height: 165,
        padding: EdgeInsets.zero,
        child: Container(
          color: lightColorScheme
              .copyWith(background: const Color(0XFFF9F9F9))
              .background,
          child: Center(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: lightColorScheme.primary,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: lightColorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
