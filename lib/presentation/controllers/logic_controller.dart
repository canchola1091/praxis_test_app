
import 'dart:developer';

import 'package:get/get.dart';
import 'package:praxis_test_app/config/item/option_item.dart';
import 'package:praxis_test_app/presentation/screens/items_selected_screen.dart';
import 'package:praxis_test_app/presentation/widgets/custom_alert.dart';

class LogicController extends GetxController {

  OptionItem? optionItem;
  String? titleOptionSelected;
  List<String> listSelectedOption = [];
  bool isSelected = false;
  bool showCamara = false;
  bool showEmpleados = false;
  bool showNombre = false;
  bool showTelefono = false;
  bool showFechaNac = false;
  bool showSexo = false;
  bool showColorFav = false;

  // ======================================
  /// AGREGA A UNA LISTA [titleOptionSelected]
  /// LOS ELEMENTOS SELECCIONADOS
  // ======================================
  void addItems(String itemSelected) {
    log('ADD');
    titleOptionSelected = itemSelected;
    listSelectedOption.add(titleOptionSelected!);
    log('--> Lista Items: $listSelectedOption');
  }

  // ======================================
  /// REMUEVE DE LA LISTA [titleOptionSelected]
  /// LOS ELEMENTOS DESELECCIONADOS
  // ======================================
  void removeItems() {
    log('REMOVE');
    listSelectedOption.removeWhere((element) => element == optionItem!.title);
    log('--> Lista Items: $listSelectedOption');
  }


  void onChangeCheckBox(bool? value, String itemSelected) {

    isSelected = value!;

    if(value) {
      log('ADD');
      addItems(itemSelected);
    }else if(!value) {
      removeItems();
      _hideOptions();
    }

    update(['checkbox']);
  }

  // ======================================
  /// AVALIDA SI HAY ELEMENTOS SELECCIONADOS
  // ======================================
  void validateSelectedItem() {
    if(listSelectedOption.isEmpty) {
      log('VACIO');
      CustomAlert().cAlert();
    }else {
      _showOptionSelected();
      Get.to( () => const ItemsSelectedScreen());
    }

  }
  
  // ======================================
  /// ESTABLECE VALORRES EN TRUE A LAS VARIABLES 
  /// CORRESPONDIENTES PARA MOSTRAR LOS ELEMENTOS SELECCIONADOS
  // ======================================
  void _showOptionSelected() {
    if(listSelectedOption.contains(TitleOption.camara)) showCamara = true;

    if(listSelectedOption.contains(TitleOption.listEmpleados)) showEmpleados = true;

    if(listSelectedOption.contains(TitleOption.nombreCompleto)) showNombre = true;

    if(listSelectedOption.contains(TitleOption.numeroTelefonico)) showTelefono = true;

    if(listSelectedOption.contains(TitleOption.fechaNacimiento)) showFechaNac = true;

    if(listSelectedOption.contains(TitleOption.sexo)) showSexo = true;

    if(listSelectedOption.contains(TitleOption.colorFavorito)) showColorFav = true;
  }

   // ======================================
  /// ESTABLECE VALORRES EN FALSE A LAS VARIABLES 
  /// CORRESPONDIENTES CUANDO SE DESELECCIONAN
  // ======================================
  void _hideOptions() {
    if(!listSelectedOption.contains(TitleOption.camara)) showCamara = false;

    if(!listSelectedOption.contains(TitleOption.listEmpleados)) showEmpleados = false;

    if(!listSelectedOption.contains(TitleOption.nombreCompleto)) showNombre = false;

    if(!listSelectedOption.contains(TitleOption.numeroTelefonico)) showTelefono = false;

    if(!listSelectedOption.contains(TitleOption.fechaNacimiento)) showFechaNac = false;

    if(!listSelectedOption.contains(TitleOption.sexo)) showSexo = false;

    if(!listSelectedOption.contains(TitleOption.colorFavorito)) showColorFav = false;

  }

}