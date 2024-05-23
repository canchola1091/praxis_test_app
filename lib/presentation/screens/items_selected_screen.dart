
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/presentation/controllers/logic_controller.dart';
import 'package:praxis_test_app/presentation/widgets/empleados/list_empleados.dart';

class ItemsSelectedScreen extends StatelessWidget {
  
  const ItemsSelectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LogicController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Opciones seleccionadas'),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if(_.showCamara) Text('CAMARA'),
              if(_.showEmpleados) Flexible(child: ListEmpleados()),
              if(_.showNombre) Text('NOMBRE'),
              if(_.showTelefono) Text('TELEFONO'),
              if(_.showFechaNac) Text('FECHA'),
              if(_.showSexo) Text('SEXO'),
              if(_.showColorFav) Text('COLOR'),
            ],
          ),
        );
      }
    );
  }
}