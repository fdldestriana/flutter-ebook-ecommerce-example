import 'dart:io';
import 'package:ecommerce_example/validator.dart';
import 'package:ecommerce_example/widgets/re_button.dart';
import 'package:ecommerce_example/widgets/re_textbuton.dart';
import 'package:ecommerce_example/widgets/re_textformfield.dart';
import 'package:ecommerce_example/widgets/re_photo_picker.dart';
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
  final GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  File? photoProfile;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  // Future<void> photoPicker() async {
  //   try {
  //     FilePickerResult? result = await FilePicker.platform.pickFiles(
  //       allowMultiple: false,
  //       allowedExtensions: ['png', 'jpg'],
  //       type: FileType.custom,
  //     );
  //     file = result != null ? File(result.files.single.path as String) : null;
  //     setState(() {});
  //   } on Exception catch (e) {
  //     if (mounted) {
  //       showDialog(
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             actions: [
  //               TextButton(
  //                 onPressed: () => Navigator.pop(context),
  //                 child: Text(
  //                   "Ok",
  //                   style:
  //                       GoogleFonts.montserrat(color: lightColorScheme.shadow),
  //                 ),
  //               )
  //             ],
  //             backgroundColor: Colors.grey[200],
  //             content: Text(e.toString()),
  //             title: const Text("An error occured"),
  //           );
  //         },
  //       );
  //     }
  //   }
  // }

  Future<void> _photoPicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      allowedExtensions: ['png', 'jpg'],
      type: FileType.custom,
    );
    if (result != null) {
      photoProfile = File(result.files.single.path as String);
      setState(() {});
    } else {
      photoProfile = null;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: signUpKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  'Sign up',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Center(
                  child: RePhotoPicker(
                    file: photoProfile,
                    onTap: () => _photoPicker(),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.08,
                ),
                ReTextFormField(
                  labelText: "Name",
                  controller: nameController,
                  validator: (name) => Validator.nameValidator(name),
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
                    label: 'Already have an account?',
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                ReButton(
                    onPressed: () => signUpKey.currentState!.validate(),
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
    );
  }
}
