
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';
import 'package:praxis_test_app/presentation/controllers/fecha_nacimiento_controller.dart';

class FechaNacimiento extends StatelessWidget {
  const FechaNacimiento({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FechaNacimientoController>(
      init: FechaNacimientoController(),
      id: 'fecha',
      builder: (_) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              color: colorThemes[2],
              child: const Text(
                'Fecha de nacimiento',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                )
              )
            ),
            const SizedBox(height: 15.0),
            Center(
              child: ElevatedButton(
                onPressed: _.selectDate,
                child: const Text('Selecciona fecha'),
              ),
            ),
            const SizedBox(height: 20.0),
            (_.showDate)
            ? Align(
              alignment: Alignment.center,
              child: Text(
                _.selectedDate.toString().split(' ').first,
                style: TextStyle(
                  color: colorThemes[2],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
                ),
              ),
            )
            : const SizedBox.shrink(),
            const SizedBox(height: 20.0)
          ],
        );
      }
    );
    
  }
}