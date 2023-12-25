import 'dart:io';
import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/widgets/re_circle_avatar.dart';
import 'package:flutter/material.dart';

class RePhotoPicker extends StatelessWidget {
  const RePhotoPicker({super.key, required this.onTap, required this.file});

  final void Function()? onTap;
  final File? file;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ReCircleAvatar(
          avatarRadius: 40.0,
          iconSize: 40.0,
          bgCircleAvatar: Colors.grey[350] as Color,
          bgIcon: lightColorScheme.shadow,
          icon: Icons.person,
          file: file,
        ),
        GestureDetector(
          onTap: onTap,
          child: ReCircleAvatar(
            avatarRadius: 16.0,
            iconSize: 16.0,
            bgCircleAvatar: Colors.grey[400] as Color,
            bgIcon: lightColorScheme.onPrimary,
            icon: Icons.camera_alt,
            file: null,
          ),
        ),
      ],
    );
  }
}
