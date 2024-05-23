
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';

class CustomAlert {

  void cAlert() {
    Get.dialog(
      FlipInX(
        child: AlertDialog(
          scrollable: true,
          insetPadding: EdgeInsets.zero,
          contentPadding: const EdgeInsets.all(0.0),
          backgroundColor: Colors.transparent,
          content: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0)
            ),
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
            // width: utils.porcientoW(Get.context, 70),
            child: Column(
              children: [
               const Text( 
                'Error',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Seleccciona al menos un elemento',
                style: TextStyle(
                  fontSize: 20.0
                ), 
              ),
              const SizedBox(height: 25.0),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                ),
                textColor: Colors.white,
                color: colorThemes[2],
                child: const Text(
                  'Aceptar',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
                onPressed: () => Get.back()
              )
              ]
            )
          )
        )
      ),
      barrierDismissible: false,
      barrierColor: colorThemes[2].withOpacity(0.2),
    );
  }

}