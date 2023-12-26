import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReTextFormField extends StatelessWidget {
  ReTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.validator,
    // required this.onChanged,
    this.isObscured = false,
  });
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  // final void Function(String)? onChanged;
  bool isObscured;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.08,
      decoration: BoxDecoration(
          color: lightColorScheme.onPrimary,
          borderRadius: BorderRadius.circular(4)),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: Get.width * 0.05),
          labelText: labelText,
          labelStyle: TextStyle(
              fontSize: 14,
              color: lightColorScheme
                  .copyWith(background: const Color(0XFF9B9B9B))
                  .background),
          suffixIcon: controller.text.isNotEmpty
              ? Icon(
                  Icons.check,
                  color: lightColorScheme
                      .copyWith(background: const Color(0XFF2AA952))
                      .background,
                )
              : null,
        ),
        validator: validator,
        obscureText: isObscured,
        onChanged: (value) {
          if (validator != null) null;
        },
      ),
    );
  }
}
