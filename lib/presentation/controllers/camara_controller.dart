
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CamaraController extends GetxController{

  XFile? photo;

  // ========================================
  /// ABRE LA CAMARA PARA PODER CAPTURAR UNA FOTO
  // ========================================
  void fnTakePhoto(ImageSource imgSource) async {
    log('CAMARA');
    try {
      photo = await ImagePicker().pickImage(source: imgSource);
      // String _file = photo.path;
      if (photo == null) return;
      update(['camara']);
    } on PlatformException catch (e) {
      log('ERROR:$e');
    }
  }

}