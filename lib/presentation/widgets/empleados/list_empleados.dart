
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/presentation/controllers/empleados_controller.dart';

class ListEmpleados extends StatelessWidget {
  const ListEmpleados({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmpleadosController>(
      init: EmpleadosController(),
      builder: (_) {
        ListView.separated(
          itemCount: _.empleadosModel!.data.employees.length,
          separatorBuilder: (context, i) {
            return Divider();
          },
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${_.empleadosModel!.data.employees[index].name}'),
            );
          },
        );
        return Center(
          child: FloatingActionButton(onPressed: () => _.getEmpleados())
        );
      }
    );
  }
}