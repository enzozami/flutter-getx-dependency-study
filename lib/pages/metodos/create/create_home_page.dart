import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/utils.dart';
import 'package:get_dependencias/pages/metodos/create/create_controller.dart';

class CreateHomePage extends StatefulWidget {
  CreateHomePage({super.key}) {
    Get.create(() => CreateController());
    Get.put(CreateController(), tag: 'put');
  }

  @override
  State<CreateHomePage> createState() => _CreateHomePageState();
}

class _CreateHomePageState extends State<CreateHomePage> {
  String nome = '';
  String nomePut = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            Text('Nome: $nomePut'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    nome = Get.find<CreateController>().nome;
                    nomePut = Get.find<CreateController>(tag: 'put').nome;
                  });
                },
                child: Text('Buscar Nome')),
            // SizedBox(),
            // ElevatedButton(onPressed: onPressed, child: child),
          ],
        ),
      ),
    );
  }
}
