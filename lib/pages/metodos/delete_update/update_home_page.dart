import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_controller.dart';
import 'package:get_dependencias/pages/metodos/delete_update/update_controller.dart';

class UpdateHomePage extends StatefulWidget {
  UpdateHomePage({super.key}) {
    Get.put(UpdateController(nome: 'Adicionado no inicio'));
    Get.put(DeleteController(nome: 'Adicionado no inicio'), permanent: true);
  }

  @override
  State<UpdateHomePage> createState() => _UpdateHomePageState();
}

class _UpdateHomePageState extends State<UpdateHomePage> {
  String nome = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nome = Get.find<UpdateController>().nome;
                });
              },
              child: Text('Buscar nome'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Get.replace(UpdateController(nome: 'Adicionado no click do botao'));
                });
              },
              child: Text('Alterando instancia'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Get.offNamed('/metodos/delete');
                });
              },
              child: Text('Indo para Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
