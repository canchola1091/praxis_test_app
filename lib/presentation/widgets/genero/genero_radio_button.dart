import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';
import 'package:praxis_test_app/presentation/controllers/genero_controller.dart';  
  
  
class GeneroRadioButton extends StatelessWidget {
  
  const GeneroRadioButton({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return GetBuilder<GeneroController>(
      init: GeneroController(),
      id: 'genero-radio',
      builder: (_) {
        return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
           title: const Text('Femenino'),
            leading: Radio<int>(
              value: 1,
              groupValue: _.selectedOption,
              onChanged: _.selectedRadio
            ),
            trailing: Icon(
              Icons.female,
              color: colorThemes[2],
            ),
          ),

          ListTile(
           title: const Text('Masculino'),
            leading: Radio<int>(
              value: 2,
              groupValue: _.selectedOption,
              onChanged: _.selectedRadio
            ),
            trailing: Icon(
              Icons.male,
              color: colorThemes[2],
            ),
          )
          
        ]
        );
      }
    );
  }  
}  