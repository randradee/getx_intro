import 'package:get/get.dart';

class IdadeController extends GetxController {
  RxString idade = ''.obs;

  void updateIdade(String idade) {
    this.idade.value = idade;
  }
}
