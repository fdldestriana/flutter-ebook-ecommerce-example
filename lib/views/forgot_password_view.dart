import 'package:ecommerce_example/state_util.dart';
import 'package:ecommerce_example/validator.dart';
import 'package:ecommerce_example/widgets/re_button.dart';
import 'package:ecommerce_example/widgets/re_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _SigninViewState();
}

class _SigninViewState extends State<ForgotPasswordView> {
  final GlobalKey<FormState> forgotPasswordKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: forgotPasswordKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    'Forgot password',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 34, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.11,
                  ),
                  const Text(
                    "Please, enter your email address. You will receive a link to create a new password via email.",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  ReTextFormField(
                      labelText: "Email",
                      controller: emailController,
                      validator: (email) => Validator.emailValidator(email)),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  ReButton(
                      onPressed: () =>
                          forgotPasswordKey.currentState!.validate(),
                      width: double.infinity,
                      height: Get.height * 0.06,
                      text: "SEND"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
