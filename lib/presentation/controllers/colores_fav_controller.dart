
import 'package:get/get.dart';

class ColoresFavController extends GetxController {

  int colorSelectedOption = 0; 

  void selectedRadio (int? value) {
    colorSelectedOption = value!;
    update(['color-radio']);
  }


}