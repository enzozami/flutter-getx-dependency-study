import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get_dependencias/pages/initial_bindings/auth_model.dart';

class InitialBindingsPage extends StatelessWidget {
  const InitialBindingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Binding'),
      ),
      body: Center(
        child: Text(Get.find<AuthModel>().name),
      ),
    );
  }
}
