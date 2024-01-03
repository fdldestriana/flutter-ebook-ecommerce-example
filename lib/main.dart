import 'package:camera/camera.dart';
import 'package:ecommerce_example/state_util.dart';
import 'package:ecommerce_example/views/visual_search_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_schemes.dart';

void main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
// can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

// Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  runApp(MyApp(
    camera: firstCamera,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.camera, super.key});
  final CameraDescription camera;
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
      home: const VisualSearchView(),
      navigatorKey: Get.navigatorKey,
    );
  }
}
