import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_controller.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({super.key});

  @override
  State<DeletePage> createState() => __DeletePageState();
}

class __DeletePageState extends State<DeletePage> {
  String nome = '';

  @override
  void dispose() {
    Get.delete<DeleteController>(force: true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete'),
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
                  nome = Get.find<DeleteController>().nome;
                });
              },
              child: Text('Buscar nome'),
            ),
          ],
        ),
      ),
    );
  }
}
