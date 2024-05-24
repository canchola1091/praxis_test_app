
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praxis_test_app/presentation/controllers/logic_controller.dart';
import 'package:praxis_test_app/presentation/widgets/colores/colores_fav_radio_button.dart';
import 'package:praxis_test_app/presentation/widgets/empleados/list_empleados.dart';
import 'package:praxis_test_app/presentation/widgets/genero/genero_radio_button.dart';
import 'package:praxis_test_app/presentation/widgets/shared/custom_text_field.dart';

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
            leading: IconButton(
              onPressed: _.backAndClerTextControllers,
              icon: const Icon(Icons.arrow_back_ios_new)
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if(_.showCamara) Text('CAMARA'),

                if(_.showEmpleados) const Flexible(child: ListEmpleados()),

                if(_.showNombre) CustomTextField(
                  fieldController: _.nameCtrl,
                  maxCaracteres: 35,
                  textHint: 'Nombre completo',
                  iconPrefix: Icons.person,
                  capitalization: TextCapitalization.words,
                ),

                if(_.showTelefono) CustomTextField(
                  fieldController: _.phoneCtrl,
                  onlyNumbers: true,
                  maxCaracteres: 10,
                  textHint: 'Nombre completo',
                  iconPrefix: Icons.phone_android,
                ),

                if(_.showFechaNac) Text('FECHA'),

                if(_.showSexo) const GeneroRadioButton(),

                if(_.showColorFav) const ColoresFavRadioButton()
              ],
            ),
          ),
        );
      }
    );
  }
}