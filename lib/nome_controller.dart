import 'package:get/get.dart';

class NomeController extends GetxController {
  RxString nome = ''.obs;

  void updateNome(String nome) {
    this.nome.value = nome;
  }
}
