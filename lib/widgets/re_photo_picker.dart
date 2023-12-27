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
          bgAvatarRadius: 40.0,
          sizeIcon: 40.0,
          bgCircleAvatar: Colors.grey[350] as Color,
          colorIcon: lightColorScheme.shadow,
          icon: Icons.person,
          file: file,
        ),
        GestureDetector(
          onTap: onTap,
          child: ReCircleAvatar(
            bgAvatarRadius: 16.0,
            sizeIcon: 16.0,
            bgCircleAvatar: Colors.grey[400] as Color,
            colorIcon: lightColorScheme.onPrimary,
            icon: Icons.camera_alt,
            file: null,
          ),
        ),
      ],
    );
  }
}
