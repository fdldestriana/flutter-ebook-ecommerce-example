import 'package:ecommerce_example/state_util.dart';
import 'package:ecommerce_example/validator.dart';
import 'package:ecommerce_example/widgets/re_button.dart';
import 'package:ecommerce_example/widgets/re_textbuton.dart';
import 'package:ecommerce_example/widgets/re_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final GlobalKey<FormState> signInKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: signInKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    'Sign in',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 34, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  SizedBox(
                    height: Get.height * 0.08,
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  ReTextFormField(
                    labelText: "Email",
                    controller: emailController,
                    validator: (email) => Validator.emailValidator(email),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  ReTextFormField(
                    labelText: "Password",
                    controller: passwordController,
                    validator: (pass) => Validator.passwordValidator(pass),
                    isObscured: true,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.30),
                    child: ReTextButton(
                      label: 'Forgot your password?',
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  ReButton(
                      onPressed: () => signInKey.currentState!.validate(),
                      width: double.infinity,
                      height: Get.height * 0.06,
                      text: "SIGN IN"),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  const Center(
                    child: Text(
                      'Or login with social account',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                                'assets/social_media_buttons/google.png')),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                                'assets/social_media_buttons/facebook.png')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
