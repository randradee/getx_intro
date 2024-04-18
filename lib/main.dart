import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/idade_controller.dart';
import 'package:getx_intro/nome_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final idadeController = IdadeController();
  final nomeController = NomeController();

  TextStyle commonStyle() => const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Obx(
              () {
                return Text(
                  'Nome: ${nomeController.nome}',
                  style: commonStyle(),
                );
              },
            ),

            Obx(
              () {
                return Text(
                  'Idade: ${idadeController.idade}',
                  style: commonStyle(),
                );
              },
            ),

            const Divider(
              thickness: 1.5,
              color: Colors.blue,
              height: 20,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Campo de nome
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                ),

                // Botão para salvar o nome
                ElevatedButton(
                  onPressed: () {
                    nomeController.updateNome(nameController.text);
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),

            // Espaçamento
            const SizedBox(height: 10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Campo de idade
                Expanded(
                  child: TextField(
                    controller: ageController,
                    decoration: const InputDecoration(
                      labelText: 'Idade',
                    ),
                  ),
                ),

                // Botão para salvar a idade
                ElevatedButton(
                  onPressed: () {
                    idadeController.updateIdade(ageController.text);
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),

            // Espaçamento
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
