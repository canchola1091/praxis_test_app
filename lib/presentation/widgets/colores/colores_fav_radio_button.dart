import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/presentation/controllers/colores_fav_controller.dart';
  
  
class ColoresFavRadioButton extends StatelessWidget {
  
  const ColoresFavRadioButton({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return GetBuilder<ColoresFavController>(
      init: ColoresFavController(),
      id: 'color-radio',
      builder: (_) {
        return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

            ListTile(
             title: const Text('Oragnge'),
              leading: Radio<int>(
                value: 1,
                groupValue: _.colorSelectedOption,
                onChanged: _.selectedRadio
              ),
              trailing: Container(
                height: 25.0,
                width: 25.0,
                color: Colors.orange,
              )
            ),

            ListTile(
             title: const Text('Green'),
              leading: Radio<int>(
                value: 2,
                groupValue: _.colorSelectedOption,
                onChanged: _.selectedRadio
              ),
              trailing: Container(
                height: 25.0,
                width: 25.0,
                color: Colors.green,
              )
            ),

            ListTile(
             title: const Text('Pink'),
              leading: Radio<int>(
                value: 3,
                groupValue: _.colorSelectedOption,
                onChanged: _.selectedRadio
              ),
              trailing: Container(
                height: 25.0,
                width: 25.0,
                color: Colors.pink,
              )
            ),

            ListTile(
             title: const Text('Blue'),
              leading: Radio<int>(
                value: 4,
                groupValue: _.colorSelectedOption,
                onChanged: _.selectedRadio
              ),
              trailing: Container(
                height: 25.0,
                width: 25.0,
                color: Colors.blue,
              )
            ),

            ListTile(
             title: const Text('Red'),
              leading: Radio<int>(
                value: 5,
                groupValue: _.colorSelectedOption,
                onChanged: _.selectedRadio
              ),
              trailing: Container(
                height: 25.0,
                width: 25.0,
                color: Colors.red,
              )
            ),
          
          ]
        );
      }
    );
  }  
}  