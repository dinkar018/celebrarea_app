// ignore_for_file: depend_on_referenced_packages, unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

class CroppedImage extends StatefulWidget {
  final CroppedFile image;
  const CroppedImage({super.key, required this.image});

  @override
  State<CroppedImage> createState() => _CroppedImageState();
}

class CroppedFile {}

class _CroppedImageState extends State<CroppedImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Cropper'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black12,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: InteractiveViewer(
              child: Image(
            image: FileImage(
              File(widget.image.path),
            ),
          )),
        ),
      ),
    );
  }
}
