import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

enum CameraError { notMounted, unavailable, accessDenied, other }

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late List<CameraDescription> _cameras;
  CameraController? _controller;
  CameraError? cameraErrorStatus;
  @override
  void initState() {
    super.initState();
    initCam();
  }

  initCam() async {
    _cameras = await availableCameras();
    if (_cameras.isEmpty) {
      setState(() {
        cameraErrorStatus = CameraError.unavailable;
      });
      return;
    }
    _controller = CameraController(_cameras[0], ResolutionPreset.max,
        enableAudio: false, imageFormatGroup: ImageFormatGroup.jpeg);
    _controller!.initialize().then((_) {
      if (!mounted) {
        setState(() {
          cameraErrorStatus = CameraError.notMounted;
        });
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            setState(() {
              cameraErrorStatus = CameraError.accessDenied;
            });
            break;
          default:
            setState() {
              cameraErrorStatus = CameraError.other;
            }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return Scaffold(
        body: Stack(children: [
          backButton(),
          (cameraErrorStatus != null
              ? buildError(cameraErrorStatus)
              : const Center(child: CircularProgressIndicator()))
        ]),
      );
    }

    final size = MediaQuery.of(context).size;
    var scale = size.aspectRatio * _controller!.value.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return Scaffold(
      body: Stack(
        children: [
          Transform.scale(
              scale: scale, child: Center(child: CameraPreview(_controller!))),
          backButton(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 86,
                  height: 86,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  child: FloatingActionButton(
                    splashColor: Theme.of(context).colorScheme.primary,
                    onPressed: () async {
                      print('>>> take picture');
                      XFile? xFile = await takePicture();

                      _controller!.takePicture().then((XFile? file) {
                        print('>>> mounted ${file!.path}');

                        if (mounted) {
                          print('>>> Picture saved to ${file.path}');
                        }
                      });
                    },
                    backgroundColor: Colors.transparent,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget backButton() {
    return SafeArea(
      child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: const [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              Text('Retour')
            ],
          )),
    );
  }

  Widget buildError(CameraError? cameraError) {
    Map<CameraError, String> errorToMsg = {
      CameraError.accessDenied: "Vous n'avez pas autorisé l'accès à la caméra",
      CameraError.notMounted: "Problème d'accès à la caméra",
      CameraError.unavailable: 'Aucune caméra disponible',
      CameraError.other: 'Erreur non identifiée au lancement de la caméra'
    };
    return Center(
      child: Text(
        errorToMsg[cameraError] ?? '',
      ),
    );
  }

  Future<XFile?> takePicture() async {
    final CameraController? cameraController = _controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      print('>>> Error: select a camera first.');
      return null;
    }

    print(
        '>>> cameraController.value.isTakingPicture :: ${cameraController.value.isTakingPicture}');
    if (cameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      print('>>> trying to take picture...');
      final XFile file = await cameraController.takePicture();
      print('>>> picture taken!');
      return file;
    } on CameraException catch (e) {
      _showCameraException(e);
      return null;
    }
  }

  void _showCameraException(CameraException e) {
    print('>>> Error: ${e.code} - ${e.description}');
  }

  @override
  void dispose() {
    if (_controller != null) {
      _controller!.dispose();
    }
    super.dispose();
  }
}
