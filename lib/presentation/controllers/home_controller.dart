
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

  void addItems(String itemSelected) {
    log('ADD');
    titleOptionSelected = itemSelected;
    listSelectedOption.add(titleOptionSelected!);
    log('--> Lista Items: $listSelectedOption');
  }

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
    }

    update(['checkbox']);
  }

  void validateSelectedItem() {
    if(listSelectedOption.isEmpty) {
      log('VACIO');
      CustomAlert().cAlert();
    }else {
      Get.to( () => const ItemsSelectedScreen());
    }

  }
  


}