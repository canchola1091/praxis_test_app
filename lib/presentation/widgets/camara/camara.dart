
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';
import 'package:praxis_test_app/presentation/controllers/camara_controller.dart';

class Camara extends StatelessWidget {
  const Camara({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CamaraController>(
      init: CamaraController(),
      id: 'camara',
      builder: (_) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Container(
                padding: const EdgeInsets.all(5.0),
                color: colorThemes[2],
                child: const Text(
                  'Camara',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  )
                )
              ),


              (_.photo != null)
              ? Image.file(File(_.photo!.path))
              : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    onTap: () => _.fnTakePhoto(ImageSource.camera),
                    leading: Icon(
                      Icons.camera_alt_outlined,
                      color: colorThemes[2],
                      size: 35.0,
                    ),
                    title: const Text(
                      'Camara',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    )
                  ),
                  ListTile(
                    onTap: () => _.fnTakePhoto(ImageSource.gallery),
                    leading: Icon(
                      Icons.image_outlined,
                      color: colorThemes[2],
                      size: 35.0,
                    ),
                    title: const Text(
                      'Galería',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    )
                  ),
                ],
              ),
              const SizedBox(height: 20.0)
            ]
          ),
        );
      }
    );
  }
}