import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../camera_page.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }


}
