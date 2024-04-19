import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/user_controller.dart';

class DataScreen extends StatelessWidget {
  final UserController controller = Get.find();

  DataScreen({super.key});

  TextStyle commonStyle() => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Apresentação do nome
            Text(
              'Nome: ${controller.user.value.name}',
              style: commonStyle(),
            ),

            // Apresentação da idade
            Text(
              'idade: ${controller.user.value.age}',
              style: commonStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
