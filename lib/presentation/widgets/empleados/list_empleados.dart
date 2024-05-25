
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';
import 'package:praxis_test_app/presentation/controllers/empleados_controller.dart';

class ListEmpleados extends StatelessWidget {
  const ListEmpleados({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmpleadosController>(
      init: EmpleadosController(),
      id: 'list-empleados',
      builder: (_) {
        return (_.isLosading)
        ? const Center(
          child: CircularProgressIndicator(),
        )
        : Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              color: colorThemes[2],
              child: const Text(
                'Lista empleados',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: _.listaEmpleados!.length,
              separatorBuilder: (context, i) {
                return Divider(
                  color: colorThemes[2],
                  thickness: 1.5,
                  height: 1.0,
                );
              },
              itemBuilder: (context, index) {
                final DateTime formatDate = DateTime.fromMicrosecondsSinceEpoch(_.listaEmpleados![index].birthday ?? 1587599581347);
                return FadeInRight(
                  delay: Duration(milliseconds: 20 * index),
                  child: ListTile(
                    dense: true,
                    leading: CircleAvatar(
                      backgroundColor: colorThemes[2].withOpacity(0.6),
                      child: const Icon(Icons.person_2, color: Colors.white,),
                    ),
                    title: Text(
                     '${_.listaEmpleados![index].lastName} ${_.listaEmpleados![index].name}',
                      style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Fecha de nacimieento: ${formatDate.toString().split(' ')[0]}',
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20.0)
          ],
        );

      }
    );
  }
}