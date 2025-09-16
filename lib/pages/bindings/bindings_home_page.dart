import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class BindingsHomePage extends StatelessWidget {
  const BindingsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    log('Buildando nossa pagina BindingsHomePage');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bindings Home Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Get.find<BindingsController>().nome,
          ),
        ],
      )),
    );
  }
}
