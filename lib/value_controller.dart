import 'package:get/get.dart';

class ValueController extends GetxController {
  String value = '';
  bool isLoading = false;

  void setValue(String value) async {
    isLoading = true;
    update();

    await Future.delayed(const Duration(seconds: 2));

    this.value = value;
    isLoading = false;
    update();
  }
}
