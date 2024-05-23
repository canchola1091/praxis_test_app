
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/infraestructure/models/empleados_model.dart';

class EmpleadosController  extends GetxController{

  final _dio = Dio();
  EmpleadosModel? empleadosModel;

  Future<void> getEmpleados() async {

    try {

      final response = await _dio.get('https://6edeayi7ch.execute-api.us-east-1.amazonaws.com/v1/examen/employees/:eduardo');

      final String encodeResponse = jsonEncode(response.data);

      empleadosModel = empleadosModelFromJson(encodeResponse);

      // log('Response: ${response.data}');
      log('Response: ${empleadosModel!.data.employees}');
    } catch (e) {
      
    }

    

  }
}
