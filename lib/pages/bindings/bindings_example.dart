import 'dart:developer';

import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class BindingsExample extends Bindings {
  BindingsExample() {
    log('Iniciando BindingsExample');
  }

  @override
  void dependencies() {
    log('Carregando as instancias');
    Get.put(BindingsController(nome: 'Inicializado dentro do Binding'));
  }
}
