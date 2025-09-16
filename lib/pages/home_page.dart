import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';
import 'package:get_dependencias/pages/bindings/bindings_example.dart';
import 'package:get_dependencias/pages/bindings/bindings_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/basico');
              },
              child: Text('Básico'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos');
              },
              child: Text('Métodos'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bindings');
              },
              child: Text('Bindings'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/binding_builder');
              },
              child: Text('Binding Builder'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/binding_builder_put');
              },
              child: Text('Binding Builder Put'),
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  BindingsHomePage(),
                  binding:
                      BindingsBuilder.put(() => BindingsController(nome: 'Rotas nao nomeadas')),
                );
              },
              child: Text('Binding sem rota nomeada'),
            ),
          ],
        ),
      ),
    );
  }
}
