
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FechaNacimientoController extends GetxController {
  
  DateTime selectedDate = DateTime.now();
  bool showDate = false;

  Future<void> selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate,
      firstDate: DateTime(1900, 01, 01),
      lastDate: DateTime.now(),
      initialEntryMode: DatePickerEntryMode.input
    );
    if (picked != null && picked != selectedDate){
      selectedDate = picked;
      showDate = true;
    }
    update(['fecha']);
  }
}