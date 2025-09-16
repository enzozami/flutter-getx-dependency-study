import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_controller.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_fenix_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({super.key}) {
    Get.lazyPut(() => LazyPutController());
    // Ele mata a instancia, porém ele mantem a factory ativa dentro do Get fazendo com que
    // tenha a possibilidade de acessa-la de qualquer lugar para sempre dentro do Get
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
    // Mantem a instancia dentro do Get, sendo, pedir a classe ele retornará a mesma instancia anterior
    // Get.put(() => LazyPutFenixController(), permanent: true);
  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '';
  String nomeFenix = 'Fenix';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazu Put Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            Text('NomeFenix: $nomeFenix'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                setState(() {
                  nome = controller.nome;
                });
              },
              child: Text('Buscar nome'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                controller.nome = 'Jornada GetX';
              },
              child: Text('Alterar nome'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                setState(() {
                  nome = controller.nome;
                });
              },
              child: Text('Buscar nome Fenix'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                controller.nome = 'Jornada GetX Fenix';
              },
              child: Text('Alterar nome Fenix'),
            ),
          ],
        ),
      ),
    );
  }
}
