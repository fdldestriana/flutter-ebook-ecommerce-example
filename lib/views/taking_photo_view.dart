import 'package:camera/camera.dart';
import 'package:ecommerce_example/color_schemes.dart';
import 'package:ecommerce_example/views/crop_item_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TakingPhotoView extends StatefulWidget {
  const TakingPhotoView({super.key, required this.camera});
  final CameraDescription camera;
  @override
  TakingPhotoViewState createState() => TakingPhotoViewState();
}

class TakingPhotoViewState extends State<TakingPhotoView> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _cameraController.initialize();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  void takingPhoto() async {
    try {
      await _initializeControllerFuture;
      final image = await _cameraController.takePicture();
      if (!mounted) return;
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CropItemView(
            imagePath: image.path,
          ),
        ),
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Search by taking a photo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_cameraController);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        height: 165,
        padding: EdgeInsets.zero,
        child: Container(
          color: lightColorScheme
              .copyWith(background: const Color(0XFFF9F9F9))
              .background,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.flash_on)),
              CircleAvatar(
                radius: 30,
                backgroundColor: lightColorScheme.primary,
                child: IconButton(
                  onPressed: () => takingPhoto(),
                  icon: Icon(
                    Icons.photo_camera,
                    color: lightColorScheme.onPrimary,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.flip_camera_android_sharp))
            ],
          ),
        ),
      ),
    );
  }
}
