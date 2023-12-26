import 'package:ecommerce_example/views/signup_view.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_schemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFDB3022),
            foregroundColor: Colors.white,
          ),
        ),
        colorScheme: lightColorScheme,
        useMaterial3: true,
        scaffoldBackgroundColor: lightColorScheme
            .copyWith(background: const Color(0XFFF9F9F9))
            .background,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
              bodyColor: lightColorScheme.shadow,
              displayColor: lightColorScheme.shadow),
        ),
      ),
      home: const SignupView(),
      navigatorKey: Get.navigatorKey,
    );
  }
}
