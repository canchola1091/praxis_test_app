
import 'package:get/get.dart';

class GeneroController extends GetxController {

  int selectedOption = 0; 

  void selectedRadio (int? value) {
    selectedOption = value!;
    update(['genero-radio']);
  }


}