import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:flutter/material.dart';

class ReTextFormField extends StatelessWidget {
  const ReTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.validator,
    this.isObscured = false,
  });
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  final bool isObscured;

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
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
              fontSize: 14,
              color: lightColorScheme
                  .copyWith(background: const Color(0XFF9B9B9B))
                  .background),
        ),
        validator: validator,
        obscureText: isObscured,
        onChanged: (value) {},
      ),
    );
  }
}
