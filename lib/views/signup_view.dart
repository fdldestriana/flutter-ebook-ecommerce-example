import 'dart:io';
import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/widgets/re_button.dart';
import 'package:ecommerce_example/widgets/re_email_field.dart';
import 'package:ecommerce_example/widgets/re_password_field.dart';
import 'package:ecommerce_example/widgets/re_photo_picker.dart';
import 'package:ecommerce_example/widgets/re_name_field.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final signUpKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  File? file;
  Future<void> photoPicker() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ['png', 'jpg'],
        type: FileType.custom,
      );
      file = result != null ? File(result.files.single.path as String) : null;
      setState(() {});
    } on Exception catch (e) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Ok",
                    style:
                        GoogleFonts.montserrat(color: lightColorScheme.shadow),
                  ),
                )
              ],
              backgroundColor: Colors.grey[200],
              content: Text(e.toString()),
              title: const Text("An error occured"),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: signUpKey,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    'Sign up',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Center(
                    child: RePhotoPicker(
                      file: file,
                      onTap: () => photoPicker(),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.08,
                  ),
                  ReNameField(nameController),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  ReEmailField(emailController),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  RePasswordField(passwordController),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.30),
                    child: TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(fontSize: 14),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_forward,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  ReButton(
                      onPressed: () {},
                      width: double.infinity,
                      height: Get.height * 0.06,
                      text: "SIGN UP"),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  const Center(
                    child: Text(
                      'Or sign up with social account',
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
