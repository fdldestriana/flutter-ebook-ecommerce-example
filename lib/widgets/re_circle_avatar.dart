import 'dart:io';
import 'package:flutter/material.dart';

class ReCircleAvatar extends StatelessWidget {
  const ReCircleAvatar(
      {super.key,
      required this.bgAvatarRadius,
      required this.bgCircleAvatar,
      required this.colorIcon,
      required this.sizeIcon,
      required this.icon,
      required this.file});
  final double bgAvatarRadius;
  final Color bgCircleAvatar;
  final Color colorIcon;
  final double sizeIcon;
  final IconData icon;
  final File? file;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: bgAvatarRadius,
      backgroundColor: bgCircleAvatar,
      backgroundImage: file != null ? FileImage(file as File) : null,
      child: file == null
          ? Icon(
              icon,
              color: colorIcon,
              size: sizeIcon,
            )
          : null,
    );
  }
}
